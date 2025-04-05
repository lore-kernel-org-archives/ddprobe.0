Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E524C74
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743840595; cv=none; b=NjAZZgHNvyc83cVW1tPuGKL8ou2TucyoSAEMGbZeYAh3pbUTkwFD4tuIzLbdHR33UXeKNpMxqfELG0Vi/JlseU6KBnw2cN2oBKhexfOMMS8i4RzMd/0+R3dQHld4MQ4dDa/tJuiUsPHyn5QmUIJPBaxlIewjJKnU+LHikQE+l9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743840595; c=relaxed/simple;
	bh=VTWCWoQlYel/VG6Bb9vdDz2Dcgu939dL8Czwl+hylC8=;
	h=To:Subject:From:Message-Id:Date; b=JB7p3yWotdxU/esS+KaRoTgWo6F93yB82rUj5uMmGdywzxasEHEq7bVJJ1DZZM6ymuXOE6g6BqflD0Sp9y87xtTTqAZkLuG9iIMEwM4niRQVEHRhhbTh2szM5dZ0tg19J+INkLvY46IOuUhPaI423/WIxy1Wz7p0TBCPPk7Yl1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oe6RDZwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oe6RDZwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B449AC4CEE8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743840593;
	bh=VTWCWoQlYel/VG6Bb9vdDz2Dcgu939dL8Czwl+hylC8=;
	h=To:Subject:From:Date:From;
	b=oe6RDZwkfbPrRn6HItvfLOyOWdCtphONKalDzytFRddgMvQrsAsNk85WWG0XUS9+P
	 gLdZ9LJLZKabesiUK77p4YGTks/dEV2aCJId2I/IK2FRh89oyqTD3q/dwAWVhIgjB6
	 wO9ubZOzMcxATyS7Xks6dXJu/HeH7AesH0U+6pCeSRVjZ/Ou6Ul/HQrbhHh4MLgaS3
	 DpJyW7MW2aMU4yq0QV8kWdRnIrtP+B3tLASlDkPdXmOyKMJogAr41xVxDbTbZz0ewQ
	 UcSGxS6OxMsCZv7/DH2OCSFXWSHir8JZvw8osz+bcIzcM6jtO/15gHRJRTIuE8GD7H
	 d7WWgXO/ONX3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEECC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384059358.30283.9620008303681575616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334a4052adc082a095a5208e435b474a619d4501e41e786213228f9f5c9c08ee
Date: Sat, 05 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743840593
