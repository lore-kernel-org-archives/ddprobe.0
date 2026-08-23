Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA961DE8AE
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787519434; cv=none; b=pTrMNzH60xkUbJ/EsnYSBDFL21MR5PJaXqaRU6HiHN8Em2R//0Xor5UhnRyKxNr0a8HCAjP+iplOgr0f/eHk/675vc559hNETboYTQ0d2QLnO6kRu9usmrSmCruDuT/1yZyH/SHOVIvKkHBF5+IKT9yWsFD9o3wvWUb5gpeuEoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787519434; c=relaxed/simple;
	bh=rKJgSGDuLH6m653U53gmNqQ/1I2+zMI0M45Zmr3FBfk=;
	h=To:Subject:From:Message-Id:Date; b=GxlRMgRFWhLP1fD1kOcW8x5TPtv66Z4H2y7CygnpPJ4WbbcBenwlZtiP9Ep+zjBaHI9uhlDhY8YCPdGtJuc3iReofUlAzRN+7joMGvc0jSxhkn6xMBI45D/eUMGY2FKl64utDFQuOcSbpL4xE07W8P8omgtG/SDziVsqRZozxiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIZrMlQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIZrMlQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3D7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787519433;
	bh=rKJgSGDuLH6m653U53gmNqQ/1I2+zMI0M45Zmr3FBfk=;
	h=To:Subject:From:Date:From;
	b=aIZrMlQEN6b/LmagNzJFEs8aplY4m83y5QjD7aLmeFo8RB8x1xhpub8KDR480/vlh
	 tLgPkH7pbOiV0t+JVWpdEPnpgs+T0yEDJoKcdALP6uwu45YBMVBxhLn9C4tAuEXzzJ
	 5L3Z7vbhyEaLxq+1RCiMKx0xVpqweeTO10AjtM2NfUR01wORXaaAymg22VDzDPAiUI
	 WSxQD6oMjBFrC4kQTinDYfQ8q4YAom9g2xB4we70hxaXRbQblsjOPimFiM6Iz30no6
	 L1Bd5E53MVzCy9r6r2bUCNX2o7z8hqCsk5Oj54RWe+rXT3dKZE8pGdVXjSs+WFXgrD
	 9oJPTSIMlStKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47AC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751943368.30991.9018338438039443330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019896be30931d965d313c09c507a24f6a4e2c64dccfe130c8a75993ab9e0093
Date: Sun, 23 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787519433
