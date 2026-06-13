Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43892390C81
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781315794; cv=none; b=o1jQv3vIeFGuEYPZGA9JUrycsA11g/204ATzAnpwFvo1ATSMdVJVRDNQSRC9JSNTWgJJSc8k5sKvgndUJ4PWDDRPPqp/SwZPJb8RXviu8S8Lk3ZB/+GjATztDNdlkf5s/rTThM7V+xnwKbj+R2urIviZzpXNlAYPjM0EbdcJldU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781315794; c=relaxed/simple;
	bh=GCLcdQ9VS6ZBHuWvxGjGoAtdvsvFidR8KSQ25eZQjbM=;
	h=To:Subject:From:Message-Id:Date; b=QhYrRgzOMtGfjbEIjZKbblsWsrOGJ3qqkKm/rtMzpuNdAmmNzj2j28ZMCPx1RlD/TFq7IppP4dZjV2dTHrFcIOPpWLp268AKEoGxAylDszenGkaZL1KKvL+4fUFyRphDEOxD/afUP1soE/+fS5aPxmActyInWgE7MKtlLGzAqT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kmvw/6lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kmvw/6lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23C5C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781315793;
	bh=GCLcdQ9VS6ZBHuWvxGjGoAtdvsvFidR8KSQ25eZQjbM=;
	h=To:Subject:From:Date:From;
	b=Kmvw/6lwxk5HlCVUbAxouL/Mmz2d0y13I2SAXStOded98NJIupkrDWU3t52aCfVmJ
	 NrscnKy5noNf/J4mMsDFMRbcZaOjMToQWJX5c1BefpfV3w8GZ9mqLrIPAPyZGistRa
	 4YVQwiX3NRuJ+3GtP3OG5NBEXqMN/UZgCqFSmVRqq7zZhbjjFGBDhJ26mZAkOLdUk+
	 k+ctY9YTHz3Pc/Y5Hh1s0ruWdq8GE0aH0j1zFt8LDAVZRHzupHgD7to2Srocxp9fhJ
	 MN1zdg20lXhXZkd9VN3TBn+25NdvomtPgMzQYDn1YqFeNG3au4a+U/2HgmgGr0BEK8
	 jy7Zvr6IYLU0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD9CD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131579368.7878.16781360250031715529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0b1e740896c438cd6e66dbdf5544b3c3d299d299081119223e7b4e92b433f6
Date: Sat, 13 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781315793
