Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA760B8A
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753805995; cv=none; b=Chdf7qccu1pFRVIlEEzc11pa3E/qza5l0bTV6VWwAMXAX4BVNZtkreCaHqzbODngMPJeEzXtneV4/vy0xmNk/heLsnsNlTqe4kmnuQgPhPQq+q/hgaN/Ah1Ki372RMTq1MzgtOPxB2zVSEqdO3WONaZw3yJd1iYmNR5cQEJv8WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753805995; c=relaxed/simple;
	bh=yft8awq/TdXG+v1v9ZbDXzhZkWGiGa+f8cFsGESAx5Q=;
	h=To:Subject:From:Message-Id:Date; b=AyVkkl7lOF6rxeLmcPWOroC482/3uq0uBqqco/UBg+p6w1Uck6VKMFDbRM1uEKQd3RvXz3JOWW+nWESXRJLn9dQv0qQu7Vx8vDBthWhYyn1Vev9SmJT2RnN529mGLGzeg3jcvhToYqlU9HSFA7bzGRI2QrfAWLLhKJR648h9sHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUm/8l7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUm/8l7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C79C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753805993;
	bh=yft8awq/TdXG+v1v9ZbDXzhZkWGiGa+f8cFsGESAx5Q=;
	h=To:Subject:From:Date:From;
	b=WUm/8l7V31lfhjwCvbGS4H8z3cV2ZNcMfzOAiivjAUJNZlLlFgZ8OrYp5yoHAlUAK
	 t+JgDRvvpIc8CQftYk10TMayXpRLE5ZaWqwO9zpTYoGSJIG89u3Ly63zC5SHFeiJyc
	 V2rZ1n4Qt3FEfa4YyK4Hc/DsL3Ay1Oel0ZTm/oInTWJlzvRdmcn9MpWMy+XYoDxKA4
	 gxF/+HOdZSq8FXuvMQN5ulv+1GrwefmMuJrgMyhzI5NQSO7U0z2oRks4taMXJeP0SA
	 D7gOa/F4j67T4fh9PlsmF/6w02XX+0b2U4yZAqBnYuf2E/SZWXitxOSYtTBIwMFD34
	 NGaNH6ENx+F9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2EC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380599357.10138.10904262828196916590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd3d5350693e2ff939f7e3343562e2d1800406fb206be33ca6c3064c161667e
Date: Tue, 29 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753805993
