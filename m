Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DF82BE035
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762921794; cv=none; b=ub+ZgkOsy9UDd5QnrWsIdh3NHUkXrmNydESRfmomLCq9Pvs2WsRWwOVtUEqP5ntQb/8n07DQmSOQT5Z7PSlHylfxNpyXIie9basw60JSmW9nvfQLQdHepmwoeUt2b4BxyD0FLW7QbrbtPmer3hoTjxg1L2t948cMSrs2mmUdZPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762921794; c=relaxed/simple;
	bh=E1ky9bVCt4hSzsmu4acCPfPjSlRA8KCnUqrSfl92yZU=;
	h=To:Subject:From:Message-Id:Date; b=KPGT6UIlbVEzap9UrKRWjJ3lTOdJJfBm9Kv546tIw3xHUc+SWPXW7CRgQLdVYvaheCzsjcY5GZOad/ngE8OQPGhPKWVwrbPo7xo8VapULYCaiceHif+bafQZRpK2zXHv1fqXsspTRGWcVRS8b7yETzXq2ad6wCFltfRK3V2IH4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcKXdstg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcKXdstg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFDEC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762921793;
	bh=E1ky9bVCt4hSzsmu4acCPfPjSlRA8KCnUqrSfl92yZU=;
	h=To:Subject:From:Date:From;
	b=DcKXdstgaue9xpmTANVwI0QlDiCC410gsWYfm3AVUG1epVh435OuFUSjFU9e3dmPd
	 5qas5zSdI/TDICz8nIlSdd8wgjYgKS/1AIh9OkDm3B1GpWUCyC+Pc0DcoNpQOL/gut
	 asWMJlrzbwzzbu2cMP28dx+mTIYCtl99cWVCRijgPGgjYSuOUOvbAiayW0KsIsy8fT
	 dewJh//M7fXXVvbEK5bH7H2U7BQHz9mDxRL/mZUSnzGaLb/dn30LvUiYHUYxuWYz7b
	 RiWi0w1sFQfePkB2C/jb3hbYAJMtdLOmbJMtG+I9hD0BLSkltup9+Pg5LoqKCf3wR1
	 loV118mmSKE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D215CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292179363.30635.428214548772789585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9caff7922b47d0fe91d7a10a422dd0b102ba5b77c278f1240ac59427477761
Date: Wed, 12 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762921793
