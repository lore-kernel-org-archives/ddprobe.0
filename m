Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DE13612DB
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787329834; cv=none; b=hBCEGrWQ4J5oX4dwxKRRWxHP6SAAIX0+pvFjKIvRYrhIRI/Z4RPCutsYK+P8UpYNqFCWhxm+JuhmsUs3ADCp418wtad+RJBnHVq5cokPfYVpb9aIJaS3EHParpqWww8JAtuV1SNnKqnNbFO5wHLo+NQulaAb4hUQXuVVKaJZETI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787329834; c=relaxed/simple;
	bh=gbVgZKDvML/5gk1Y88u1FF0suy7ltZhri/oCB+pR0TM=;
	h=To:Subject:From:Message-Id:Date; b=PEvYhViGSAB4l5RP/lGAJoKRb7Hgy/UCw+LxMkBSQlFKf+IEs8sjc2gouufyGEFIun7vcwEw+DaOqCHG+MZ+InO800zY4hTk/1cQQY6MBvG015M9/MzmBTutwi+ipEFpebiFZ67S7edYkABgojaPJlE1Im+8bcCdhiX9XSj9Qp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqsF5z9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqsF5z9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85D7C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787329833;
	bh=gbVgZKDvML/5gk1Y88u1FF0suy7ltZhri/oCB+pR0TM=;
	h=To:Subject:From:Date:From;
	b=AqsF5z9eLc2g14Py+bnE2VvXt3++jh9ujRkKSWZIcsI4YlpzQzSsxfpsVBeRToR97
	 I6VkJos81MsDOL70RYnb7Q9jVqJojPTjYGyY9EKt2ECC6GPP8mICN6EQaQeuMde+vP
	 1d1q0DF+EEg/pFunuKShYM4FW/0LjECSMPfv7wD7yXjlt7x+rPX+FP8jfcrQqSDmEz
	 OmKpaF1Xvrn54I3W64E/GepvvWnWkiTT5E9URtE+V0PDZUKZCezeJWXeywDXaW7vfe
	 0JfoZlsBMhyYt/C3laFxDnp9jcXeS7cpAeopqE1U1nAQwHucFoaOn7+m9tVDZ+p/SB
	 BfllBdS2VGHBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A6CC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732983372.15023.288115946705999893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0387b8ffda74fa11d35961f294ced14d1ac82e50e2964610de23c99a23ba10e5
Date: Fri, 21 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787329833
