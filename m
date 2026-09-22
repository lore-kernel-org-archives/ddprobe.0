Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB164A6888
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790057434; cv=none; b=Ky1OK8EBpqPf/WPzlTcDaAM70oyVm6t6wJDPFdP0QClaOxNIGPDzWBEa9BxL8B+M/3W2OwlBSxFrfT7iLGjbh9EH+Oqpv1sVs66hq1c2VPSRRRlvmNKSK+B+4wxa9J3YrqizWH8osbOuhZQvt/MMsJBycJ4cGql1oBo+++nBku8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790057434; c=relaxed/simple;
	bh=r1IBPY/SII8kdwkjxjDsq0bfrQ9sQLn050UU5LCTqHw=;
	h=To:Subject:From:Message-Id:Date; b=D/7hiNGkMD+mY8mewYxZ08/XHcu1+REv2xtClt1c7xyGEymSpb1l4WimzHgfVgRlIz+WhxBzodzor0tgZbebl7jXwLphbngMvFvZaUe44PbvHiQpX38t/IR41IJ8ftzvBI5t3WN9xPaER0a+k6+W0EPiepcKs7o4ghHtN1iTt8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiTJxPhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiTJxPhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB928C2BCFC
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790057433;
	bh=r1IBPY/SII8kdwkjxjDsq0bfrQ9sQLn050UU5LCTqHw=;
	h=To:Subject:From:Date:From;
	b=fiTJxPhjIFtYeepVIMWK567HdZUAz7J6coVsO2QrkBtjhxOEB+/g29I51T3HOLaxw
	 hZqSpXl+Kyzn56p0vZBVpqZ9YCyQax5nw1kLqq7bsy6gokOCPYNUl4o85qZ964YeSR
	 1D0/DctFcrYPryhyBZl3X74sTzPS+pCGbdW8CxbmrjxX+BNedzXNcWVpkKerQUUygp
	 fmG5/fUBPGwYPBR9rWwTRMwryGufCHXRE35JGfS16iJp0gggG1vLyTF2Zf/+TsUGzx
	 VakV6COGqXP+kIfPBq5mSQwu4ugjgPRMmhl0ywrV+vUuJgqwj4RrmqIKLrbQnQ7h62
	 msKFI3Sv92kBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B653CC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005743373.1186.9704539252478679542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0519ffe2a4c15b773db2759ddd8087a123e38d17816d1b2f6d7dd4345a46e4f4
Date: Tue, 22 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790057433
