Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1D831AF2D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787259034; cv=none; b=dTwCR0Ihmg8UdFpmKKdD/y1znaFJCo7GZfc7waTjw9iRujVNc+9pwdDMhsOO5btJtKgTFb8a61CNn9R7Ay/e+lLHiVIE0l2E1/J/MFXMSpHn2OjMcOcPRO6OZ7RSA1jkxL4rGV+JWaUvD2TlRy9u/E2eAi4uXLMO6lnnF68mWcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787259034; c=relaxed/simple;
	bh=YXA55GnCnRm0uzNJmkaLLBYNcdTFjUz8xSKK3uNpVqQ=;
	h=To:Subject:From:Message-Id:Date; b=vCNBhZw0kdNcUOtg1zDGGACUjCiCXEDPgFpliYCsn9RyADF4uK5Wy3nBmT7OUalFR7yEwGesr6VEo0eErse/QUItyqL2TuC+QYq/QhpHxX8WfdUinyLYf0yXX2cnXD+5ws5fqNx+0+hKAr4rv5FEBzqsOqsosDJjJ2Xyh+WyqII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoIjvm1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoIjvm1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CF9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787259033;
	bh=YXA55GnCnRm0uzNJmkaLLBYNcdTFjUz8xSKK3uNpVqQ=;
	h=To:Subject:From:Date:From;
	b=aoIjvm1Irw8aDbKbvEqOgGq97cEyNWbMFEQvU1BUcC3/LQx8lRTC0LdDCZ08QMv0T
	 FRCeagFzC+UbEqT+Qr/M8TJ4YQkeTzaFT93Z7glBIKAa2AVOwXgG4uXbTxXIjk71V0
	 s7NlNWJNNiK1wTNTOmaaI/eREaktpSpTi4FIXabrZvDs7oPi+rgpglPCnjOhgtTLAY
	 gMagmC8gRkbsBJ97H1wOgoBT+jxQwR1QdFwf/i9JtLzbmLf+OtbAAX2Wyj/1DsKGjn
	 nEsa4j/G/xzbvBGPSUnXbNND9P/WFncx2bTC9eD/KTDN+r7/LsIItRzGWQl/BzLEQt
	 IZdmBz6oQbTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC67C5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725903373.4122.4671099779462246504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750b54bf6f1004af132591852aae9faeef6fc0dcd0126abb5f30a8ca38440508
Date: Thu, 20 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787259033
