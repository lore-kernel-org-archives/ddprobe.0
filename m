Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79F2360
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717891643; cv=none; b=dIkXfuDsNURZJPaVlJeuTmLzifv4DGbWeQCIFrJUoce46pv+MSqIRAbIRGiioYm7fEu4lONJ4MkIvcsnyX5cZ7VlZoyEXraI2YZvO1urOlRG9Ub4Ny/6HuFjLUFTzQsOJzhtK83mTSPTzO6Tp29fQNNZ95lkS+lLnHf4COe3G98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717891643; c=relaxed/simple;
	bh=LMVIDx02Fu8QmxB7RAwMEo7MfEMFAmhnWmq2xbliOZg=;
	h=To:Subject:From:Message-Id:Date; b=TFF+sdB0TMxU6j7uOq1al+0FZ3Y847gE/655CQdawyQ4nOIBmAO12KQunygm4a95tKsfeMlkDYau7jszFt/uOwtW4MpGL3awMqTdU2SrNB/YfY7f8RzRhc4EZCERVX4ZCHPbUyV1IRRpdB7lri2n0jbHXPNl624QeQNe1qcdqhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5X1YbBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5X1YbBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8639C2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717891642;
	bh=LMVIDx02Fu8QmxB7RAwMEo7MfEMFAmhnWmq2xbliOZg=;
	h=To:Subject:From:Date:From;
	b=b5X1YbBmnQBwUOYWLvhPPmyukxYnncJT46N2ltZ8DRkgwNaJWkbcBj01soiDs3ryu
	 zJ7/0G/8Urfewf+kkZBIDWJ0iA2HrgyBNHgOshem1M0cu71eoKyviJw1wZV0mSwsK/
	 z4ippK72OAhZdVr5XFB0YX0gJDHp/sTJdA9O9wlNM9i2zNb2cV1jIfQdK5gMJNKIF+
	 eDj1/wNOAec5MRGaSec751QIVEJovNsYJcGe4UXdxgGaFnlhc71yy6KoluqViZg/bb
	 ivo0LlTuPG0CGKFXHQkUMQ0AwnFtCmcEdE8O016GhF2t4vGy7foV+h7Zrr5RAOnNlk
	 /9wI1rgKcBM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB6AC25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 00:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789164280.7852.11858085214782456915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1805cbc7a5705c3604b7eafb594a91eaf168246ee178650abf640c1e320cf628
Date: Sun, 09 Jun 2024 00:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717891642
