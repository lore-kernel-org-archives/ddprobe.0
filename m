Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5171CAD23
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720283783; cv=none; b=CHREIa6Pf5v2eIue2SPlaqnp2/S7mvpfwDS8NYsUrozD6rU9SdF+y85dkG7kljbWXbfbXYGlPq+FoQTQxWnsKP1md3oFOfhRNYYH0yEcWuXMJDmonsEb9TFnEtW8m20/VQtXerrDH7WC15snBaqOwJyPRT/PIfsLAHrxlnt9OU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720283783; c=relaxed/simple;
	bh=fj3BHJv3soYCkZ6LI0Bun2EmIps5FKIHgOgOWO1mHOg=;
	h=To:Subject:From:Message-Id:Date; b=ggmoonOpapdguivPR0UjVNWWhfOtlT2nsv8NvUAJ7Yyo4sSUddy6yeGfo2N1/HL7vuIO8MekOEPqD4KDV+p2aW7FmKsDNlL5DSFTpdLKWuiTiSspt9mkI2EW+XOafKUZkMUhdDV7Kj4RVDjJN64NFPVEPeSA1O3gOwgORXIOfbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcPXZCHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcPXZCHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC332C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720283782;
	bh=fj3BHJv3soYCkZ6LI0Bun2EmIps5FKIHgOgOWO1mHOg=;
	h=To:Subject:From:Date:From;
	b=CcPXZCHxSbNZ5adGCkGketnkvbsBMe4B+4Sd0y3LQ2wjzY8Y4HRM89AUMcT+E3xgq
	 G4/ULy+lHmuf/dOyb78QD1BKGgKF5qo2wSMMWAXlcAsR6v6GsblOvibohbe79tyngB
	 b05AejhsLa3xd6TLvFVlCQv+S2q9ZOvxP5/nc72QPUmteTUABKV0A/9xKGgSTOXKEl
	 csBeQsSVmIuojQyUCF7w5/Um+YN/LhkFq9OCCXgpe3YqHJDA+NJYodkzf8gE70J4GO
	 u0+xReU996QNaS1hkUYWi6EeOd+/v4iNsvzDkR2xubOw3gq4hlHXdA1EYbooLmh1o7
	 VLrvFcycGQemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB91AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028378279.30978.13909721747448179371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01662eb612ac09e00505c55e9d34ae1b24de3b547b3d033a15f55bb37b8e4970
Date: Sat, 06 Jul 2024 16:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720283782
