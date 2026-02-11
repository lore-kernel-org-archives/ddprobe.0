Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D537B35CBB6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770844493; cv=none; b=UUr6EaATMwGm6g5pcRh8tp3dIMHC25cWbq/RBcYRxlOxl29/QQbQvGRwHN5GcZjh6VYHSxPmE2EH71+Kvbg/h8hWNEm4Uf1XRG+lnapNfCvOOkrgwMZuj9s7wCSs6vfCuunPZiwe1346IBa/iZHCovs5eySZOmQRYfHBVmKcilE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770844493; c=relaxed/simple;
	bh=rrThGzmn6/snfg0gtsxqmDTVmbOlVbZcU7ChFW2wiQM=;
	h=To:Subject:From:Message-Id:Date; b=mZ2FupQj9R9LnIGe4pdtxStASTG2Bh0aYIHS4hc8GIfZ7JdVWvJd65tNz5k1uGk2KNi8Tl0YZkbsl2NReKKlM/8b78CKedMQVP2GtYbkmqxjFp5f7OrweqqJKgobxGSDKhLE60ALdA1ebZKgwmHK+EFo4G4IdWMq/qrqdAypzG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxSs5vfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxSs5vfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DA6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770844493;
	bh=rrThGzmn6/snfg0gtsxqmDTVmbOlVbZcU7ChFW2wiQM=;
	h=To:Subject:From:Date:From;
	b=fxSs5vfUd8TE98zGGeZg4iFY79LABWKzaqxzSS6/f7W10XPSJNrxv/6wWLGkgRkUe
	 YJwZ1euGrXZuGFqxoBay+R6SXB+9Q0P7uCwtbJZPdffQn2BFqkV+pye/hAHuYhT5Yo
	 8KPoqKLOjt4+O28fEMbJvHezyphNRO6sJ7uQbPQUw8ajkl7gY05b32YEcTEkcoAPNx
	 JzIb8RSwb0jpUtHNIHUXjQY9e4NtDKvRq6T9MOcrmB9XpPEQKobXOVgOMoslppiVlS
	 TsM9ew2UvEhTeSyJ1DOPOyzZ9LugR6nMbxKx7Q2zJMAiDtGSr5Vyx5Ld7ZyuaeivFm
	 jvuc3Gckk1yQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D7EECD6EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084449364.11987.14039032677956836384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df18104a5d99d8eb15e79d8988c2d26b3e6fc8f32b9a38fc1c774cbb55ee5928
Date: Wed, 11 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770844493
