Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B80F6F073
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733888154; cv=none; b=cfsGerJleYjfESY1uPmAk2phonkJdsFFsq5zMnfWTUiq2hkHnZ1Z6OROvWizyEchaYZ+OtmLQ0XA3GOBO/FtGcr9UJyhNzCR7W4Erea1KaL+Y755OxYeDDkJoV7KqkzZPwq5/AkUe4oeVtaJQZS3931cCLA31gGcsKbxeJGCVjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733888154; c=relaxed/simple;
	bh=7OASVhOXiYXpOYYw8Z24zA3TxKJkRemR3CLpo6sMt9I=;
	h=To:Subject:From:Message-Id:Date; b=tIQQPu9+xeReKuALMxDWoQWp5XLwMUVVkx6I8Hb5qou88DLNPzal70rZZmBDzw9KtjRSyKEN2Gy0MXhy91KfWQoOaQkmOzPRjd+JCDrIg19jUISus8xmGqyayx7+6RYe4sCDnxTX2xbzF79qp2pSdj5yz0k83Zl2DkbqWc/9CCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sg+1/uK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sg+1/uK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA35C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733888153;
	bh=7OASVhOXiYXpOYYw8Z24zA3TxKJkRemR3CLpo6sMt9I=;
	h=To:Subject:From:Date:From;
	b=Sg+1/uK82+YJ+fl6uG/8zDPYTf3fcK16IdGkOsgNV2efkDkfQPn04uPIbUGMN0uY3
	 yvnSvDInrgyb4XnisWhnswwfADUA1jnDKZxkEX4Soz4MOoSKj4xq/PeD2P6fhcySBR
	 m+hx03vY61ZPfHi9P9Uf120uWx6DRxC9TFlBOI7hHFD95NaoWSOlri7hG3W+PWkwUl
	 WDqG2FAHAZnfwmcWH9edujy1HaQeOUl+vHZY5rb0eDbTKy8e1Los0x0y8xaKcALjiF
	 u/t9uMjkvttbbEJhO5TjOYLs5wMFxJsOvePK5Kznb96c2aJHoZQPUTZv1rML03oJ4S
	 CB69wUD3D3mpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936ADE7717F
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173388815359.5485.10393853904991654622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1d26675b1c369675abf38eb6ca8e0c47b3daa6e029bd3d7d5ec31c18c3c106
Date: Wed, 11 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733888153
