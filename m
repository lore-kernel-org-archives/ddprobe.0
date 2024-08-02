Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D3217758
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722566754; cv=none; b=XmqB7MOrS2PIid5r1iVsIPqXvtBWdHceAA3oQxo1W9J6W5FYrDmX2AQtboRQomc9HmWtWTb652Jocr6RMDOg3TzC+/b7qaa+NEYDT6Myn0HNP85+NKiTIpYrCQrPuXdMNoi+8FYCzQrP8HV4gMDNe+tXIFM1UflISeZx5DIKtIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722566754; c=relaxed/simple;
	bh=tB46fxWMdrk0qS+95oJbl60sjSNb6qa4H3D2HqlUk1k=;
	h=To:Subject:From:Message-Id:Date; b=bCep53g+iMzKqnWxvOJ51SPvJtl5W/0hGEHCWwUQ9qWxIQkmQTGlMn1y+nKwlqLlbaIOKYuAOIMBqi5UTDMtFX2GcCVsxD5dRSyV9jfv8jC7JhI5qr3RCs/ApneRcHfk/BDIuImGc6HTwZnKni4MSdYG5Y7/e/SzAAnYqu3XXHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrJ0816L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrJ0816L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3812C32786
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722566753;
	bh=tB46fxWMdrk0qS+95oJbl60sjSNb6qa4H3D2HqlUk1k=;
	h=To:Subject:From:Date:From;
	b=YrJ0816L1oMlarRW4XbvnWB9mvjDAD8UgWUg8LtdJV2fbfV1jrbRiFLMmkz4oeI8r
	 x1XyG0edXCB/wajRY9RpeTZLcJ1zoF9fPmrIOi+MGvYKSlofXOFm5dA1ZozOgjYOke
	 6rOb31N+Pip2bmr1Hjo+z4HY0Y8phcJlIsgdqiwOZXFBLymNdlhP/PhmgHi9tLvMVM
	 yeYaNSYDu+gQJumDzCI7EGPSc2U/vx7U5xlr2Ehh/TLJ0CbrTM8Pi6tMmLtQDejVSK
	 O6UesUjtr3diIdN/uNV00zKLNYhMIa7NNEo5gidnkjYp9EW5k33K+/m0x3oBHhgSkg
	 g7j21KhPlUhYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DD6C3DA64
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172256675366.11287.8776741877551089018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc845af952794aa90dcedb4bb7bec43a156deccc2f3a61ca709f60967ff2ea7e
Date: Fri, 02 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722566753
