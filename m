Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A9E13D260
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719484463; cv=none; b=HyAQdAuaLhnKhsl6MpNCwIyT4w9xoRrCkKfftGRn1lhkFOsD1SCR9WnNRLEkPgz6loN5eY9DYnNhrWkUL6x/kLYsocYGuD2G70iXO4+kaHv91Ko5ux1Pp8GoRqZiSv/hhJ74yZjasOkElLvCFxZeY9mUDLOM4/hcKdrzpR9XBwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719484463; c=relaxed/simple;
	bh=Vo3ihOf+bHMAETlhkx7TkXzdbIlSdcARpp7tgJXAnLA=;
	h=To:Subject:From:Message-Id:Date; b=ca09izDfTEGYVFcQSofjZJV/Q4NByACOmmS3UEPKUKzkVyzkgi37oghYS6IgOltbKSWvYsI4zdxjzO3iuIwJ23Yxm7W0JRiNBdzaWHRnbU4RE5lceAEJbmIt3KsYg+ddaAdZzbRRZRo31wJuWxZxz/t2pmSsXK1VJEMbCB06gL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbeoKXG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbeoKXG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF5FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719484462;
	bh=Vo3ihOf+bHMAETlhkx7TkXzdbIlSdcARpp7tgJXAnLA=;
	h=To:Subject:From:Date:From;
	b=QbeoKXG83+MLGi7CtgNGdiGs2g9Fz/CtnJW0sZrqkgGINFvtUI8TtEYbZc7NgvFM9
	 KRbeqTusDNY3LSXYpkvF6EyA3m+tL8LJEHoDcSy2g0SIxsrT+5u3JOIWE6QHHz958l
	 oD0GYDWWRAJRlG5VUB7PaDsmOcvCOzaRLKQ1NVT891ZXTNmz5bAvfQEIdiQ/T2i3pj
	 MLYEClHPZTC2QW8T3Ou1sawoCq9KTOYRedF8LTCq6hIXHCvSaJz4RJXpwmbEutwPBj
	 dqRjAw4PLP157BkN/KNxuGjYXsOkOD9m9Dp04qXfTlFoaZWAQLacOAFqYdD0GA/W7v
	 NB7lEy+NixYFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E0BC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948446278.20628.9288855183415736663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83cb7aafa8a1d6f3d1cc48f47c7b4a197d943ce55dcfc48584b279a154d7dd99
Date: Thu, 27 Jun 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719484462
