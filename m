Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F90630C62B
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760680194; cv=none; b=XXFCUuN37+5bQEhsL3lAmiKI+bhZYuTSa/K4sRA+F44AxC6yk+Bkd40skGBhgl5ZyOz2518pbHuUCDPsgKxYLM3HUymL98zyaEKlPL5WZcztCF+YUU5bs8rhFxQ/aQtV8khzWLBPTOdGtpvo2Kh/V2YnD7msDEmLgVwhHTH8vT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760680194; c=relaxed/simple;
	bh=Zs2zlnizeVmr0p6wAX35v99NlSbxkfedHF3jJczYJ+k=;
	h=To:Subject:From:Message-Id:Date; b=BCRXsmnCQEDYS9ZJYWC9HTkYjeyIwUlg+O200ZhhGZE08tT48d+RI6xO3nwaaGE8OvCfi98sPOVEDy9HM1Uhpp5/t5vZN1UTKf9stmS8KSBAGrvfhbVGRjhJ9LfE1GbZ0O7b5eTq3DOM5XZkooueAdTwLuqsiquCpJ+AJTAz+Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5HvKM5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5HvKM5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5DDC113D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760680193;
	bh=Zs2zlnizeVmr0p6wAX35v99NlSbxkfedHF3jJczYJ+k=;
	h=To:Subject:From:Date:From;
	b=t5HvKM5IRAJJxX+LDMmoiPRIv63tE4VZbv/sPMJKdnZLx9BnhKYamSEfhN0GhMFxa
	 5LW1gcZfzOu+h//xZ/8u/pRPR2son0eUJuMybq+wzh1O3hxqZp2929nyCJLn0gEhxD
	 +2eZt51l1glLGT/qj34XfS7A1FWA5hM/AyTrKNpW4QZJNnUWmL18psVYYfsY7vpp4k
	 0HmCTiNGSEv+HkDpH5vrl8hnvDiurawS+9+PbpOG2J7IGL0F2810ykhuzpAov6ekSe
	 3CJumeKyHlwIbjRH4DgjDtG3uSvrNAYgYU4AoPLvEpLD6MVJAzeJSOeFq8EgIaVhb4
	 gXAo4nCXX5zag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925DFCCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068019359.27976.11578990326091070584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50af696f04350e2251796f406fbc993fcc75be71f9f854aee885ab0674c98f5f
Date: Fri, 17 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760680193
