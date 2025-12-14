Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426263C38
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765727574; cv=none; b=LydEh6dl2imgbl0uNcQcnCAZEaxNiGYCmMACkqPCSqK7BAnfDkRLFL3eDRbogWjsj1Gk8yR/MYztb+A+jQkMa/UbCTgslyWFggI+JGtbXFD+8MR7jE2F0WvRStLUtV/kXM17y9CKUIViQNsytF6X0WL3owN9oCobQXCxrkmGn3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765727574; c=relaxed/simple;
	bh=fOUU5i+pVUamFkEd4WYvQPM8ye6k2vOsymlyuCNnSzE=;
	h=To:Subject:From:Message-Id:Date; b=pIiajyKjofQY67rEuBgMcQdNfG0DW9hlowiF9LjkTvfvTG2yJoFPq2zZ1j2InoB1fP2v8MNlXrwhR8dG4DNeXMGSvcABPs4YTFxtHI4NdOvVYTBzuCcNLu+oC42TlUs434WOmqgpf6fd+RHw4TGzm8Q+u9MYTOKBb+51UbzSDjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwftcP6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwftcP6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B282EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765727573;
	bh=fOUU5i+pVUamFkEd4WYvQPM8ye6k2vOsymlyuCNnSzE=;
	h=To:Subject:From:Date:From;
	b=RwftcP6BlM6anmehoDPGLAQ5TQnUv8PFjIqbuR6QiTXR2c4LZqVN067OV1p+Znt3v
	 z1WdWj8HbvR9wbpykg5c5+7daoNE6mHcNGTPH8Sq2Dvv0jtySmvYBZUa8+Dsj0i5ww
	 eUMQbwZ4WTEu67Qb/r677Ydxh5lRdyaxkIV2a9MwUwf5OUWa2AboFUMw3ifwV8y87G
	 JcwqOvEfE2+HWnnyPdF7eyJURH1sLN8gc5QM7duIUUEY9q34evBZueWgOgYhjDEo3v
	 mUDoVsS2WsRWJOWSdPTQKRdpDDwN2/Yja/mFiwniKOBj8Q2YNjjOzx+RW/W9txnxeS
	 basTweRv6NPYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F33DD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572757361.5639.17956358781586115210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fea0fcdba8f9e9d437c9b3986f4e072cf923a61e79dbd200bb04f6856e34e84
Date: Sun, 14 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765727573
