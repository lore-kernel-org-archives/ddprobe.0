Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E7E946C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721487954; cv=none; b=LLKOjEzzZZVYYsTVDr6tpY/m5XoB149hjeyIdnCIDzx5GakvskogHV2YbVOpP6lIuMADE79jv1wgetLwknAWFfYx8udQprYyfVB3HX73Mv9DRv2GPJSzi7K+BCiifWpNtGuQKaYOkJUMchK8Gia2NhpiandoaF+yK5Qvcs1sAgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721487954; c=relaxed/simple;
	bh=OxbMVaZylIwz+a2jXa3uMpxa7gdl+GEu2IQhRWHPY68=;
	h=To:Subject:From:Message-Id:Date; b=a/LvYT2qYQlfacYeEDIAyk2BiHA2NozVOj+P+6J3XbQSlIqjyGogm+wcJzi/h+QIpY1mUxN6JI385jJama2kmMgufPymHCVpkr22OEh91pMB0eT7V8Mi207rN637f0BQsqUIWqOAKnOQCrs9tlR1Y58tpl35vyIGgxa2ll4F3IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oc/1tDul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc/1tDul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF942C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721487953;
	bh=OxbMVaZylIwz+a2jXa3uMpxa7gdl+GEu2IQhRWHPY68=;
	h=To:Subject:From:Date:From;
	b=oc/1tDulVBLNA1vJ/Q9LjmHQm9zowmWxUmHAZqnasuQf0Xev/U6g4sWnM/wY7NbWL
	 kQ88WjKXim1ciWwGPRwYbUfHEvyO3A7sRebLwf0AjbUensEAwadhpxpaqbZZf02/jK
	 Q08jWHpX9zarbVCRX8Cezcrdmgo7dU/EV67szf9FdDYZ7O5xRuJTdvq8UPG13J+MGR
	 OGufTCeuZnOOGZrnaptfUdDFWMQrSWRjWSZvfVlK/BvzJr7F20+1SM+Tz0omOVoQBa
	 ObSoInchHcHTc0AFSSblYiHp9i9e1DH4IMcTjeE72odUMyZlmqh3HH+hfV4PALmSYd
	 lvkgWhLuptLGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC32C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148795361.13742.4414977196072984414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24263db94938b0b4f4cf2e587227c8af5bccd66578969797497b41ac08af1fc4
Date: Sat, 20 Jul 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721487953
