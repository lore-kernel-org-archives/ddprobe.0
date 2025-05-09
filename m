Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B4E8F64
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746749994; cv=none; b=iGTwzfNEmvmkNgOnsJJWKjbZR+xAGftCDfFn7CELxLOWMlU/I0ZR8PTqVn0TJ+DxttYCFaNQmeUTMr1LSparcCgXQ1r7RYqSQaJV/6osuRzBtpiAIX064FV29NAE26uqwh9nB5vbuVcuLHPb87qZ8aFl+yhqVrjqo0zT42pQVms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746749994; c=relaxed/simple;
	bh=NNWBBBCaP4AMenDgQbFsfjnG683lpMxc1i0F1xmQ2aw=;
	h=To:Subject:From:Message-Id:Date; b=MXswbRq5wxiCD7PVS2rJHXlTMi+DKXFoMV4CUYcaOHVCub3aBz9NZYV90WU6XDEo3j8RPS5cvrkUDp4Qs2auW74qcUJBXMZOrRsdLuqQsVCq1nnW+c4qsuKYrBiU0AjGyiSpOL2vSFiu1EAOqYpU+zGfIOWgUdQ6JPAjNtNcwUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYfsg685; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYfsg685"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746749993;
	bh=NNWBBBCaP4AMenDgQbFsfjnG683lpMxc1i0F1xmQ2aw=;
	h=To:Subject:From:Date:From;
	b=MYfsg685cMZMv8AyD4wKg5Kbw2ZeDVAjI1jGQE6cjYJLtpMm/1F639oi0+O61Ba4O
	 rAEe0IlGhMadoiAp4rq4nnK+3SieHNp+Bu1X/MsX5BKpd6I8ZYzgpA5SgUfhQF1B1B
	 5DDKeiDarIBe4SlKdAYrA77zCXoMxLZnfla9IoD9NO0pDS/pxgZ5wBiNFZvoCJ2I1b
	 sW7Q2mie/z4/ALUqpVJB9ZiOthjLY5udi9JyRBOJd2jPC5zaog9CqENglrqrcXTT07
	 jkome4AwMIsVa9olzvldE97zZyjmunslJwixU6yrf2rZY+6GHEZKrXfizB2cQE9waP
	 ldSvN/6M5AKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B2C3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674999359.18251.12621903768515413711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760bc4a2aad0d0651fd93f357ece7202ecda45b2ea59140dbf8f585a36bcf1ce
Date: Fri, 09 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746749993
