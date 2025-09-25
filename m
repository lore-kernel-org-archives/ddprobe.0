Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0754526CE2E
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758801594; cv=none; b=TMyu6y+trlZnWb/wLqOWJTNU+5NPvmq4hd/6ShhbgSdEU/phB/Y6oLVrnJTCraPo5LGNh6B2YHyNHPlficxpEp3TVE6pGeaSU29RaoRrlpg1rblpZDASbXFUgWjmV03wd4m4ZnytQcG1uAvKZvlvrl2nyWlf2vhZD2ZYD+FM2Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758801594; c=relaxed/simple;
	bh=rXc3tyErhlRtGql9JbqFHiEM1V7nLgi4Dc+9A5Ndu9o=;
	h=To:Subject:From:Message-Id:Date; b=WlVmm8ArGRZL2jujOKPYdyp8IJGwp7i/+oNkw/epzqbO9wtzNPu6CZucpLQf2wb2PIuI4483Ng98fRn9NS4Vg/cop4I2Tf/+pEIUdoNvA0zbrBMAn3zYulhGZ7zj+Fu6XpLdErBx3j9WNdI9HD+o6bMykG5Zc8SQLHrd0IDWslE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HytbJIWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HytbJIWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02CDC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758801593;
	bh=rXc3tyErhlRtGql9JbqFHiEM1V7nLgi4Dc+9A5Ndu9o=;
	h=To:Subject:From:Date:From;
	b=HytbJIWs6IIq3B6oZ0gNFmslIdmd6Ibdlus3cLA9h/8AG7hdP/H6mIeSz+2M3lY2d
	 C4X+tibFGE06aFeh8ZZ7b2qNB1IeJCx8fctprDJO00fBv+ynSE+PWCKyPfUbcCk1jK
	 Bo+5P7QDRYeTtsvGUPKuFF6u9V9yWcyDycW8HOJgL0xWxXLU0UY06SlktxmcfbUjgE
	 mLsed5g0k9SPZQGeHR6cFWIvIP8hIV2FczHqOFlMS+p4Fjm9CTrlzqekgczV7kHHyT
	 3ubFJd47I2AuQVdzn2WaspG/ohjkwxbmLSAb7cekgyjmQW96zRMCUEWXLNlrfZjYtV
	 abd36plRNJEQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E0CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880159358.5924.8852408159154359023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3e7cddb064ec6284b4c063afb243ee532b2d32860985c511066bf1d3558968
Date: Thu, 25 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758801593
