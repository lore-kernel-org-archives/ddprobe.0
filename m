Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A8C265606
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774453494; cv=none; b=EAkvtg6n33h5BpkOBicHvqnruErf+8ePFamppEMdMr7UIjTssVs55OJsna40FiYA1BErv4jsXa8oYscOf3kGXyYZuy0WZYqrlmnl1OkwqJC+9hIKmDrXAyaTJxVIszWF3DePSGlXbbPlt+bazCEDMghP/duzudNH6ay7HMCR+Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774453494; c=relaxed/simple;
	bh=pZtjtvUt/qtv+KS4RTLhQu0pCjKnqww8y4ewK7L1BDw=;
	h=To:Subject:From:Message-Id:Date; b=KTvpkBiIQ6jndLuQzEMaLYfl/dn1QW7ZM4qYCGUrhL5Gw5YKyEc5ldo37ngOQmT9LPeMMXtEd45m/ExkybotvecKi2uStXbaZpwWPPeJYycX8dewElswoNTBH2TbhtNFbCQ5yJTz4ZcthLKBlfzdfJ75zkOS3+VusL3FzilQLXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8Qolo9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8Qolo9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2C6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774453493;
	bh=pZtjtvUt/qtv+KS4RTLhQu0pCjKnqww8y4ewK7L1BDw=;
	h=To:Subject:From:Date:From;
	b=G8Qolo9J6SdrlteRS/BdzaDu+Y+j0MdjzzvjisrCNLHdh0mOiHYs5AP+BhniIfyG+
	 M3l8dS73n1e9L+Ud8TtBVgIjNnW6jXJs4odPEAR8lIq6Ep0qSZck1ZqUh+K8EOI/3P
	 cJbJrlCcLYwcWYhERGJpcaGk478LYESKhjN7p7eOdefEnY7gAWYscmt0/I/2FhQrqx
	 e07JwqqdsMb9uorNzAY10ivccuprqG2y0XopLLLrZ8KRiCuqOsZJVgdKtgBpQISEUY
	 NtFlyArcnFb48IDz2jNSU2O+TrG/0HcLN8yevKgX20ZdHvjuBLaYMelgl7/SnXfNNp
	 v3g3ROVOB85ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94320109C02F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445349359.31263.18180477034036551190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bb1d75c3fee1f491792c8979a743d4ad347ae2317a19ac4799ce19f84632d2
Date: Wed, 25 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774453493
