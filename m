Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7CC13777E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735960554; cv=none; b=qu0GnRbsIbiHPOCvwvvIOPfMwzPVtmII2NpzTxU0HXTbux5JHseYyH+Gc62pLHuYZ2i9IQ3zZqTLxIh9Zr0MHfEyeWn+yFqU+mHK2zBlDJdJWwAFmanWhVLyl39wSCOksReFoE5Gt0opYel3tx11k9PKLIeHqCxKBinx8iyr2HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735960554; c=relaxed/simple;
	bh=CGpAI6Kx8nwCmt89yRc7NxHFLdNed0QR51W6pkevnEI=;
	h=To:Subject:From:Message-Id:Date; b=VJV1D7dGVLaeDgzlmsE1K4p9Hn5TGwWHhsBtu/wW+peacqFdcmOIUn8K4rAkOjHnsCUxiJgE3dKghX21Vdwr7oNxM83H3z+F3xLmE0sqzHDlzeKZfeyj+MZL6GDpLTJ+0PALvHqPxnQOSdy2PetNor5KUczTE7+f9oMcs23n/ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSplsW/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSplsW/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BA0C4CEDE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735960553;
	bh=CGpAI6Kx8nwCmt89yRc7NxHFLdNed0QR51W6pkevnEI=;
	h=To:Subject:From:Date:From;
	b=PSplsW/aN+AWh+mzEsOgaRgU/xLZtfYCMSLZqxINQVVNMeTDFRUAMnQ9jALcBLAcv
	 pdqNd8hbEsmEsv8jLW91HZifxOqT8E4pMWlXWrE6bukt/hVv8m4GrLQRIzj6je9inG
	 zyipaF16KZ444Dfyn02OdBOQ+7vIjv8C/O18FiuTkEPd3kO6MwLJow3DiCzldS8Trs
	 oBnqZB/XW44inro3kAC9xBoOPVjATlEnDWphpJ66PB6FtGIPEBESIlhCqfuD/isp4i
	 f7saGMxV3kElrT44nAqgk0nz4dXB9CMMykDjcrdxTy0WhuBqxhEMLgYzieR/jTZ5Kh
	 mCWWTSBdgOeBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943CEE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596055359.21039.15075026514121689796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2e8ec85704f032862957c5c8ee8372b8284a57aceb0b0104f8892028f80be0
Date: Sat, 04 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735960553
