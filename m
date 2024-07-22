Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0EC14287
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721675754; cv=none; b=FjhTMtONfK1mc6VGDol+Vs+3KveXi9hCmnXJGmXo87zPHZr3pwzve7n9XkHLt1sp3fx3IB0tn1OoWvo+d8UVJQ6z8pxUBasTVS6e5xXgnxDnpulBKe4luT+USJSI7EnKC5Pb4yEvFkzMiRpREf2lTAfOK/PStBMq5S08NKRAEZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721675754; c=relaxed/simple;
	bh=JLUVuS5buBtnmVE7mSaGsQLfk1UJStY2d22QSYQX7vs=;
	h=To:Subject:From:Message-Id:Date; b=S9nwa9BoEt6JWGg4W27C6Xei17Mj//Bq/VU3lyma5KffnJrfRenRa6/d8XKYwfv3K7nxOPYkDBqHFVMZKb053BdbXm1BqMU+YK02rv7bJzNULfLZRcZvjIL0vWzQJLNAQk9qpx17fa2ZGxSW3CGxcfX14wZHpqu+XEcdm3Ni+KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cxx9Kdgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cxx9Kdgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B237BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721675753;
	bh=JLUVuS5buBtnmVE7mSaGsQLfk1UJStY2d22QSYQX7vs=;
	h=To:Subject:From:Date:From;
	b=Cxx9KdgdyGVRWqfbCU1uUA0Nfo4ysZlIB4cvQHNMCPf9v50xxwGDb3lR6tzigrYeU
	 FJse719gwH3swlSHdgSlQ0njD0P0caX+Pd/byPUOmLrAzGUBI/yIF5xwz73vwTE9t2
	 FmtCurvnqgUZrOBvQPU+3Xg1rq5LwZ6SjapSQ5tZhipr9PDqT8A7QcpcQNJ2jjn0zJ
	 B2ybJWbqO9QP/ntnxi1GhFKt/CflIyenWlvwMJzEewxZ5MXbzFvDIoEHRqFHhHQjpg
	 wEAe2CBf4iWfNOQi3BNf91wzUZU1Vm7Z1xSiTB5zq0YOPjMG3yKQTZskljBgHsDTGn
	 PJhX9VatolKDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A975C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167575361.21317.8108204531068636693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9a80721817c597391b8a344ede3d10e122be78327bd91b2cd9ec2b9abae6cb
Date: Mon, 22 Jul 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721675753
