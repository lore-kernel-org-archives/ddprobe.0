Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C084F9C0
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786822834; cv=none; b=GUHF5xmPk4Lc2MR0w71dg5TtHeFoXQC84TTxBRHuKT3NYJEw1ZiTz1Fh7E7KUNF/w01m4YTIvMY67WhYl+2gurpPuyQ74nDIom5ipn2bPjhTH3KKvf7sE4bz8Evxt3yqoincP5rnD9CmTk7SD/ZUhUZUY7b1tmQwZfDnJM+1xIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786822834; c=relaxed/simple;
	bh=UGaSvOO2OXQP/7HSZ+c98h4mqR7IPEpciKvbZtzGASQ=;
	h=To:Subject:From:Message-Id:Date; b=dNU/dGGQWus69cYgjNvLo3jIKF47zLo5crG/g6bYQIM+jVqdksOEo4lHIftHkufEOMS/gqmYbb1H2FO+qVJHh1BUtSj/BMhW3bgCZyrH/XoLFRajudAV/PZVl9ue2Inia3GtEvIRkFC1T9nTMU5YGOcYJKeiaMYRkGRTWmJsul8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4QT8ok1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4QT8ok1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E15C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786822833;
	bh=UGaSvOO2OXQP/7HSZ+c98h4mqR7IPEpciKvbZtzGASQ=;
	h=To:Subject:From:Date:From;
	b=X4QT8ok1ic0eW/KODEXW2ja2aVLz1hiQWJ+uc9zEmChmWypr2IN5a+81WG/LgmQ6E
	 6YQyQaxJwrMw2Z6jyYqfhOasCYkCTAzH+egZ3ZKsztmTNrHmlcpJWWZHedUnmdfqsu
	 ukKoFvck0G1sZnvpt0nT06qiRCM+t0cwG2Q6UzFVjefJh0ECKOCvtPd9zZKt3a6rt8
	 7oJklQdb6tm999lLAOcoV4y1cu75b/cwvXZHFybQ0S1miiSZ5WAJCjRxX/wnY+WMXR
	 dlbir7ucIpmW/KgPMnNL2ZZA41a+iDJayoaJe/Vt/2i7QPZ0RzLmiwlucJy1QqrNfG
	 aoNDt4NIzMOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC98C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682283369.3063.16716480414007520905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051cf62db095c8582088c848a05835769d382c74b9bc89fecd1e80e5963c39d5
Date: Sat, 15 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786822833
