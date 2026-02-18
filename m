Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD526F2A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771456494; cv=none; b=gEA3CLnNYBXpAp7ZbkXZr2O/G9ycGnK+BhoRUF8nZpvWbsnRlP/o2fd9gJXvRMIIH5lIgAI8VDJrlKcOcKctXSnyONi5nLMClc99r/tDOiDcV3P9acVRDNT4q+F7ISajZraVsxr67yg3pIi/m2ymBN4JPT+eopkfrHj/uvC+BIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771456494; c=relaxed/simple;
	bh=xNyw8s1BFAlraiYN7qioae8P3kOXci1NlvYEraoBkuU=;
	h=To:Subject:From:Message-Id:Date; b=m6as+DoLAQUK8J/MjpboTqKdSWvx8Pu9LcX87l7Tq2e0rapqYgdeV45V+exkAXiMQR5qnodQpngWi1QCEZHQU319+7QF6L4rJCRCYgpWrjWQD0Nc0FmZqT8QoWK3VePuPIgHGT/PIc8ccY9ra0+9FVh56FHbT0ds0r3H/He5gx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4zXtwk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4zXtwk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAD0C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771456493;
	bh=xNyw8s1BFAlraiYN7qioae8P3kOXci1NlvYEraoBkuU=;
	h=To:Subject:From:Date:From;
	b=U4zXtwk8/pvi6qNoFiGTy4eH5/4UCxKOcK6rwQnNYnoMraxb1ugVpxLdqKV9nOQNh
	 CiJePHt52Qq+cj6btve3QtIMo9FE33EYtgVyQh3LJA1WLaRS4gYqe7xVAq7NGREdyM
	 ucI49Vy09Pu/JAOTLh2wpbmWWMuHh4DYZvZy+02BxfJEuyQu0Pg8jU7xarGF9wjefi
	 khHTsU01lmLsoQMTGtks6fXtCuIEH1KDZWQ9bUVs8RG5m+CYXlktpClRCWyIWdWZ1g
	 wdVUffG1kMEJojZRKvYKjqA2cXw3W5pYkiAYaLaCFf8wk/jkvLJ2WmihFULhl37yNI
	 /c0O9NsgP72zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6135E9A04D
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145649364.24181.12946346904002075797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d7d283ca71192d97b7bc527ddedd23bb85b0cefcffaff8a2cc0c41d32a74c1
Date: Wed, 18 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771456493
