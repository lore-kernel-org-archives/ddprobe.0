Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB8127C875
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757162394; cv=none; b=Pe1IO+AtLYrhgbfqxVueIQSbnS6AFj2uoFKgv0nTOsphb/d+frDuVYwysnZ1GonU2g7KGEDZkT8bh51XXjPgid83bmJqI+nOu6N0mq2lcoHrTsbaR/2tz60bIISzQRGpjWLRGUeaHlN5XcL7DSeXI6hJ2nm2iOn2evxKHSIAxxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757162394; c=relaxed/simple;
	bh=lBIeemdhPXSyTZLFIhUGif5DU8fOgma8N0Bqtfe27Mc=;
	h=To:Subject:From:Message-Id:Date; b=Zpx0vUxi8D1es+D1c4coF7/tXhiKKoyFnF5Td49x/qPp5Lt2MRl/ugjZZAgBTHTCTm3gTqPrSSwx/SaYRzgholTRup9HoDe5cKjaXDlYWI9cDL0Gl8jYaj76lqsYPHh/JyzMKJhjAwtVs4iaHC6E8RFJ86qWOZMJ9UtkFCdvTOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPdOk4ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPdOk4ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6935C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757162393;
	bh=lBIeemdhPXSyTZLFIhUGif5DU8fOgma8N0Bqtfe27Mc=;
	h=To:Subject:From:Date:From;
	b=EPdOk4aduKmhg6SxfsWQGzVJWLg4j+08ZlzHqJtmprz5xMVAfuPrm+eF/QLtKTBld
	 FPfAAjguphXGORjXWjseX2QvIpU4O5gX2f5xbCoKYBV1le5Pi1Co8GO7k0nZcevMhH
	 A1Pc5LNVc/zjJ18HZfzAVGRimoE4aI/B9xL408nJO6oih4bP8U1rBJDtoTBdAM0R8b
	 iUmSqcXJsq5Tvrucajm/gbHbJNZrWQBMlB8QnanqBR3WR6yASjYSB5CzR9/hGyqMt3
	 P+lcT2N6igaLoWiMQTkzazdqVBeoqNmxBoSTEIoMDrf4JGDeCJ1YG0+p66MzfrUoDY
	 EoCuPFCwC8Ngg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9507ECA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716239357.16006.5709988586350103465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ea1d2c8669aa1d9dfd58a691c565e1792e96bb514d1daaff70a6f34febf0b9
Date: Sat, 06 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757162393
