Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211BE1ACECE
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746951594; cv=none; b=j6yrmju2mJmseJjtJCoQ0kK/KTro5CkJvjosM/yWXNC6fR8Kv4BZpxP1tYSnwTIDeiGc0SftXhzPfRY8T9K28XKpyzFUNGAaFIpwl8EyXTqILYf9VKdrdPVyN9thJMr4htj1hX9D72HOP3KRSLXHsVh6ATNE465mJclRBcUdE3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746951594; c=relaxed/simple;
	bh=xoyAKSwVobLyfk6wm5BTiEThsPAWPdRxt2+d2ibNwZI=;
	h=To:Subject:From:Message-Id:Date; b=mSlCcIxEvl/dZHVHpR+0fBD+Q/CQJl2LqcA4HA0ZH9z3u8DvhR/4+Snv5i39UCrD7ansH/7bqT30KgqCFDqTx+MAdXf7UMm1R4rVDeUw5xfrMSEjy2O/c0kePYyMyu27iHPk1PA/oLEHs2VBm580uR8xqj40tsT161p5C/Ijf/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej4HZk25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej4HZk25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96A72C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746951593;
	bh=xoyAKSwVobLyfk6wm5BTiEThsPAWPdRxt2+d2ibNwZI=;
	h=To:Subject:From:Date:From;
	b=Ej4HZk25pB8tpLvooXsPoYMERyKFCQR2OtX35Nh24/fZhrAM9w4oL9eYWs3u87y0D
	 9XDDhc1tmeFmT61BRYoh/56k98hvNC77jmMrgYZtoUiDynF21wto41kvSPvXcrQPCi
	 3weQe6Z2LKGxqAXYiv/Q524q4vJwKPK9oyEwmHYw94RA3GjK1ij6e7WJAyG3NCwgBr
	 JR4BErR1Cz+IkwZKRID8ozTPNJ/jU/eeA0vcpXqgKZdRNZKSMdsHWVH9WMNbj+AfWR
	 dmECAfgLXdN2JhPXM2FajG3zLypqgJtAdLWlhSbKnOdLZi7w1T8oe22ucBm6i/0dJI
	 6a9x/YJWpNtoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83FC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695159357.22693.14075333004655040248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4a643973fe2a6ff1f7ee169d7f22928eabe271e9b7ecc1c7059684caafab04
Date: Sun, 11 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746951593
