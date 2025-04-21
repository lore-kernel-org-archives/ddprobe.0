Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29E259C8B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745240394; cv=none; b=UdFeK3om3pUqR9F3IdG1K4mie90iHvD6TniV8cyKfA6bKm7noAmGP9E+ktbj9A+/RnZYtqDchsnqRaljug/+rku2tSJ4GymSOLrNYA8YDKJRJGaYtP8yuM/D0cnsBG8AIuy7bdI25Ye7DlZU8XKZAbgiMnFSX+slp4Ont1EJAPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745240394; c=relaxed/simple;
	bh=q9ZOTBPp2ypGpN6BbwKYCZ9R8dWasm1ZyuNb+ek0R2I=;
	h=To:Subject:From:Message-Id:Date; b=Vo+dFpLS4GXGHb3qefu5/2fv1LNP0sLUV5sN0peBlF+tRjpf34tPnx8vGJeJd5Ubo1MvfOrCgGNtShiW9ER2QwD2jVcZvQsioaLUpAesUDbl2s1AKw+EDcZXYRYBpAcse662F/kOZsbFhUxk9hUxY3nrDOs9f1GJri3dEQjfLPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfbT3ONi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfbT3ONi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF469C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745240393;
	bh=q9ZOTBPp2ypGpN6BbwKYCZ9R8dWasm1ZyuNb+ek0R2I=;
	h=To:Subject:From:Date:From;
	b=pfbT3ONiTUQ2UN/KlMBzl4A8BIBRQseW3Fs7aqrjzt2MMbOcCnF48Dy/KtolCONTp
	 kEyZ0spKrwD0JTiaSDcvA6/pg/QRpUmqlF2dvHSRbrKutepQ/ND2f3u5m1KZP2NU/R
	 ulswWQsMmsyXCZmOFdFgKcoqPCPlqCpOkBNbQEzbr6h7RK6jwJGNWJdEMwvH56iP4s
	 HtEB+w302S2jKLFx0fWsJ2FnSnRL050FLKn6b4MRaTogLfDJbIIxKvmwxxTigIevaW
	 +JSnACUAjTLsYBchf8QT18fmB51Kt86efWwQ72q77zDTuXA5gfXbpmdQf6himABWRY
	 KCw0MNihP8rQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D4C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524039360.3669.7316821331855960105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdacee945da750d8eab232c9975cf11ee8e1a089e9ac3c3e910e6e3a5487c86c
Date: Mon, 21 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745240393
