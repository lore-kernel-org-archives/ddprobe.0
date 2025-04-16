Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FE919066D
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744844394; cv=none; b=B92i7BCeOWgClrHoAKKbLR3QW7e9ii5ac4Chv7tk89t4ledVuw1828ZQI8TGeZr+rp6QGPYyX5twhmOvmbL/nIPupdVGZrxraWyFfLSJQvByKgAgAyKtyqb1n+nUSYstcuuZjMwHvi/P6HsZ6VG3j6sj3f2PEkI5FY81auyc/i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744844394; c=relaxed/simple;
	bh=rK3eBfJk2KJHV3s0j1aqumNSgM1edZLv6AW+sSyzE9g=;
	h=To:Subject:From:Message-Id:Date; b=nvLK+A/+GlzRnKkClMBifY5f4gNpH5GhK+ZmCDW2tryX6OCAw2ACAAJEEQppAgGHBfIIqumy77/voDo5A89hQq3qEjBnFOZxWOMPPXesHOAp0H2V0AbiHOcbh+RGgptShfcFOIGBgbQOJ3dylF4BKt6lG23vSCa3UHSqWxWq6EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRo3pTrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRo3pTrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5948C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744844393;
	bh=rK3eBfJk2KJHV3s0j1aqumNSgM1edZLv6AW+sSyzE9g=;
	h=To:Subject:From:Date:From;
	b=JRo3pTrtScGywEm7TbzcFOdFreOd8kvLh+WSkgn3MPcdPXpCnynavEN5i/Iuhy2Jd
	 MSrdmWxVVqzQa9h7RAnYjv6szBNRZ1kvdZN/qxphy0XMiBej3PNrFQ9Z2P6RV0O660
	 2zAje6xtJq/k1sn7t0o+ub6i4JFy/SB5z4IRO1DZtRtEJpac/zCRWVW9PkvyJveRYe
	 gCPvnmi2WsAPqNlRn8ssiDIRkCC0pDDQ+4jslmxYJoZ6acgriPBG2N6wIBpw/DTg76
	 P1q7dPmFkqPjPryDKlIXS9Qqqc8LwXVfo+G7Ye+v5PI5nzaNxPzT3DWxhQuX/VCjGw
	 +IavQCShY6vtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A3C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484439358.30172.15448555822234762774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00a45c6e67479bcc301cd3d8f39006b204cb3654a4fb12e229e239f0aa8ba14
Date: Wed, 16 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744844393
