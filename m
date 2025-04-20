Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420692C80
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745112594; cv=none; b=jJ3T8RrP0fPolMAjWQ0AazgtjivZcbY/9sqPciyCbmErc14FXmeX7KJJ/v5soB//1owJt6MakXhY82uKgFg+N9/nylVeEEjfX3pNrxfhaBQ/Pm1X90MaclP3h4jSvltajj/VZt7ReLBaaghEwVaD3d0OwfH/DhivV7AO/xiJTOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745112594; c=relaxed/simple;
	bh=9ZMC324i+T3xyGz5EFVcixISYlbN0zjvcUy7IsSdQtI=;
	h=To:Subject:From:Message-Id:Date; b=Ii8CmyXyhvstCMMtM6c8/TlB/ujUia/4Z3vFcb6PimnAyM9KmikYBoixnWdEZ/p2lmYh4jW+KhUcZ+6EK7G6oHHxi7fJjuZMXEycUD3Ro9M0rRN1uXLdWCx0EmUxvn3BpxmxxgjiEIO2aJbx7x7+mjpskP6B81Iu/zYSAdSrPpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGWJsw11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGWJsw11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1060C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745112593;
	bh=9ZMC324i+T3xyGz5EFVcixISYlbN0zjvcUy7IsSdQtI=;
	h=To:Subject:From:Date:From;
	b=sGWJsw11Yun/UQpy7Ws3k72iscSGINNeddxhRDw4XW3S0lQ3KjCSiEdEYV8uBhSGV
	 iPPYghuo5/Slig13ijIJtC2LBlzaHAjOPXKw0McFobwsy2d3GaWL2eWaBOIpEiiAeS
	 ISu1eEtf52DiL61Q1jhuu098Qjhzv7xdrJ6Lg1fjbzrYM+sfxKZ9zEMmR20idM6Lnv
	 K0oak/MZulTHYL4/4yWZofVV9OvPXpcHGN1n5qLlJrpEudg7gHbViEkqFZ8vQiyup6
	 JPOl2AuV4kFdgCnEibHiQM9mGipzkmPCjyZK3I/FJMP+IiWSrLmEGym/Quyrunv2Ax
	 /Q/Imu23cDtOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF09C369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511259358.15796.1875984633450033999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de146dccf823ad0192fc0530554929c9f1856c7f01dd148e5f4e03d1d6a2eec
Date: Sun, 20 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745112593
