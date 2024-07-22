Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4353523DE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721643354; cv=none; b=JlAbPj53y+UyYNSDQ/Is0B+3fOSH+SmJrSkl86/NGBEGk3RaPIzMWOSEp68jg0jBmG6Nu4rKNdyC24xuK2RTvllC+tO87GAjrQlrVj8Vd9qZqdVfoHEGmbEscG9/i9cRN9RIYG9yQ0sTID3KoxleQTnz/6AwPWWzODUJO7Kehxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721643354; c=relaxed/simple;
	bh=+amXUdkWaV1NoXEwQLIN6H6ly7BiknhR+tVfYTaGmTk=;
	h=To:Subject:From:Message-Id:Date; b=lbihSDv8+kIBKdxqe+HOYuJEA2B+A0L3e68Ee9dqTHHkSCrSSVuHBQB0SoTPPZk21KO2IuuzjmZgEImcQBCCT6HxLTiMNI8Fmo+3cfclg/Uha/+VXmgFP8dkVpsXn8zLqtGmJus6+LTQjId/UY6eJGi5LhLESh6TcbuzV/yEa7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0nrUn2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0nrUn2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF76FC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721643353;
	bh=+amXUdkWaV1NoXEwQLIN6H6ly7BiknhR+tVfYTaGmTk=;
	h=To:Subject:From:Date:From;
	b=i0nrUn2AVz4MzFC60Og/cyOuneBn7y2ZgV8q5ousfda2QpS5PFDez9BiQOCd1ltdY
	 GNKJ61kuXY6vTCN1+D7cdhMCCi7F8IVOn4K+yx/AOKIhWZjvEgc3nWJ7E0OGlQnZIk
	 XOO+qUnTL2MIaIW0IxHELzoXOIonT/5QoGH8yRXeTO2gfy8TxpwV44r69zWuSjZJyS
	 A8xrNlXe/i+n1PdlzMj68Kz201ye4HhbL3RKnExerjkmitonDawC7I5OwkVxa7e4NK
	 5taWEtDlE9MmvH1bphFc0FEBrqn+EvGoDrI1VU+AhHE9WsKcb3tmLMjUrCB8SQRswD
	 DH2+8B6UoFN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99F6C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164335367.21352.8961116713579786511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721e59033d812a5c3e9ceda5b923f4214aaca971d6ef53f2d90dc892099da936
Date: Mon, 22 Jul 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721643353
