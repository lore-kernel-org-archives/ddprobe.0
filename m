Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488D1284B20
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749196794; cv=none; b=aIg8CujW4/vThokkwFVD5cF+Kv3Tx7x5jIr68XV+Y9XEwsLMEC1tAJHMPOSJBzE/s+9F7OpX8840yQlb71o0CFx31JHbV49VKZozKz2QkgYWoXXR3FEYQdbIcXVvIzH07jLoabxdtGtKedn2TTg8FkLuJPJO+PDzrs1DVkX17W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749196794; c=relaxed/simple;
	bh=0S+zWJUY4uF5ACRUydT6epTVGcAuyTssv2tga2qAXG0=;
	h=To:Subject:From:Message-Id:Date; b=c86hMXxQFI9mXORoc8PW8HF+W6+TO9r2MLeUT1K3/Pc/sg1FvzXjCRqWTBGqkDxNy/aqtB4d1RYuPIycPAlkGgoymgdazomhvopJPOPTocWKrfE6IqRuoBcz0KQfCyuXHOSlcZohnZkeqo2EVA43g78aL8PlNIndb/1g+0UEIKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJz93xk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJz93xk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB954C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749196793;
	bh=0S+zWJUY4uF5ACRUydT6epTVGcAuyTssv2tga2qAXG0=;
	h=To:Subject:From:Date:From;
	b=NJz93xk49DKFtkt6vQOCZ/up+YjpHWf+4xy6VKFl+B2YA4NMOtZs34Ef1XFJTAGP2
	 aFpD5tjtnFuFamYk3Sqx+EDdrPWBYps3fHAyoyJp4hYKJismHQBTbh8AqxPi2p5sZM
	 33p3T/PiLVWZ2thkVye4zySvACHTbt7I4TtQn2B6VPw9k0iIMJ9shTKYcNXlWNcNgN
	 QjP1qm2aAwyxLlBD/NHoXKSqhgrMTHkdwO5pKf06yr5hZE0UE+kjWpCljIIx1tSthS
	 z9ImIWiup4FsPMpc8UwDd6uHjjrTGOkEo+IqF9cn+MZnRMaqos4o4RLC24dmpZbWkz
	 LwhPOKLt288Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C30C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919679361.25056.8489235449359724871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f40b4e8809eb57e54fd6a55de368594b917e65b11516fb65536143ad8712dd3
Date: Fri, 06 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749196793
