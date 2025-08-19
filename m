Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1073E23E34C
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755647394; cv=none; b=USX9CKFNz+scShLvUKEIHGVRYlS8MDoeC6Hhg8vRZIQrMmIiURf+Hr1l1FYQb232jW3CIt5tM5moWG+79UG/NMy8IuI4SjqteW260JnoXBRWHO9IvONuhSO0ApADYnKgKb7QT6JVxliZerILTrkm0lhqRHiEoYTk/JwP1lkjJr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755647394; c=relaxed/simple;
	bh=mjI44uFAfHK9ActuWEjhjAsdfcVcjd07yh2iwoHE/dQ=;
	h=To:Subject:From:Message-Id:Date; b=J+YtCqzK/q0f9sd0fvOag+yAjMOItJaUT9BC+wn+0MPDYixiNrn+sCic17S/tk7Kxm4EF9eJgpykYqUyVWx2TGC4zr+OT4xWjP2POm/kEW37E7x9rx1PV9nsh+Za7L5PGoRzv1j5WueHX28+PPeVvDyvxNUuuibMfkFknWy3+NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOyfpqJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOyfpqJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBD7C113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755647393;
	bh=mjI44uFAfHK9ActuWEjhjAsdfcVcjd07yh2iwoHE/dQ=;
	h=To:Subject:From:Date:From;
	b=lOyfpqJyKtxSnQLtlzYfHjOSleUyZZkyK+eoZdDwp/EFXFeXk9pPgKguCxNi49Dlj
	 PLyLUwkEurrETtaROC0p/SdVxOhXVy5gCcChlFjlevcZUb+HPFYgeQEUt1gPJxpgIi
	 VFvNWaAA0jelBlsrTVSJqpbAPW6uwhmNLXc3KsPrEL0pYvpOyCDYwXgOs9zobyKwJs
	 RXVhuuKa3eKDydJpb3CK+JEeE/b2IrUp8LIa0sdaCatV+ILmKDk9iTNu24ug+x1gCF
	 i5fK04rR7ojWnKlCnDtF2dBDjCEiWXsmHPfYs1fdHIDiNBCG6WfBehTPoHS7jtjRo1
	 aWP1LWULW90aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC34CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564739357.28773.3951769621715263250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d856e7d1411ea6d8477a9ef50d9f47fec10acf2f3fbcde88ed9c68e0370f4b6d
Date: Tue, 19 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755647393
