Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3085A1F957
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725221754; cv=none; b=j8DfZFt33i/HVbucsPvfVAImGr2H7XF/gHrlrDjZkb3SVNNdgu59T52AWZEtpNFeNWCp8yvYDB8RlZwZBw9SeeMrRdZQTggM8q2x80j+9DwGLEMmIlvFYQWLUCA/ZZK7F11t5meeAtu2eIRWSEmpyHMZvAaNPnlcQETbvHtZkWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725221754; c=relaxed/simple;
	bh=bxws7gMGZg57PZIkR1JTLPTazRDoBffnBkbADpt5cDc=;
	h=To:Subject:From:Message-Id:Date; b=HEcqytqgMZkjrPn4gk2T1n4VIZor96eX4FLvo8/u0Vow0kPema64bB3ot90GRkl0xb0OVirSPpgzzfnehsE5KCpt98Ju0v89Cotfvf7bjjijMnEZH+YtFSR+so/8XnExCmBSdjqLqqJJuZ7eaLo8zibQmnrkmTczuRRbw2aKQUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgF5MV0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgF5MV0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7503C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725221753;
	bh=bxws7gMGZg57PZIkR1JTLPTazRDoBffnBkbADpt5cDc=;
	h=To:Subject:From:Date:From;
	b=cgF5MV0xRb0FNuDZCdIYUhNbZJ0hu3fBeQTJEFLJjEfYqHYEf2md0F5WP0FBNXbIK
	 aG6yJxTp7oqPt0sh1LLc0ebBj5VwVWyMB+60hHsDiGEaBNVNNy1k4EmVqEaGA6UQCM
	 GOnvmfj+q3jtJxvRyHTsOAWkx9oIrLiM/qmj/KGQtpq0/qoaR+BJBB0bAQbPmno1TJ
	 yZCyrlCfUiD0si2z9o0HuOy90ns/hWxay7vGumRezXr7POL9JY2oGHRobiDxZBjQXj
	 d1ffSoB0lT2fVh0TmUDxEfJ3fsUQCfYRhC77t3pnQQZN8zq0In4M56A0Y5nEKiEQWM
	 TonvRJHpioAIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9363CCD3420
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172522175359.6096.14123061408774305133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d4b199e4c0fc8400b5809dcef76aebc9e64b10b1fcdf4fe57e134a8f804f37
Date: Sun, 01 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725221753
