Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6CD2E0921
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756129794; cv=none; b=tZe41h202RFpRSD5cnYEhVk0BZSuHNLgNYmPuiV9CX18nf96P5MTyve3ubqW4lV2V7fPfK3ojui6wIoaNpV4ZMvtsOEMef/ST7BXFZh0+5SxhuramPND29YR+5ECDs3LZHF7qAI4TmiRhY8u0yslpQprwGO5GFuwoNfjx83FGLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756129794; c=relaxed/simple;
	bh=Zril2JMIEWInnbf9v3VLmcTu9oW5P5ATjuaLdRivUkU=;
	h=To:Subject:From:Message-Id:Date; b=K5nRFIhvY5QgNsfNrzfB3zwqcp75SuZhnfFiTOTRQQTuZxsAFue6siLX+jljRpf8L5Xd4hM13dyFPsn3AOf2NGXr9GXzxRtH+9y6wwFTieYM+uHCp/iFWCt+oCSr1vJRduigEI3luul7ujicnI3971F28iq/6Ii5XUGmq4cJIao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNv9NhNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNv9NhNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17C7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756129793;
	bh=Zril2JMIEWInnbf9v3VLmcTu9oW5P5ATjuaLdRivUkU=;
	h=To:Subject:From:Date:From;
	b=cNv9NhNII6zwH6N9C38OymQvHuZ3Kj8ffLZbKzZg6AGPRDc8Hupj6YBrhqYB7LHjo
	 4TaXjoiTSUqJP/NdQBWx6lhFe4Z0afSZ+dwmAzwGJmNJvblVNqQdiFahTHZjoDiyx/
	 kF9KSC7P7AdP3J+xoXNOTjorcjZMklhmBIvpqejVfjAVQBqdk9zdGl+k8HmadyfZRo
	 XyBybuPRMGF09a2OuMKWLbBi+IGetRGmMO6h+tJMPPkyGM8IiPcvPw36yVsNRfBU8s
	 64znnx0w/3MTGipZzWkqi59lC1rsFTXhS8ITKath3f+ijBsLtkSMCvzjxG47lbhcBU
	 geSL47rqJrBrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA66CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612979362.24289.11042595922822315188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3de19b902a7170b48e2f0ae0476a1c52f65f66f04289a8c1e87dd0bff45123
Date: Mon, 25 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756129793
