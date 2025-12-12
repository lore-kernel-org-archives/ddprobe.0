Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F3E240604
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765516974; cv=none; b=rVrDI2iMPrd4qBOgrXlu/FP0D79maqWFkli0TTxT4iG9xvwO5TLnPIilSNa0lKNH4V07l/dP8MV1NBpmZwqpJtI4IEWxrjEIJP9+SjWNfC4U8vRu76rrle3co0YGIC6gU38dYWKJvx0egsX/taJkv4bfQnvbP4d2/J13St9lR0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765516974; c=relaxed/simple;
	bh=bAqUriKL/JroEuWbD7jbRp+ekt5pb4cqleyQ+kp6pls=;
	h=To:Subject:From:Message-Id:Date; b=kWC91Y99DUaeV2GM42JvyFIJQ6Gy6xeOm4Y/iAq1azBIUkiaijO3S0cCNsIbFgSb2Uvqovl0ngEKdraDcEAvrEYMkm7d6GCAbyR9JxK2KjCasSglRIvKyNkkxpF3df08mk0yMeG/URBm3tUT0zvkot7koeRf5W2U13SoI5EfYlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skQ7vn/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skQ7vn/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1239C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765516973;
	bh=bAqUriKL/JroEuWbD7jbRp+ekt5pb4cqleyQ+kp6pls=;
	h=To:Subject:From:Date:From;
	b=skQ7vn/Mxm2QD64rgFawabMHR/vdtoN/OcKDvic4GBiwWfB5ae0XDCv/XomUurxsZ
	 8xRwTVnK4m370+otz9Pls3R7wwFUnWi4KqNUYV9Uq9LXhE7Vulfz2Q7QO4RahRO7Bx
	 zpnZOayT8nRcQ2kXr1ugASHeZtzJBAJClMWkl7vHXf5HV/I0D2IVeX1HzRhE+8S2F2
	 /u5nnIlH1fu0t/5U0lH9hDqUHua1N6h0RGVvqe/S7uvdKujgeVFRSpCoyYRa/9qVZO
	 6sXW7F+V75Lv66oNI0Pe0BhACJhAOGk0NL9uYAxQRs01/Tw/hoLSdnMEyMCRa9YBii
	 M2WIt47l0i6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A816CD4336B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551697362.21953.9815290310523341395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cc3548d7aa30b7c2a08bbdf26a787f6964a93fe19203dd08a6fb785e54a3f8
Date: Fri, 12 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765516973
