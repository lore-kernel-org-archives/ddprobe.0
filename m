Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F402DA76A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784606314; cv=none; b=lYlU34gIywou5TWWxVDUQrwmccukPlKJcyPi4xPXRt87u9EuK69/EnHs8/B79SZhk/F8AMRHj4o+GouXcBMYau8DE2Ru5Bq/tTWQyDAFPfhbaa6PqYDYH5dKMOGqcFjK8tWdUuSz4lbsw7N4unpP7RMmPFk1oFhM/okSGHjdmnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784606314; c=relaxed/simple;
	bh=ydFOIei6ZSdWeQa8nXQlU/s70Tz1dI2fX2IXuLbPw4s=;
	h=To:Subject:From:Message-Id:Date; b=Pc1MG/riANF+zMPxCQ02H7UsPvTgxCBSj3adI9846MLHhdUch+a3v2SnjivgWOltkdhwE9K34K0NxI8yog0KYJcYvbQDa5xtPDEKEDTTlnX7ybDFy83h8McheBimETDVNG8eTJpqdJRes6hoRuuo6edYEWgfPP6shtqO9T92IRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AISAVtc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AISAVtc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A16C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784606313;
	bh=ydFOIei6ZSdWeQa8nXQlU/s70Tz1dI2fX2IXuLbPw4s=;
	h=To:Subject:From:Date:From;
	b=AISAVtc6zWAYLs3ciZU8uG7dyJ4p8nUwq2WKYePrJjg18vWYMPLjzkoH8t7nB3Gqi
	 pk/12A6MUYEJQZlkMpMmvEf6HDFT7uCYhuUnMfc21KGpVDJaZTk0rh35qPYArtMOgh
	 AHyhjRrRFQuB1YHL3t4kxmg8fRKZig447M0FyX5qnlsCBTSx9m0t0Ta3ixHxqjGyMN
	 40nbseVuF4Wd59XbuG+ogmo7w/B3K+PYr79peRI1/2y7xR9ul6ixPyaQoPiYKMYg6l
	 1q3UhhfP9ZoX+rczlWMf1KtXkX025zSjxTq0aPVb8cBczBfb3ghiQq3ybZJEOOQSCk
	 JUSbbvGjJkwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFB1C4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460631368.19464.16009843821324305820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eeba8cb824bdd7065dca906becb019729497ee9dd2ce91830cf5b053f316ea6
Date: Tue, 21 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784606313
