Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4237E1DFD8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737239754; cv=none; b=Gdvw+JjaduEDDoSWV/AZvKyiMknmeMFrdmbWhfw3CNSST/gdzKNSnd3R9gCFYlyamexnOS0OuzcvtO68GYXiYOlQqX6R/hVnBDkRU/3eJ8AfG9xxl2HayL6Hf03HkHPrFSla97BjSfs25gqguL+8TCgWnIchvdOMI+8+N3X4CLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737239754; c=relaxed/simple;
	bh=kig/haBXyaGmYzDAW16a/FnK51HekA0THTAV2fP3Xho=;
	h=To:Subject:From:Message-Id:Date; b=YBcKJoEX+Z5ATGQumqvX/M2TOERP2pxFDzF0HuEGjpPQ0n735hkBX3V6GeJG1mkxvughhVeshiijjf/vG+s+Ds7gQvGtcAlUnIfYyoZ80eEauzHjVk7iie/A6VHIruFT/uAuzdaYo1KtXM3ax9f8OfpyUY7EzRII/ed8/TY/zAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2vnP1q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2vnP1q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3902C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737239753;
	bh=kig/haBXyaGmYzDAW16a/FnK51HekA0THTAV2fP3Xho=;
	h=To:Subject:From:Date:From;
	b=T2vnP1q79Rw/R3xhWWBJYkgmo1EnJfLMNOIez0xEJ2GSegNlyyUSMQhx3KBZbzMwN
	 J56lEspYcFkbYo/Rq65RNQsNENUYSKim7kVvjaJN5+KPg8rhnBzxVlKPzeUWoYTxwB
	 TP9GJQKUp0PF8f0gNY0px7nrmIAvF+uke+3GdDnI5oqt5l89OgOyBtSDIw1EYX8o/l
	 ICzgVceRVSbe2wVkQdp4tJmZN8Z0sJNmLVBpmQsH5+QTuozm5BlRXZOFnN2jJDSDov
	 HzV8Ed6NbNA9+zv04g41ZLeElrFifg9qmfg97Q+nqvCVyO5L4TQCTathENuU9f8Bmz
	 EmYDciWREEHHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E416C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723975362.6620.10467845725485585615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f835b2ad9b2f0087317ab74063c670e5a73fd5abd4d800243fee7869cfbb412
Date: Sat, 18 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737239753
