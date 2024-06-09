Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0BB4405
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717958843; cv=none; b=aDXgzjtL4oo2nvq1LQmJtlWeenGl13jZbvrhUOYUCG/uJrlnxINcmTx0hcfS7TS+zSx7bDwl2oMPn8QxrqPS94Yd/oQKcNgKJLW6N1MLDd6ls4P7arMQEpHB5fL9qRvj8TJUirHCXj2eZYdukQgIaDrOC787snJqMuWNIzLoHsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717958843; c=relaxed/simple;
	bh=afyRppjQSjcXcST49bL1KvV9uX/g99tCCMSO2SAFg/g=;
	h=To:Subject:From:Message-Id:Date; b=S3Uz/D03yAbDSy4uE/THWhDQTSTNW3GWP68xuapf/vVIX2tPZUw4msqXzwX9oH9bjWOZuGo4ViRT0qYa5t7w2SmNbVWDp5TVpf8EDBv+xEFGVxE5kyF+y6LCSRsI4tt2WIz52CSt4Rq1gLcUY0F4AlPJt9j4+91IeCseQv15TI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+gxYD9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+gxYD9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD455C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717958842;
	bh=afyRppjQSjcXcST49bL1KvV9uX/g99tCCMSO2SAFg/g=;
	h=To:Subject:From:Date:From;
	b=g+gxYD9ksssdBigCGVIvBymm/TD84+89xDtzbc8zGahDUz0IWadLS5G1g4AtczFo3
	 7F0VGbnpJ65BkaPs6+VIZjWYMc+kMeQDRPuWgOCCSOoVR9d/XXbjBcPuKmSIEL0oeb
	 8vIwXkqDEyO4hXEia+nH4Jx7mGztIK1dFfHjTYTvIn/3Y+kJ5etv5wcq6rQnHTMNVs
	 z7CPP+KdhRY9E0WGZlFgUZur2VFvo8WjKMKje7502fmeq8YOZI4Yd8CzQ7pLYaxyaj
	 OjufoaOdsCv0JljxsF8rrBs0mVj1ULgTDqNvZxyo/rTcZIVAMA4gCR8zKKoGushXez
	 8OFRAPDqYX3Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FF4C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795884278.3550.4937791870461093413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c10c6d557c05ac8cb0a9caa8a1d05353e85caed38d1def4626aec7b8e0ccb0d
Date: Sun, 09 Jun 2024 18:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717958842
