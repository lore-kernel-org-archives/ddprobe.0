Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA521E505
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790508034; cv=none; b=WC8PaZiao5Bd9IAKB8Gww9b8P6PozO972JfrgEXMTv+U5k4vz6XFa9EfzviDk6zzZfHmCiSkREyfUWiCcVNUVYo5wFImQ4qZ1Z/cM8HEYL0MWop81CPXrrDcOknQf6vmzcFltPYZfyeZYxUAZ78cx4zOfL8vxTMr8Req+HJrt+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790508034; c=relaxed/simple;
	bh=pc7FtLEekovvYx/w6eSK3K3jpfdkmW+iMcCma5wKJsk=;
	h=To:Subject:From:Message-Id:Date; b=XV6WBlFKRB2PvkgJyCEgzSEE0MlB6bBv0QNIyctK9gz/CH6Q+yRUdcuydpelI6taFmJCH6iO/ybQ0E4SbXemnIXSF1r3jizMup7SUbASgjOo8Izp+skmdeGNnVXRSO9sJ51O8s2tD6gvG9L4OQl26HHAVbSNNnWqnOPPnFDHxKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRu0gMp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRu0gMp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D0BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790508033;
	bh=pc7FtLEekovvYx/w6eSK3K3jpfdkmW+iMcCma5wKJsk=;
	h=To:Subject:From:Date:From;
	b=IRu0gMp0j2oFD6Qr0WAOSSBlV6OKu+rx8d/TysA/pRsubUKXyc8NjxtZvBNhcH9K5
	 +Gb7+SNhavyjb0TXOGd1TzSV6VSGDmfeM9mn1mxwcbiD6Z4g4vnR3ld/H7GM2w4KWt
	 BrG+JJsYIo/bAmsx2zh5HiVhwQypsgEMKSuv4LnZN1DhGhZu+nBGgg5dY7vDcH0omb
	 ucGXOrJ/43mEmtVOU+lHHfqrbwJD0wdZvIKbbcX94arRfu9Cr43b9H5P7YnN/nSQGJ
	 kelXIVavn8BDKJ4c5AbzB4vEaQH90wciZt2CE6XQQJSv0kkCw6s/lQo4j1vG+lraYn
	 fS84Y7CmMFiaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD631C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050803368.26295.10683320735992580354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a1a46f6175b118a71933c8d5dc2c42881dea56330b84cb04d6b0af03f1964d
Date: Sun, 27 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790508033
