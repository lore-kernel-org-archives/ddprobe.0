Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4921A189B9C
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728242754; cv=none; b=YsMYYy9DFuIWCzIkvQrlHNbRy0QFsT5AHwS7tbBEHP2fY2BWS6p7U8MKZOMOMKEBE79CM6gyrzf6IHWvk8IgVlBTtqlJTmcxUPBmJjiMdASVxT3pABFtOlv6AT86tQ1u+jJeJ8ENcY9pa/5I1odiID3t2QOoOM8VwlYkgSmNpRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728242754; c=relaxed/simple;
	bh=NjaOivdAy5YX6WFflvyf4OPrlsBF9uRpgVR3hP/g8sg=;
	h=To:Subject:From:Message-Id:Date; b=cSG5f6DnFRCwH+ArBWpLWirYEX9WE+j5PQaTlTAEpa6nf7sypFFwW67YtN1xikSR0GTODKa9+vcn3woGdxeLlq4tV8tuVsRoKkoNL3u64xM94lhrtiYB3Pd74G0Io1EMG+IWFPjEgT0ewJtzAgoTpu+caUaQyUy0GfnzW7xUwNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDrvJllB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDrvJllB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A98C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728242753;
	bh=NjaOivdAy5YX6WFflvyf4OPrlsBF9uRpgVR3hP/g8sg=;
	h=To:Subject:From:Date:From;
	b=hDrvJllBbq4Yud87qDmpqBKzu5sco9F7k/nL7zDsrbRe9LVEwepNFj5PBlvF6uTcb
	 GHOBJDD6HFVwg3AiFHlOlkA3wrTFrtsw7/SCbCUPga37OdzYaSPkCfeJuKiikQlrat
	 wbTii1D+9DeQBLI+iwHKM/zKNIvbUSmIkpi33JApPW3ofpb9s2nAdYenhidTMGwNwZ
	 FUJgVO7uLlZpugs/82sD4xwqdCu7/oTHwiTiLsz+AVB3dl10J3QZVZTp22k//Gr/Rr
	 Ac4EJnO8ke1UhoyHfenZbXowmgDYCaJY1T2+Qbo6OQW3yw08OOiaXbETNkeQivJbNs
	 lXv+SFOGKPydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD21CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824275360.22981.11797196389223580720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195c2c538564fd3a4627cb9be702d806bbfa1247249e4ab416e83dfa495c0305
Date: Sun, 06 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728242753
