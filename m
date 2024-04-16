Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F66112AAE7
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713272963; cv=none; b=iuWtvUZ3pl1VEha5F2S4AaCKq6qSKOpN16GUwKcDKsj/W4+8LrTmt0djdSkqPjcjAu1avADvk6yGKtYSSRfoG978BXYCUso/0Pg2sWcPT8HKC7nSOGlumpLiEQ6Sw7RoI1omJBnz49Kpd5BY4XLkjKKpikkfZ6B6Buqt4pjdRj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713272963; c=relaxed/simple;
	bh=asOpz6P/YQKOOsYWL0SmphIZrctgOOlkkoh57rV8Qsg=;
	h=To:Subject:From:Message-Id:Date; b=OYSwsjrGDVdrHVmpG38WvyQkbFRTGX9vMrHuE5fQORT1OoSVJI+Z/6+F0U48nfRXmuCMc2Xa+KVRmB1er2VewLjO0UGpT9Dv7Q6efOwzL+5zEw17T3suB7GkFmww7/8wscqLcaFof/4MGXbTXtPzU0CbVwsYyK/iyIzC0ej52CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIGtB5X4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIGtB5X4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DEDC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713272962;
	bh=asOpz6P/YQKOOsYWL0SmphIZrctgOOlkkoh57rV8Qsg=;
	h=To:Subject:From:Date:From;
	b=YIGtB5X4waYMOvBYbomZzt5iFLj2DKX4Vl9DmfzSlcIcX6FayjAjPkA5RfnQyw0TL
	 0KYwjISoYrMRzuA/8HDZDYY+kZVr4VF2lVg5A7BRn0D1CfTPTq/FPZgBN/J+N4Uv2Y
	 e/hAgm32IW3xigHnTkLPsQ2dgTXoKCqDKIJ4JsyIgfA0jvkkAY53kfF2QjkV0Ikc5+
	 +9w/W3zhu+pF9eLw0QKg/qOeNC5jB/Tw4GEhkDqdX4NbK9Ffg0/H3Zsi1tVs1HSfMQ
	 T7JWRs50oO6sTplHYyznMHdAshE1hDFSPK1DK2l6cIN5TtQzGANeaKHsUtMFgSuZdb
	 uqjTSayG0Eirg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB457C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327296281.5127.16192658405518346123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44e627cb7095bc8fa89528ed6bdccb4a0c4b87cbb1236a3d9b340260e385232
Date: Tue, 16 Apr 2024 13:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713272962
