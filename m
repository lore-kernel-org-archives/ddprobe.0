Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0FC318BA6
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780078954; cv=none; b=tY7WFI03Yent1+Yic41e+gL0EzcucHoKgpZNyjSqoE4r6GGFUjqRM5EVFk9AxJa7jZUvcR2waSMjWRDyQRFCetbfcw+Gznn/1ycekodEjkNjN3df4xQJUkiSPH8Pj8OqsEVVmLRsIrNBMUbu0URb6GfcHmDzxlpwNxfFctZeMCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780078954; c=relaxed/simple;
	bh=yXKRxSibINsOYRKLBhnjzIKBVI7lZim/bHh13ZuZ1Lc=;
	h=To:Subject:From:Message-Id:Date; b=sTwOWLYwgRndEW35PUN437QsPfkkORq7o5cP68o3sJmiYc8MEeGOJivWbaudg3nHZKk6EP8TcUtV+8W+8RlG/Bc/7F4FZWoxaQ42kmCQdhYhP4I4LLYViagkcwGX3SzMwYy7fLyug2apZO/WrjG6he9bVo5L/mkXct17kz5zlcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sb8mdtp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sb8mdtp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05F64C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780078954;
	bh=yXKRxSibINsOYRKLBhnjzIKBVI7lZim/bHh13ZuZ1Lc=;
	h=To:Subject:From:Date:From;
	b=sb8mdtp7XRArigFGlVytPmnIbrUG8MV18ORDDZejo9RkKDG2pGq2tgcJ9F5ZYvavh
	 PXufUtP0ujznBGWj7NKyENsj77I2TMkOMWZSqwckTaWD6JKr+UPNjqF2kaoYbQx+Lw
	 89562XL9W1skEdr31j2iMUKI9Bu0sagTkrCSlbPrb9TGwCZA15/CJLL5bFvyfcSKWw
	 coc/5eOFqW3i4yQguKhpbaPURIpRJ1b14mtPQOJIbrF8Wvrb076YZCY/M22FyM9OUa
	 bsYmucTbanfGEoVHa3bNpo/77yLKu6d/D+bgjfeQMXhlMsVdXmlDO5F6j3r6c5fXf+
	 kapN+HJ6/nmaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83CDCD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007895380.2594.17229232145535708336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d6307c59a2487ca0c4253ced272b20ca25e01ce3cb9111128ce537b186030e
Date: Fri, 29 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780078953
