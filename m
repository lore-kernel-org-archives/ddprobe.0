Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D437128C845
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746644993; cv=none; b=Ae67jwwsGgh92+4io7plvOhjjdriQ8LJmyT3UHYWZgQFZpxr/gTYbO+B1384toyyfDBZL+UGM7oFAABpor51TNAybpiNpHlKJEcRVgcn9DE03JfiM78F18eo7HICuf7tWOXei9KLKTUbO2E3368ZzhbPhkzQakdRzKxCqTctPaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746644993; c=relaxed/simple;
	bh=DjjL1vXY0vFnxBSNbh5O+QEufBMyKqONb/cdU6ZBb6Y=;
	h=To:Subject:From:Message-Id:Date; b=oa9NdZP7hN6XryuR8fsdfKMQAc6jZwYt/7ga53kfybYn6mwGRF2kXLTaXM5JS++qFk402MBH2UA0uCT0w0EVzTLXJrlXFYAmXyD18iauVh4POl7rp2TF69nG2oKCEY6IFFtnOoz2vmLW2jCFZ/dG535tjTAYhRIoGttLqy6RYvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0FJ8MSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0FJ8MSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D54CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746644993;
	bh=DjjL1vXY0vFnxBSNbh5O+QEufBMyKqONb/cdU6ZBb6Y=;
	h=To:Subject:From:Date:From;
	b=M0FJ8MSVLdQCVI3gW3NotwVDlLbS7Qf1tW8x4A0GSFOOF18r7rK9ET1UO0UCohBqT
	 y0Hq5+NRmjkyZFPWsBy1iJULwu3j9T33zha42l1zWAD0GsgEYaw2MmbTQxK4g5c9Ew
	 b5YrT+OmNDt/VmiiSmQB/zQFQu8DuD2um5SJrYK03ngCwBb6ZCmAACs7iU4H/Uubgh
	 RZuXNE6bdyPn8ORa0OFQE+zoQHTYuA2G6tQ9bQBVcMNZsDdg8lYHohQn1afkxkai6R
	 NWwsyrUr/hG0zNxnP1foDBSY8JQPS/x6jnNsiQld42Y1q/6olnebv11LBLjcD/iBjt
	 aBXPHoJTLU4Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E855C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664499357.8554.2198085371248648629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78221983de104a6cf60e06e1804c262b7ce6cc9c452f4e482f10f3d1d5e1c6b
Date: Wed, 07 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746644993
