Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F75B10E5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741528134; cv=none; b=lGCjfYyX6gDNh8Tc8JzzerhqwcPuMdCCGlnh2KkbuPJS5b230Ec13NLIkU+A2xthwnckQpP/Mn4/WJ4LiqP+2BOfar8sItgDi0A7eKC3geTIm52DwzwLMMD/h5x/G8+GoCeKKwFlAV4+jpyKDPrNssXzDkJ5lBAkH1o1b68E7v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741528134; c=relaxed/simple;
	bh=mR3uzzjiEvozHAAHthdIw8RgUa/Jy5a2InG/IBjquqw=;
	h=To:Subject:From:Message-Id:Date; b=RcoV0bWdBr4LJq1IQRAzpUHXa5JUT+McRkbM0yqbvwECWAowppPfCqH6izJ+r1p3z16ShSb8nRDm1hnE3pgnTDqSa6K5c3kzxTlrQuwWe8D44kjaVTVOJx2q0qG8p4qBR4J3CNQh/EZ/d40L47auEpXKeIKIQUf0ykY3yV6nMj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYu/dNkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYu/dNkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC961C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741528133;
	bh=mR3uzzjiEvozHAAHthdIw8RgUa/Jy5a2InG/IBjquqw=;
	h=To:Subject:From:Date:From;
	b=SYu/dNkh2OwJ1koGhC0Yx5g6GYbjeK7XxeoR99p/8HWhdljSGTH6h+BV1Cqs1aUL5
	 8x34Nsq/P3VEPrEyFG0aU2dWxhGhu02CN6JfpNESui9lWgdblLSzpS3l3blliAz9NK
	 GAmTSpu5MbqjBzrMq5tiPjWRZZPglF6Q0uZDIPK1kFC/ALfs6f71mSgSR7FQ1vBohd
	 ZaE187JuJAyBwd13ihX+4vQRuW/UKDoVPlqbgr6/PFdblPpEaxfTGYeRHvLStCuI5o
	 yG8lTA+uVEW8bJvKC1ATj8Y2EX/rhhcBkUbYL7MlfzfGSSeXSXuVhpldaZVbWagr0+
	 BPTH6Odu+Zlhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1FDC28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152813362.13593.3358022628826786528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed5951847a8d6d4dba02cf4984b52fb2a06ccdc4c6f244071209f225b53ece1
Date: Sun, 09 Mar 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741528133
