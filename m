Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B92F145A0F
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717502123; cv=none; b=iqECBKqwNzoSx9DOiue27+w1oKigjPGBPbdBO1LGPM6UM4Mquj7XZxLrRZ05mak2Cbyrptqomn+Be5eb8BAGyEqlZ8c8d5ZAFfkPY8zmDNQwFxECcmb9C11f4qpcizxQx2jUh/ZVRx/s435J8RUkcO5D+4kAVM6nemy8JypzsD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717502123; c=relaxed/simple;
	bh=WSIzaU9Qvxe7MIIfhA1B/TZ1UtN51cdDZqHoGpABJSM=;
	h=To:Subject:From:Message-Id:Date; b=UxS+JyiVKmi6ZNvwb7sZdk1GM38Ef+ib9jsgVjI25GXQUijmGRS58Qzqj9J0Q7Bmdw7OwIAOc05rw6MfcIwsqNYHgoAErh8zWhv/IR2gOmaERIec9E8gnnRJ4pi1EG1yDxbHIg+3q8sJsqp/L59VUWMqwozQtlkFzGu+So0EE2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOv5kOQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOv5kOQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD55EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717502122;
	bh=WSIzaU9Qvxe7MIIfhA1B/TZ1UtN51cdDZqHoGpABJSM=;
	h=To:Subject:From:Date:From;
	b=MOv5kOQ9dzQNuxFnLtXWeqEdxjSWP+kVpA13ZsRta/wYaftRA/rquvn3Ezglf+MH+
	 2QKDE4oFp2rwwb8khO4eNmJlJL5FnAnyg3SddJaV49Dkt2c93MiVKAEyxC9HQ2EDsk
	 abTw/5pN3oNcPvPUBLILCmOuyPTI3GOP2RY1jL4LB/+7IS77NEEEAhVCA+4ANOZIRM
	 4U10ho1DIcP92edEs0NOUlAM2pmqdWVqqpXl4Mj6LLnboVqjQSRSlra3KSMh3g7+hb
	 aPpxseTV8yJTM9vb29JUVhP/I4Sifuc634Wee+6PUe9hCwGAQHx5X05sZKcclX/OLI
	 wnkZW8L1t2hyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3D1C25B7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750212281.32572.9610549786638532743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1681a1987d6664d1b319950303d4b0b95dec46eb5ed2caa0a1666288f4853b9e
Date: Tue, 04 Jun 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717502122
