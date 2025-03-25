Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9832566CC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742903394; cv=none; b=Vzn74tNmYSXuzgTAVueYqIxl6TWCMhERzgl5WxrvW1SbxvsRdgLWtvYzanX12g9vHayeLs5gRMDzZkmzQHOJVUSc0K/EBioq8BFdKJDQX2mIdvT7XWIdTyQ+blr9h44GyL7z7SyiyzMCvQN3CAPskjinpJZqpAyj10V7L20EVv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742903394; c=relaxed/simple;
	bh=XoANrcpTPVtWWSSAAemdXPMJdKR6FQDpiShGkt9GENw=;
	h=To:Subject:From:Message-Id:Date; b=rC+kHIATYbXbHAhFnq+J8nVnyNvmO3IDG6QpZa01bQvSGMvMbeBhPJmxe/hn4xNxEcWykGTPwMjpsq5LHZ4Mndv8c321hBQhInzJ2bEYrDGnQ9c5fzL6XRM98T1j+dnwM+BisnsKEg29A+Xo4g9ZlOmXm7VRpF7X1umDHQ1yhzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0uNOuvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0uNOuvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB81BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742903393;
	bh=XoANrcpTPVtWWSSAAemdXPMJdKR6FQDpiShGkt9GENw=;
	h=To:Subject:From:Date:From;
	b=i0uNOuvShssxuIJ9nT/fxUhybAq7lx2+VQViTAVcQGLlzYDWwfngEKA86bux3NwFR
	 zsuzwPBQAWVtzAbWrm9b3+KnMgr9pi+U38O6wPhEmOFfWyTZWWJbOL283KHm+S101a
	 gidAIf30WVuNukAY72OlzgYReY14KNJB8U3BFxiBbZ5RxY2yjznw+AGxV4NHNSMMs6
	 1YsCk2kaePL1A3ZDfqTq7dpy8u5FypwMH/kTE0WOhVTlI+j3qgmgHpfjGENScu2CqD
	 zDyNSDsRsAxrEfRKX2BK5qN/1qC28XOGqIJZSPetOPpETYcjDgBvvLApz6dxn4abiO
	 kgOHpGsUsbU7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8495C3600D
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290339365.10401.4979491614580398823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60944f210ea16ef58776f979ffa8cec73c85073cff11061a95adbd518071bb4
Date: Tue, 25 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742903393
