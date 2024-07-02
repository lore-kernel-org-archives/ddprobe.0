Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0DA15B10F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719921923; cv=none; b=ulEWJdYFibNiORNhxfUOdSpIHdAQWmaPJdqyFXviGLjFnFhxhFLh79VJFzzEFXTofiyZ/2YyrrfcxyHQrO9l7LCKgR7G5Wgbv81M2qo92/zQgQzu4MehQLZu6+epOpXjl+7AoFC5odC9eNrjfedJiTy88d1TDRYhP0Z/u4zlX2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719921923; c=relaxed/simple;
	bh=Ead3GS90A+kJeSV0T8UGBsW/ZbjLXoby8ENPci9EpFQ=;
	h=To:Subject:From:Message-Id:Date; b=jd+KXJ3A+JOytsmYPBgPuD2/WUewLTHgb15S0Dh7Oww3vgJQnwQBoIfGo7CL0RpJ2cDe+JB09JnEKKATNsRjnOjPmYpVORnr2csjosBiR1v6+w/krqgHRQ2X2uh8wFGlzRGbT3phR+dPsFCDAkNy7KDPwYCIWATcTkqg7xCrwR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVCmO6Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVCmO6Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C3AC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719921922;
	bh=Ead3GS90A+kJeSV0T8UGBsW/ZbjLXoby8ENPci9EpFQ=;
	h=To:Subject:From:Date:From;
	b=EVCmO6HkqvsRNn11HsZQAwCvQOpMs/VdwbAgjnFzW77XMUhguZqRpdy7BYYMYU1tX
	 IssmrOzu0zhOPVIpGkTgvKzpTa17CNYQAc47DtYzAZfp8q1BeM959dWeyFoxD3C52v
	 jOGLVqrJv4d9cXhtqK0S1/ID11stan3Uo09FYwMm5dN9eZHrUNRlvYPrmvwelXxfIa
	 7L7CFDuzGtJDbGLspLWur0D6dfUT5zphXm98M+qb83ZZYxF3lTodfCGzXweW3/xm/p
	 95UEWYkFNS8RkHRQU+p/G6e0P4393Wa6vpCyJju++MMh8ylDEZLPQ2P9nqAm5FxloK
	 negjDVQp6X0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A62C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992192285.25578.18006999304207835878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7afd3a444ea2a8bb61d9b78a2aae1bd0146040f69ce6261e21cbc272e408166
Date: Tue, 02 Jul 2024 12:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719921922
