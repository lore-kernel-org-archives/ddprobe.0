Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D9E148FE6
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747939795; cv=none; b=SIpNfpghL7agavYXwDMOnLmYDxapTG88bz3yzR9nshmd/vpES/xV2RurN6MOj6D4Jrg4IZeIFi2JEHKakttMn9si+ClYxnLyAKBdGSsfuqi3MnlnHMRRBPYQgNKHK5CUCLSjlucVnrMsVh1RZqE1PGOmhpZKcbgPIz3lcdAg3dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747939795; c=relaxed/simple;
	bh=rX5rosxYOBAuOJZyv4WFZkOw3JUbv6mZraHvlksXulw=;
	h=To:Subject:From:Message-Id:Date; b=bu95u6ZVFjLB3bogqNlBaPXbqWCuGyOQofQeKQqjPbaW/NEIZo85lijiUFUkM5BBGcoPeCRsMhc9nGgTIxRqShTiyJfkeusyA/59Hw1n73lmqXsXNwcQdAkUUzbqNkrdmBTG6iDggH9hh/kebZNSuTXZ4i2s27ZU5XokpfQgnRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Avd+0fHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Avd+0fHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED61C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747939793;
	bh=rX5rosxYOBAuOJZyv4WFZkOw3JUbv6mZraHvlksXulw=;
	h=To:Subject:From:Date:From;
	b=Avd+0fHdQW9jj+QbaX5w7hBSzux1w8gw6V7ZgjgcFSPX6MeXGbe9SBjVehuffGYn/
	 6Vnpu3FUjNT2tHPqVgwRLrf2L81dpGYrdl7+1Yca0hwJgJhxOoUWgDPclqnMiJkNr7
	 VWYK13aIJ5SKCwxmY/hsLVpIMA7yXfHteF8uGeqqr1Jvyv0jjI0prjY7O/xaKn+T19
	 5/c5sY3g73wXd3UPH7NtD6is+oNh2fmRw+O+OXLGbPHuET2tYHVRKNYTaO06mySOQo
	 WhzljM2MzNgtP1spAgWk6pTYSwS/Dpj7vs7/+GzlZBV0CAVPMs13ZrWxTkqOGy0DMz
	 SSjzaCyZBpMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150AC54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793979358.27222.431281647440960807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114481c97c2efa5e5a1a4e0e868ebc82a808e4a6112aceb2856de9d710cef7b6
Date: Thu, 22 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747939793
