Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BE1DF5C
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746348594; cv=none; b=Yf8BOGAo06ZuG2Gzul0Nfd0Ur03G3ZXPyxmGowTVaW9K9QM5+WWeDb5NQwfIsKDm5o9y9uVYyOPeXyHEYCIcm1hV9G2dMMgRdalhOkX5s5RTEA22A9KbPeoxXgvZcmSJorQu/CRxl+wJz0UXY5DWFg+TDIt6/niViy4ysnOIdpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746348594; c=relaxed/simple;
	bh=nAoxvHDh7k5iyhHqqf8wyfYPK8eFx5eCj7Y4/kuC150=;
	h=To:Subject:From:Message-Id:Date; b=kFBPjJ9UCTP8ye2CJB3TNYisSuFu6cUGCIuwh7zV26DL2YOx+suml6HuOPy0ziKsf79joyuCZ4y5Ji41zHIewWGCzr0i0UB9MbR26a+bw26jeJ90yJXd79WprGOdt49ogPh50K1BIdh9p59vV1EvZ7RFzNqZ1tO0Y4ulTD7IafM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pjko3SVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pjko3SVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A290FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746348593;
	bh=nAoxvHDh7k5iyhHqqf8wyfYPK8eFx5eCj7Y4/kuC150=;
	h=To:Subject:From:Date:From;
	b=Pjko3SVQfe+xJkiBBhQi/VCeG9mlnFBSd8BVyWjUe/oUuRejOgkkMTORDyweo5evL
	 bB9Fxxhvh9gmHNWNCmeEIoWyxhDkdHvFaDUqG979/PRs38LtqryhrU8BnUspmrKVxN
	 V4MFQeisiOr3v1BPtJOtUWjJZK21uPWK6FLxQ4NgP4gKZjmEJ8/3IVYD9yfRp+wbjW
	 DuJuOdqslnkrNuGHG7IDIn2FEeTx13n2eKWdal0XQnC1IME1pxtw6uHPET8uYb7HF/
	 3bl4WxGb59STSYVe5AfjkHmDEaYN0bcpUDYOkQ/H5zLWOrPTOG5FRD6NzrdeOV+CpK
	 tHa93/DaIX2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E55C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634859357.11884.3408619876473158746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adebafcfe1262ab66cea80e8e302c47862f2373cb129534a046071c729634518
Date: Sun, 04 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746348593
