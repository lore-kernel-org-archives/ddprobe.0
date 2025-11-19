Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FDE28751F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763579515; cv=none; b=dSvw0yru1G94ExGF8VgrN9vrFGCQw+HEi2cWDyuGUvXaNSI87ovuGSCvCmomu6JXBc99mKwRZPzOCTuDA5W2uYjuhxINRrbGyXkDmqEsfKqNyjUPxtEImdzrBKcc1Iw1dO5HwRD+X4KUbdxYSgsVSWekt0qxPdKaYOdfN/ce8SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763579515; c=relaxed/simple;
	bh=XEyKxX9uu1QFZNkZCGMczpuJVUAClHiu5dykwal3npQ=;
	h=To:Subject:From:Message-Id:Date; b=O7sM7K5v6PjCxmZxHfX8wddErcgNCbujtwIN8r3exACabf34a5WeiPLu2D7yVtwActTjqLL9kvAfCS1V7OLtDfmjhDgWa5cgsFJtK+GZjUhbeGqMvzdkatpPFRpjnJ8PJ7obqOsUol7mB53HlGKNVexCMk3nuphGHqnu3o8qKSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LT5oP6h0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LT5oP6h0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F344C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763579513;
	bh=XEyKxX9uu1QFZNkZCGMczpuJVUAClHiu5dykwal3npQ=;
	h=To:Subject:From:Date:From;
	b=LT5oP6h0rtP9yOz5bjRGY8ec4JK5w7FlDquv6vCbJhHqpU3iNkMRHa66SONR4wMIp
	 aVUhpF+zewCSx6cYM0JS3S3XK4E8admEkVRy5RNUpxncMbT2Qe4LN+LnvAnSd7jyBj
	 FtXv3+h/JmKAgL5AIXTeYI8qGre/vjtruUxTEZ1pm1DDhKO/Vfy829r4XIUPoXppRs
	 THeZDULpuchsvcwu/cIPgJ/KTHS5y9pEUWqf80DBVndoz2knqMHmFW/5Had9fXCIgZ
	 XWqNY+AePG8P1CPuab0y8LSaIPFBaw8gsc8jXaaNeJuqjmRr+6pxyFKA4552axwmhq
	 OmHP9scuyTDWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E84CF58CC
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357951358.30467.1079139470643569796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e336fa1edc074d3e8d6ad51a20699f26a22a617ee2d58aae85d874b9a8d3d1f9
Date: Wed, 19 Nov 2025 19:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763579513
