Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197A628E7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758154795; cv=none; b=Ew150++8mkeGcyfBlchJN1H8KHZtHz3EeFmbG2865iNcQxJs1beeROFEd1VzI8VoVnQqpcNOV/xCw0UEFDKcCpkGkS7wKraz2GeUOhh6o2loBK8nUaPcFm7pFQtuPJKPuZ6j3vwfrkamZdBKll2zK9ahfuRpDAjc8H5Revtu/j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758154795; c=relaxed/simple;
	bh=jZD5545NQqPDtLwllSod6nfT+qb8ZBxgKaxpMLnVpG0=;
	h=To:Subject:From:Message-Id:Date; b=HBOPYK7Ff6D9QdFBNSirSqY4myyBb+D2MZoWCdM/5qLqdT/8HpYxuogKTNhXHf75a24Rtom6ag5p6Zqsv5vBEJm60VnRHitqXRL5PUgGuJfdIZAZPIU1HSRob5KtGcTXVYwvOXOvkwX5xfXmXego3D6d3TDfixxiTWGXdPkiDrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5x9ReSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5x9ReSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3928C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758154793;
	bh=jZD5545NQqPDtLwllSod6nfT+qb8ZBxgKaxpMLnVpG0=;
	h=To:Subject:From:Date:From;
	b=t5x9ReSi4UiuWeyBllPndYRIC+Qo5UD7xbP0E8pI8onQMY0MzJ++mb+FSgO18nLtp
	 u71yg2gekOBuP72fymS0xO+b85Be+xr87M11H4NYvBAXbks+Gf4K0O+bR23AhlPsDi
	 bFo8DtxvWKW9s+DSKa7SYDQUqDL1n7KYmlrtU+bN/f94nMLjCBDHewrGHoGColmhBW
	 rR2Sp72I7Z1889KltbGTKQPit8Xb9XW8UaABmbiNnHXbtdHdTIT0lUoXeljqSzdU+P
	 zCPc0Wt6Zx43EcXbchYev8onLQIpBN0LmyRomRL0pLHwCaxT63hwovikUVOaTHoSiz
	 dgM7Xe+xOYWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE6CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815479357.15374.16481431640491842715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f3a2fbd2e35caeecfd05c7b6ff01b67a808921460d62dbd836bc75a2897894
Date: Thu, 18 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758154793
