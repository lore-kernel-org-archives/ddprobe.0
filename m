Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5764913DDD5
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717483523; cv=none; b=l//yo+d02OBI5/lhA4nOkOl4QXClOSyvgJ2DX5tly+3Y3+Z3NeRRC6VWT5PgqsVUVnPX7xAShkKWs+w6lYDP9d36bjrxk7LIEnimYB3T7H6qAur6/Eydvm9e2kz7eYRpTZNRD2mVkAPJbjEYc3qAJ2zMug589ETbCWOyQXAgMZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717483523; c=relaxed/simple;
	bh=Q6qCVNIIGpzUdOU4TRDDpEHQgTSkwx6sws7tJTsiK3M=;
	h=To:Subject:From:Message-Id:Date; b=g0d4B1nxPv7awiu/lpXm9R2bCnKC4HI/8Y1Y1SfDsQ/B5wunzPwVBcvQ/XEXRLUvWyBRpKzsjRX13ajN33YK6/RMIQtG3Kbri3M6wmRDEbsqFSTLUNU9TkEu4DgIKIoV2The2Gv/jsEHLRB6OrVv9QCu6P5ta7ALYakOeLUnpVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2cVSwEB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2cVSwEB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9787C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717483522;
	bh=Q6qCVNIIGpzUdOU4TRDDpEHQgTSkwx6sws7tJTsiK3M=;
	h=To:Subject:From:Date:From;
	b=N2cVSwEByuLeCPDl3Tu+3LkEKVWmxa2/PZ5m8dKl+PDS69XZ0xFhtIEB0lZockZwT
	 ZytT1FLwesYbdlTEWU4/+QqDyq1ywtehfL5/iElilK3Z3bwSFUDHzGabn0iWoiPA41
	 b08jVCdsBi/BxLzntxuuuSEdlVrB3G2tL6WWhG27fUQP6ECT3nRPx4eSu+2D8MMDhA
	 ct08cz4TGX8rEOzEvbPBBaThnx19S5x28pwJceY2Zg+HwTrzkn9evO/u0Dwwi5hhbT
	 Kz5fItt8GqIyXnuZYicF9paeIm8G02Q1SdNW3R0Mn2Xn2otnaQS+o5VCBCBAQ+1vBL
	 RkuvEjguhUYIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4187C25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 06:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748352279.19810.5223678552223605297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683f0cf9fe51cd7a34c850a0f5c424a11978d791c3d19f5631fb6436fd750223
Date: Tue, 04 Jun 2024 06:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717483522
