Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD98282EE
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758440995; cv=none; b=B5io/ASbjtAxxBoSzasomFVbok9gvQO0+P/ZUWgUsCmE/pr73lBmT1mU6qiH1EFsAaL235ginWFM9EwcQNLnisWB1nny5yhBJ3T39f2P773bV3tdvax/WgBa/GlHkgLv1WMfVGTf1NNnm7Gk4wJbt4F0S3Kq895owS/2Q8Ne8Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758440995; c=relaxed/simple;
	bh=HQHO9fTYnSS+PoCKUzUL+MN4hKIFq8MET+Y01535dx4=;
	h=To:Subject:From:Message-Id:Date; b=SmIxXc//upRCRprPhmrI3Sma6mfV+yOu+0tYT38fMGqY+G6pZ0MPRw0bLm4zPnuSyVLsceO8e0wyclSMeAgkgoPU4F9fQEHQiML8DzpEfDyQB1Lypv18Nsb0xlM2k1CGU+MkFPc7EKyDazguDIVZLtD+EnUHj8dfnJ45TyfauaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLyLOJ7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLyLOJ7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758440993;
	bh=HQHO9fTYnSS+PoCKUzUL+MN4hKIFq8MET+Y01535dx4=;
	h=To:Subject:From:Date:From;
	b=FLyLOJ7S1w9DOQu/XrQDbgbLPEHDCtX6ywsuYGdjlAaJPVowJVmbsvOGI5IBfrGBE
	 S1y7W+WdSokc9JtPN2o11cwp6T5PZoJtccK3/1gQ70/Dj89kRr8d7V3HKIT79eJlm+
	 yhhnO5bkrfnDrr7Cqv7xJ9LcbgQcunjd0nB3oJBAb+nzcsFO/mAE4sC+TDCUwtsUQb
	 awhoHFWEYAvAFCOpu5FDrCK7Vpq9dTa8H5ybHz42VR3LR/Gdrs0l978u14nP4xydX+
	 Dnv4gMlkZETnJsTbkNFddQutelO5XLXWvi7IKHfGTB2aDa7lO8WHdvM3QQ8BoGDPNn
	 RzRs4+7e3AuQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A4CCAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844099357.2035.17515721105248776275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb3306de2eed71f9cd323b9b8952cface040267d97cff53d64edb5bbcd81a18
Date: Sun, 21 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758440993
