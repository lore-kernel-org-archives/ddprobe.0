Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238BC3815EB
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775678134; cv=none; b=tuy1UCnK00wpoRShUxkAPRdiaksYSFs4GEjseck8A3Ua7U/ta3cE/aCJfq7Tn71ngzzXdqHWM/kHhtDLwHr7dO8xGMdvKgsSzh46GT1eeFZFQd0Kav4kxe1uHl73FkdBW337D5F/CHYOFeiLChwbhZhxhf6MzyHh8KRs1q9RXpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775678134; c=relaxed/simple;
	bh=WZ1iDT9dOvy/ys7h4GaK+N0kdqOPUaGyKO42X7gVRoE=;
	h=To:Subject:From:Message-Id:Date; b=FMUySGj8IhDtiKVAtEZakNTf60SCv1pArtR9shIBp7+8YMPwRicCZWxN/Qq50OQOMuVWiXIm9xqJ6fI7gvSI2WP8k1MSesge10ZrRTwnbQeJt8LLpQeRZDGtB75GyfEegccqNw/nSXhJUTfP5310dyzG/QxV3suFEKDag+uDurk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFBNp8vO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFBNp8vO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E7DC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775678133;
	bh=WZ1iDT9dOvy/ys7h4GaK+N0kdqOPUaGyKO42X7gVRoE=;
	h=To:Subject:From:Date:From;
	b=RFBNp8vOeShuR5KTMEyd2MlJkdbXc2Pv5JshlF6Qwf4rQ9ssG2mAiA1VyyTKpTOZj
	 JJkcPQclqFko4zLitYpNfn5fpTUZKQdBVCZteDyoHwnnSz0A2Fs/x/gKZgpydqG9ae
	 tIVcsu9J9Ur55W66SImPoVGhYl2njdAf6ys9j2BlSapHTkGSapuFgW6IMUyD0gm0gn
	 F2yNHijwyYBneHYTW1LZa1W+3Txl1BGWhS+6i/HO5mWnSdJLSxAmKEozg7gWgt8UeW
	 xui+o5OvnyK5ATuYQsIjIS+DoqIa7OQs70AptD9w9ejbdledsVwWoTD5SzTXiNy0GM
	 wN/4MCR05ERQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB84310F9976
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567813369.24689.758156699464525938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00d9dbbefc17d759b8fbcc1a39365311deff96cbabb6ca6c8f4bc9e044dabf2
Date: Wed, 08 Apr 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775678133
