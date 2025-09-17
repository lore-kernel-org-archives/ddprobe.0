Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30502FF678
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758122395; cv=none; b=AS08aEiHQktDOEHYpXDEuzUNkENdstZU+rj3YrNzEP8BPrziRA/zq7xodMbYM29qU/Bx4xs1j3KMhbVLESn+iqdRr5TL7Isn7J2twaR3Lu+T3NtzdPRBuWhiWdGWTNhW0hYup6cxeBGf/mL/c1n3/kPUEEnhuC1oCkJf47s5sJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758122395; c=relaxed/simple;
	bh=ywmh8tBmanBJAHtAzuQa53I+eSq247zcVWq7LgZqoM8=;
	h=To:Subject:From:Message-Id:Date; b=NUxWlXSLNgxHYDADrYS3ECqE9M4XrBs6KPSnVJ90SqU56j9vmMpWaajLSlukW4Tf7FcVN9ZZUypF98VPSq81qnqZwcuGrFwu+QE0gVSKxwJaqVt4ye6+vMqZEYaOarAofffCVGJgC5xA++JJZiwVOn6YpR0fifeEmyP9u6UQEyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPajlLBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPajlLBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6CFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758122393;
	bh=ywmh8tBmanBJAHtAzuQa53I+eSq247zcVWq7LgZqoM8=;
	h=To:Subject:From:Date:From;
	b=CPajlLBIyhR4RTK2TQ6B2gpj1iTCSM+a1aLeTmFCG/EfQXlgq2Pjn5TWTwrKaX2cL
	 KAWvTcaCoGc5RO1a08P6+PakxaftPZL8ee84AYo7gOajy94I0SaHqUS38zBERwEOJj
	 Qww2+JJqCtbAvyKvljmGcctKudX91lDMPiMI9T3YWvYu4aJfDt2CbtupwKC3D6guhm
	 e0zQQk1PLWLVg2zCFiM/+XZnXQ9tFafuH78ys74SQWWC4hY389fHSZoZ9871oRjzfa
	 KO/Z9GzrE+fRg9FdmpmpulqP4BM5G8p7RcgGxdIO62Ey4HH4xVnE/FCkn4L+vrfpq+
	 nXdRn8IZOdO9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50CCAC599
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812239357.5216.2214822892855695989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cd9ba08b9bc9eb4c53fc41da32d1601bcc3bcc90e2319339198d348e3dee4f
Date: Wed, 17 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758122393
