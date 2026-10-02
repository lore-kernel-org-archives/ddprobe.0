Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B50036D9E9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790921434; cv=none; b=GxgSXwqvvBdfuEdC/bEOYL5N4wZWoawgt8yRyEKDW1qumeTLuVyXBcg0p3p5DMcUhmi/+3vwUSFna5z58iOj1b89HOvWkNXaSf5Qtii2wt5fjZnIdDXlco0gSB0NrbQn9zZscHJnWP5H7uIGtWP+QhPUPXE8q2sxy47x760N6NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790921434; c=relaxed/simple;
	bh=+6/3BbVifLR8XZkYpplpzLh5OSPN5NhyV0ZcQRaDV60=;
	h=To:Subject:From:Message-Id:Date; b=CTxDIqTYVTw08hfVDA7x1Io7YibVUInjI3zx4S8ygfdj2AvLmfgM+YxPwIcqg0DwufZG65r+E/63eE+P6KmLdFudxJQq8pVyZ3AfgOu5kU56GqfX79cCHu82TuNEiteEeDR3UUk0rnUx9zvwPNHawQAS5QNUbI6GhpKvgHuoHCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtU65P2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtU65P2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDE7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790921433;
	bh=+6/3BbVifLR8XZkYpplpzLh5OSPN5NhyV0ZcQRaDV60=;
	h=To:Subject:From:Date:From;
	b=DtU65P2zdiAcAdZTPZ3QOAKCvY9twWvXAUz5ARcwGqDwzlEjSofaBx1Vt1dwvqnA+
	 1x9DdKbT63TtvarfvkFTanu4hGCMm2tHTruLWLpFOha1sjFCHVnLzhD0dAKriiLgjQ
	 3GspTtAGfGn+8mRgSX2VO0QU8lfQ3TbCgf/+6uRpcEzLPXhXp0YWuUolhRqTuECbh8
	 qkCvJ6xj9DgBULLF1efBchNcAUXJUkf4/o1HOQqKl1DGJuOUdt4SOnoQ+2HDrSW3Qz
	 QQg9GlJGWbBsY3zTR8oACvU5P3Pze+tlSva/PuGGxWWe6w2AyKOTwfeASpStqaTva2
	 1l9LQBsDkuKsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEA9CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092143369.23709.11375103635996803027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b77401d8368c4ffc194ef0cc3aa76340ecab0b69fbd9f71e22099ce954919b
Date: Fri, 02 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790921433
