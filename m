Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310FB22FF37
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745578794; cv=none; b=sQNzkP0iuJWUmBLVnu69MSgzi8mjIz/BnlfQJjvE5YeO/tHQGEi3zSXNgxL/r7scOZPuWZz98qYm0EckdKs3GVPo6mlJdKb/YPnYqBOZDUcptxXXXkr368oqAXY2U9xOL1+tg+7ikJh5Dg52mroWfGol7w6yKpzrnFdKNd8vhBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745578794; c=relaxed/simple;
	bh=oaHlhUg6KLk9Qe5bt/DgH6uZCsAjqDZ4gzio8UnTsu8=;
	h=To:Subject:From:Message-Id:Date; b=IWDHBXsweAS2Od0AVsUqA2ZO/6vunrRuNDkGLKWKwz8CKMFDVdtX8dGdafjCEyoR5qvLUvmpydv02LO2AP2PWnPeRwGr/8Gkui9iGnQVaQ4LkaK8CtZV0o3jDXrqAsvVbg6cCiQlTnap3ZLznoUbMnKo+gVZxcuWVkrmU/1QrvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIu4KVSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIu4KVSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC7FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745578793;
	bh=oaHlhUg6KLk9Qe5bt/DgH6uZCsAjqDZ4gzio8UnTsu8=;
	h=To:Subject:From:Date:From;
	b=pIu4KVSqq9MEZFArX/TsK0Q5xA0K7FhD0kKn5+iNlKqRE5IgVQ7FPD8Wq2FycblBt
	 FX+RBqzQDz/B2fMDGXn4Bk9y7ZLgtBjcQp2T68DIgr5nOOON/R4z8+m/z0sFCZdkJY
	 n47fX02qOZesJ//GwDzrEXMtFPQVmfQTbxM3BXTcAVD4/yK/BJP3Nx+8jBMOr+YQje
	 vuMpRxrqh4w5NvY8+3z7w/AjvMX4cfCkctmnCTnc7kxsBRgIj2+9Gf1hIxNp+ZiBUc
	 cV+1FLH8guBbSDerZd8d22pqO5DsX54CaJWTRoTKoLtQ5LtLRCqz0Z1g1h+/YLo29/
	 eaABxux26AUsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E623C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557879357.8093.7645303727802635658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699de284a8711e604b549fc683b209ba23edd785b4b821c7e39a08700149a6a9
Date: Fri, 25 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745578793
