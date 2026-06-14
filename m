Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554D9257ACF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781406394; cv=none; b=UhQZVOOQM9IjClzIddWaPMBXPWNTe6N+hJyrrI22KQ+8yENX3PcdRa85Ny4v6vq559n4cVH7NQoMd+qh9Otaqb9BO1mpud0YEO2WruuRgwtcOuLaIyvTz1cYwlLJ3Tp0ITAE053ZvXsc8h6Bgu9FqqmMGmBO78UxSfBijkeBlbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781406394; c=relaxed/simple;
	bh=CvJxJVY/O2uwmrIYpbSMsjQXlhX51dPAcI8Y4AUfPpo=;
	h=To:Subject:From:Message-Id:Date; b=t0zYD3NT9qSpDbmyzuzqIFt+LnXsExUXRuF04berKwTikGdkycEknJ5YRCaEoUMnqHtUg1QZ7ceynVIeUG+aHukbECX52nUN4VtsonJIATiZX3zlURoCnLU8HL8rEtFLIZb+rSbqi0/UKtkg2lGt0gn18Snh6MfFdJ1en3wdEeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Of/IFv5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Of/IFv5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF88C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781406393;
	bh=CvJxJVY/O2uwmrIYpbSMsjQXlhX51dPAcI8Y4AUfPpo=;
	h=To:Subject:From:Date:From;
	b=Of/IFv5H8plzvFbpyADhcvWxK90zBC0R4ATD1o2VQ4+an4sq6/UeXq1cknzqIbK7T
	 PpiUQ4Pk7vLecjN42i2r1rMkNRxEEOGs/xzmb9gHfi0/Q+btkxrJ2HSB3FT4Qq3pgb
	 X4H7DepRaopmIb5QFDLxD6/Zlksi4EFTb0n89cabLlxRjJVXJ3j5GMvOR4NOQsqjzQ
	 1qPE3pzVNUy9P7hDgDwQA5p0p1DsU/rjUpMHf+vSFbWo5Yltk8i3ngDCYzYuQi03WE
	 WpugreWfei8MIka0B8jh4nAWtV6KKbcjEyXwcCnSv1IOsYKvuf65XDLL6dzur7DY87
	 fPBYKL0QVme9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE580CD98CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140639369.15979.2447547313051447561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f69b26e90bd3cb551f65c81f8d46a8e94235bf45fd911d39fa64c657b001399
Date: Sun, 14 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781406393
