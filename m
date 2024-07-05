Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5646E262A8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720203923; cv=none; b=rtTiF4pmRf+vUG/DSD3m6gb8euKWbVMZ9x+QWGU0wbF+wUMNOnXoeWltwI9c0Q7gxEfMiOqjvIr6NGBfsP289j4dPFSUR3yl23SCYvIrgBCWn6A42xHu/zSjJlyBJqFABU9nM892Tfj4NzJwnmTmcNx1SLOTCMluh0o8UbGFVIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720203923; c=relaxed/simple;
	bh=ci0oS5K963N+q+hvW8CJ2GGZSykaNZX/DES9wD7h/dw=;
	h=To:Subject:From:Message-Id:Date; b=lCCC7ErCHc9A8jFoTpRXWuHH72vUG8BDvxqgqeJSYfvInNleJMPZelkLGQzVVFaAY+lY9SoLSMi45wRM4ti6KKFmgyOGY621ROrOBvI/JfvT9x9Q8gfJIeL273XllIRdgYvVmFFFiKs7cJ+xMGCpHKeWeThpofJmoRzKcPRvXPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8gzH7Mw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8gzH7Mw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF067C32786
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720203922;
	bh=ci0oS5K963N+q+hvW8CJ2GGZSykaNZX/DES9wD7h/dw=;
	h=To:Subject:From:Date:From;
	b=Q8gzH7MwuBsDs2HeZgkUukcnsnJiGu8HUwsoIHnlIUnIDZdcO06MdVYyU0IlaXBp6
	 ZGe4gCutF21IDq+W4v35XpV2TLJAyEQBhxw0W30WF/bXHU9/HiApQ3xtsPejyP/izy
	 7UHXOK5MtPUbiJZsM3zISZ9+rmv4IOAqHvsKTT5BoM68PvFLFkrw4xFlMrbO6VKjW0
	 8eCYVJLfgJLzsTEXwNsjEwzcijCcxAn0ExOtqbMN1rHzBsfqwyO6oPzR+vLkcCOUPR
	 EWwJ/XmX8Dmz35SitPsIp0G20juIB07dDwi4NRnTU1+boSbLI3vVhPJx7nPVK7yE9D
	 WnZfI02FNztyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6CEC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 18:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020392281.26233.1187461102111444500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376297bb702f4b99744e6f4d0cb2179f5a2c483d2282183f8019c312523500f9
Date: Fri, 05 Jul 2024 18:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720203922
