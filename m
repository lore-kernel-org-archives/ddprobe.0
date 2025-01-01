Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A968827
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735774554; cv=none; b=At5iUeD9vLGjHfUC8JWchx30teOTMUQrhkCwE+VWGFfvB21gfsRGew9A9IbYEy7+ebMyO5lzo7SRPqarXZxAI6LAqJdkvvZ0d1SvUGyJFPh/ezcYnneesUZyE2wrXOuoQknlJRWkIBBgi9be+EHXG7orWQfvuRPYQIGYLQsjlQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735774554; c=relaxed/simple;
	bh=2KgJ4fjuegvlPMi6pxsdkinqx0zIT0Qc7lCadciex6k=;
	h=To:Subject:From:Message-Id:Date; b=gxPxYPv0eT2viM67hkH+7c43FJGIsrZApWpMoeHHW+TiVtarsHvbhzghefDTDGs4NpYC4/kLl11l5anWB7sozoPfGpblgog+hqXlZfuqxg7nj8E1R4Bx7VsGEEbNvj5XrGT634D9Ld6RP0nYSWlLQoTUSIrIrQyg5k/s0DRJ0+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8Oln72B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8Oln72B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E57C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735774553;
	bh=2KgJ4fjuegvlPMi6pxsdkinqx0zIT0Qc7lCadciex6k=;
	h=To:Subject:From:Date:From;
	b=Q8Oln72BtHWIiGRKmVk6Q/U8/2UXzOHJHlVXh768hdxcnh8xGJTkRBQ5VRGXPyahO
	 9yU2SpcXUqXCkSjXJZ67NF9Pc3kTbvNICey/fTyb8kiqlO9K/9Y6Th6EFmHkVgPI0i
	 gCUzBPhg3hV/QZYtUfvWzZu19WSOOVsFGhBAjFAikS0EvOX1AU7JBQLQGZ2GwXmC2t
	 E/QuHpO6HEebNC/6ruV0qPgNMOFXiteS9kkle18JDGLsR1FUGuMAWOPhPEMCfE9KIS
	 6jzUydOMfkSsBXYJ3yiqT8LfUPXwiVLbEjqslWM9MMc9f4+jv+9jzgT6NdUnHP6nn1
	 OLkoCGAc1P5Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F3E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577455357.22288.17228600499069583907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b1125ac09e8c6661644b06dedb3057165a8c88f8d3ff229b9e6cc1aea0fb5f1
Date: Wed, 01 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735774553
