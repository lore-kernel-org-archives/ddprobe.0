Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A430481AB6
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784126315; cv=none; b=mmopm4IqstHDKtLskP/x5uxJ+SspwRxaDce+/TycvbjIDb+rqB/u4bO1bXMh+mZUyubaJ6pN/jr461i9y2ud+LM0legSFWct9tX2YilRJytE8RxG1aYo9Mj0szaUNWIqWX97BlqcCA6YucQJginvrGAurL0n7UJwm36kc8nV1+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784126315; c=relaxed/simple;
	bh=a/4J9NzOsqAJ8CB8iuAbeqawjkhIW9YHgTGpo0ZheIo=;
	h=To:Subject:From:Message-Id:Date; b=GS2evofdthJUGuJAgTqqMdrib0kmLYSjdC4BoifLNNZduxkibuX5VjHbOy2qC6tLF5KaUTekWe1xAKm4gUKt5kYDgdHTwD68mcirudaZNVFUA3b9E+nDWqwM8zGIHQd2y4VB3+R0QM0KnTUFPuT9job8Nd9ws3ZnN3DCIItbvzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHBBLMiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHBBLMiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFC7C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784126313;
	bh=a/4J9NzOsqAJ8CB8iuAbeqawjkhIW9YHgTGpo0ZheIo=;
	h=To:Subject:From:Date:From;
	b=sHBBLMiEDnnsFxz35NMKw0q7n1ERvrzF7+pRl1d7C2o8oZrmnZuC2aZD/wlQBER3C
	 nHm5Yqbb8eNP6Ifqs1Q3w8A45cuwpIpdLZKuyUuStMJdgt/pw3vyWtf9dughiPWXTw
	 UNoKapdAY8BUniOj6YGPH1S3nafCfuuCR4JpbwIliODhmP839SfYZm9jeHQpnT0vOE
	 zgBnf9Qj8IGvQX/ORVRZaqNZkPnSVxnz8AfeH7aqi9EpnvZTs+tbRZFBFRqVeYxjhm
	 hZMx134M3M/KdWh8v+M/jXsFyZSIllcJstPE00YIUYZMBRT5QNZajwQswQGb57sZzB
	 0NcRBCuDYbr2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7372C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412631374.21859.15256573464748955509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad30e76cf1c9ba6a694fda11fe597fc0bd6c17f102e943c458d58021072feacc
Date: Wed, 15 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784126313
