Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E5E2512C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744901394; cv=none; b=KN0T9nx4fNW7Oj06MV+YvgEN614XeIY52UStgf5KjenH1Sjujak6kE4TVXBSMghEKEMy7ghtbZ025WQmrDT8ItFQjQmWZXzP8KTUH7bv+XUA8FNL2LsEu/j4fjol0Ts9AAs/9/nFBbPb1tbn9r/XQMTGZmwIDOCcGMXP4gvRP14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744901394; c=relaxed/simple;
	bh=eDAaFVZEn37+xr0Zps6ZPDbIT/4FGAy9YZymXRTESD0=;
	h=To:Subject:From:Message-Id:Date; b=M00AUe1MZHpYfSreSdp0uroDdFluCJp+42hE/G955JMVsAuNEPBsei9loHk1Q4XFpI1m2GP5C69S+UAflH6Vgbb1jTaKolDtxHxWbEls9Z174f88ZPt5MgZfk9gAy7zBnk/kmvfEIjWaDbT5eJg3lf4jF94t/87fAQRphl4kbYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M843zlOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M843zlOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8C0C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744901393;
	bh=eDAaFVZEn37+xr0Zps6ZPDbIT/4FGAy9YZymXRTESD0=;
	h=To:Subject:From:Date:From;
	b=M843zlOAa0XVlN+ewLudIWN78nzhXxLygxipZm3iU0jDrVTEXA0R8hnQXtvjw/cv7
	 ecITZIrFQGQXuH08/RyfYAta74T4w9DwlBVzr5CEUtkUUMvyA/RTH8cPy2yOSxMsil
	 32h7KDbZtxytQIhS1cu31F+1f6o6RkpliLAcajBp9SQFuC/hw2uSZGrQPa/V4okVmL
	 4xQIwuAhlTvHMJ6qDk5dSl1t7pzo55Se6SsP+T0sTcsIzmu7pbnB9Ir7ysWYZqawQt
	 9R4dXKNJ1hRPDQ/T1MlTt/AEvCOlUoAMUhu7wjRcC4nbSLA2Jn74KeUZ7Tc/pTlTFo
	 AtSZ2S35Gv1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7C2C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490139362.2544.6873719688893247450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252e333257a9dde64f9f5c0048e569a60f6ce0e0f87b9b06543746acac5ec44c
Date: Thu, 17 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744901393
