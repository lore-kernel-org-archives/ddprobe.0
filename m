Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4BA3A1E60
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766289234; cv=none; b=cApXLokw8/xxqcrDYElgigpL0ASXLY70uUnYZtLKqQmg0is6QPPDtFNBN1DafLWnynyPYJ6rVE1Ig/DM7Cq/OU8p8TTyyQrUzadNcnFkR3brPZn0EsvAh7am3BRvVGUbiBo0b2INAFozrhi0T4OhAgT1m9UhDMg90mxlIa47DXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766289234; c=relaxed/simple;
	bh=z2Ni434vsTpMjh/ITP7wdXjMHbYVrOKqXtHOR4cKqOA=;
	h=To:Subject:From:Message-Id:Date; b=ifL/HCE1w3d136w7p1oRqDZQm2hqrqe8u+W70uCC0jKNH2u1bBG+d1kOwfWajjq/dq3QLOV7Rmspw1Ob2tH4WyEYUNnI5jFgajOIh3QyLmXDaxsL/taneEtzRanfjeAENA9P+prSY5rxc+qfaSYHNGiIx8cByK+5oJJ3ItOKnxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsSDyUKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsSDyUKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4016C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766289233;
	bh=z2Ni434vsTpMjh/ITP7wdXjMHbYVrOKqXtHOR4cKqOA=;
	h=To:Subject:From:Date:From;
	b=SsSDyUKv6dosYryvTcJvzekTVxECkg+e4Z7KH/xeFoj7tAyInpq1QEmJOwZwBaHir
	 AChcZ1HAFL2lX3KMfrRFyzZ05AgrhE9C/RDPhXBYOlUcdJoDgp5xpY5PSL5PaC0Xib
	 MRzBEHRpGoxXxC4Rs67UEFC2Yy6AHGfjw7/eVaTTAHQWzQuWJp0LmQno8xG4vwhSLR
	 fe/Iq3FJC5zNWYmMZhE6oupB8JeunH3rezDFh4PvdmX3AxCNCk1f81LWYipI8icTqU
	 NOUP692FnlyB2z9KmhT2BRBQeMJ26mmF9IjFZ/q4VxyzF2cEctf+t30J6rzb72uhhE
	 XFutcFskS92Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE1D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628923358.19627.10338969362100353695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412e0709b4ff41f798d96c26b39ede1b3e74c313116a09869f3cfd450150a217
Date: Sun, 21 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766289233
