Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA0939FFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717790243; cv=none; b=mzl6n3HDHBdar3TDpTLU+TT3ZZ1I+UxWX7b5/6lASRlfhh2n3r1tgn1/mslHZbt1oYcxFeCzTz3Isz3RM8P7owjnK9OkowagwLNxJmJTf2XTimHn9TjHJ+plFIVV40slJeOQTCHolYg6cbsw845uaQQnjeFjqZz2y0RwEIv/DHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717790243; c=relaxed/simple;
	bh=3J40QRPOol6Hw6aACiDLLhoNwiqDdrFwXW/29RPaNyQ=;
	h=To:Subject:From:Message-Id:Date; b=mN3IDsW4xFLT98KQtyqb7bJwD0+sMePGa+Vk3hBXh/sFxmBd6bO3fHuAkKDdeoblkWOwdeljIQbcv1vER6FWLTBYvZNpT7KF4GpPTX+oOpmrphyWZ1Y6dYSxVFznSzirMEvDGhxGp2UBpMV4NIwIF9+KizS6kndLD1xPw9TQ4ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp7HTpQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp7HTpQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BF2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717790242;
	bh=3J40QRPOol6Hw6aACiDLLhoNwiqDdrFwXW/29RPaNyQ=;
	h=To:Subject:From:Date:From;
	b=Vp7HTpQRVEea0Q6OPCBYSFljPBCC17yGwj3SGFo2Tt6uJa6MogL4GAdCyqT8OmmgX
	 x5961cdgct5PLmFyfzKP8KziMx7dNwb3Imd0WsFr02oeT6eOZTqmW06afwFj30gWJ8
	 seUkEplzvQif5Ss6N0wtnS7AffE6L6SMb5rUDkWk9BFVE0hv/3/l3cb6Lejm090dtb
	 ABC67nn6Ff+u8cD0+vVRUkrJ9aecOZgBM2UMFaeFgV8KH+vepCqJDlwD3cZ+adH71D
	 XM8jFgHoK/ASz3SR+jVfn9eOYCgpSuYdmqA3yhgyYEfmF8ht0rgYpmeILiXGuw9OkP
	 qQKQMpw2K+Prw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5174C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779024279.28479.12834217679352671494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21497f2436a85e2a37d4f683e397411eb7245d158f3263bb4c27b70619745883
Date: Fri, 07 Jun 2024 19:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717790242
