Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359B321CA0D
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779628354; cv=none; b=CWGQhgnWMlyTqCRha1Nq4/4tvB3QWfkFGfYUKTapS3xONBVzaE1ICDyrksbI36B3XlRlckCshW3xIaADMLD/QhNTeMDpB12Hbo7b9U0dtvzudvehfICg42CR2YLfuYqajuJQctW4c37MEOtMauo2UqJDgZwtLLvgoBczPZAgMtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779628354; c=relaxed/simple;
	bh=K1wXcDr09RwnegO54ESYDG5EHOIJk1tz9AQzWzchNWY=;
	h=To:Subject:From:Message-Id:Date; b=mtMl1qDGJJ9Dk0sT41ljB7BKR6nfWK0I+Z0gtdmTX1rw5XA3bvpp2h6KlyT5IzBUpkI48XFrBXFEOgR46hXLiftMGW0/u0HB597ahhrNsJ8ACtAiDl7Z3nShdPAnJ7Fmn2tf745ZjQbvsy8z+kNJ5K83YE61UfGmAftC5H8CY70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgSCSQX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgSCSQX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64E6C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779628353;
	bh=K1wXcDr09RwnegO54ESYDG5EHOIJk1tz9AQzWzchNWY=;
	h=To:Subject:From:Date:From;
	b=FgSCSQX2KpJE9f0Sy/HSD9cNUlk1K4glbPm5H3D4v2THTvoEDae1H0k5UJg6N2/Hr
	 4GULLXckIN3Dlwnl3SURwkkoBjGYRRIlB6DLsOE61Q8WlCVAoktycsQUYOmwVmjmLz
	 rI2esNtcOe1xfVA6/WG+zbhA8BcaGASjac5hVnRtxwwOBiIeGM7bSPGc2SwnBWlk+b
	 Fk+GU/Dnr34dYUK82CZSlNcSsiMMcE0mTfJo8riImrDNx1ZUz0CLl7g2FHLojeVrjs
	 yj5BKAsYQ9zJcZo0o4wHMNq/cmD7hHjUOpz0Fwm1+aMjYWXSLzi0gg6wd2NOyeT5K3
	 Cugo8gOus/AiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B68CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962835368.23351.939095630140404913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65737024432a8b4347aaf92c6b394a1a0e159c0c572b321f4db52950a119aad2
Date: Sun, 24 May 2026 13:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779628353
