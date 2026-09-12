Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4162D30DEA3
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789221634; cv=none; b=PDJQqOcAd/iTMxHIDEIfOOdYDEcPVPLh2YUxXdfC6dLXKWE1xK1TpD8r911ti+d7qiXl/Tfo5poSYKIsO2Lnj3gjfAI2kHIKWA3DE1EctJ1wXChJDXQWOrpNMenayBS3LSMFkl53ZZwIwBOMhxRs9IyQOaTyRH4YzyzjRxUkk4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789221634; c=relaxed/simple;
	bh=+9jgxGyB0tMwc7OGx4A4MA2B70S5FBEiUnVXnmzNVKw=;
	h=To:Subject:From:Message-Id:Date; b=dKGGqwSUlZAnkHe65dZCBSU908K0LG+WnsnNaWCWA9GR29qRMtiWEYLv4kvAzVd7OAzIEex+fOdD/b897dYfHlf1L5VQeWl0ShqRESpiKduQBwaEWS3flR8yWBPGLbwwqLF85RV5zSbDYBB+kW99roJ5xX4IjoUlj0jARncQki4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PanPqN1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PanPqN1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC12FC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789221633;
	bh=+9jgxGyB0tMwc7OGx4A4MA2B70S5FBEiUnVXnmzNVKw=;
	h=To:Subject:From:Date:From;
	b=PanPqN1UXa6Pk6Tl07LREw4Z6QPfkxdwPmFz7Rre0GvvpNg0VUKXJJAVa8ABD6nlV
	 UJgOmHWfOfna++OtSfTlkKTCUqBNLkNiaP6zzWt0hPc4rNPxQfi1uvuHHCNcE6SMnu
	 yu+vS5f8p/AaFerIXhtKvK8TM7PhTBckqZMiilWWnUjQRhnaS5b3hwt3pVy/UrMG2+
	 1KDodDC+M7GdVU/3amzjgCIYTOWUCOP9qxigbm1MqB15FFUoOSmk6VQveV3zP2eBvW
	 nNT69dyc76Nsy23ZVoWknhFClVY7E4oCd40Az/uVovbfTr9fDC4OYwzmeYHXVvkHAB
	 wkkBJpMx0hQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99BAC88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922163368.15925.5946719153884585899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3a0ec2b49d7f7ca0e91f1b7fbae8a81447c643336b6d0667d3328d6539d988
Date: Sat, 12 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789221633
