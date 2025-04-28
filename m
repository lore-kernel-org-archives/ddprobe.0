Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338F986323
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745839194; cv=none; b=JAG3LSN4cjVmgi5GGjJM7y3XqeFCmcX0e7Pd+HtfUFRekAREPK1TfUFHJcQc8bicFx3nAmatfgBc/XPdGqWLCl1YWYI92IH/XF12C2SQZzr0bx3vvk9tNYOvs4IBT45w0vypMwjqdGcuewPM6A1GINs3tpGovrS80++SIN4zO0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745839194; c=relaxed/simple;
	bh=luzqXwJ11Ina3v5LH7uL6nhUHqRG8UYj9G8wE/JAz8M=;
	h=To:Subject:From:Message-Id:Date; b=WiUvJloTNK4INsLsBpY2GdJC59rMwBoteG6av64TyY4LVvzHSq/X+OS4r0L3jY8gto3tTT/63V7j1bajYcXrGr740wRjbo9km0SP6k1+xg2+HMbpEVNKrkyh9GOyZx/Tb1WCM5xweKEfy0CrAWbGYQ2ytbJEtep/XPkPdsUsBF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehd7UzdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehd7UzdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745839193;
	bh=luzqXwJ11Ina3v5LH7uL6nhUHqRG8UYj9G8wE/JAz8M=;
	h=To:Subject:From:Date:From;
	b=ehd7UzdIQvdM+DO4zKU4IEMRJoTLfii3IX/USMzi/nP8GP7LhCmzYmJgofqAfSp8+
	 InTT9ZKVCy0G542wYFJl3mzlsEXFSgqbIql9VnNLHxQK2OJ5oo3Mu+lERIbyofjlu8
	 BQcVmSRthLwL/7D5g9NS6jNNIyeJWF7o9bRcI72jNldF9KfUoR9+xm+wvRsts2J9vx
	 yCcJfOl+6PEa46e8ptPJ60NDUaV9YhhP45MfTgYCVoy6b12a9G0xMiixnoU7J0MI/p
	 3uAxF5yLRGHV195Pagug77+US+ChtgrHfuvASuCqQEhY/JDarnAe4IAlGy4hnVY4cb
	 lVLyr1O1okGqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE22C369D8
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583919358.1498.4885154546503692291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453feb2eb7bf79bbbf643be627cf64806c61882d6292db1339bdac8129c515b5
Date: Mon, 28 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745839193
