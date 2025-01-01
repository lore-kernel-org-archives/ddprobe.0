Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD7C6125
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735709754; cv=none; b=pMsYtiCAQXoRmJixv86aWRYPEuWO3pS/VfFKRg2Vp4jo5cGsfnbZRizfXpZ2kKmATODk0iJ9bfjoRoWg4g752/4AC5Sx/IftXI8zwYLYc8EynTYumC7qgKeTI2bpFou/HufZ98dAIw9SGspOg1oDxyHhh1GCUaI1hvZh0x0TLJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735709754; c=relaxed/simple;
	bh=Eh8VTkalRIkNFlP/WWT5Q1F9Jwv9OSmQcugbNpLf3T0=;
	h=To:Subject:From:Message-Id:Date; b=BEM5DRuafDr1DFXZLRSYChcDok4hdH0LmVBc5NiOxuJoc1dbe6okjI6Wz1+mulCRECPAJIeNYmKtPMLnpqBIOcckmAk+blNtD99/s/mbhSolSM1R+S2hoNw91GwrcTwnDO5tIRKGLzhKhy81gGHQIneK8XnTr0pE2rCCWCWzpf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJC8zpgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJC8zpgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA29BC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735709753;
	bh=Eh8VTkalRIkNFlP/WWT5Q1F9Jwv9OSmQcugbNpLf3T0=;
	h=To:Subject:From:Date:From;
	b=BJC8zpgBiXcb64WthSdrd3PQcX2YwvpxX6IGt+8FtioMQYtfU8XuRNXmElF5z0OsK
	 2v4RAGw0AtwJGGltkDHEXYAnR6V+voUl4J3LOYQ68CbcI37oHU9dUR9OjRfCqiB0uy
	 PV5AWcU+HsEy9FwYZ3ZaqRRIT/35uuLKiQVa11me8nwIMa67TgSMqjGPY9lj7ev2h1
	 qhweR+zWP7vZb7qyDhn2Zxq0gmQ0skIhBFJlksABwp+2AmoXRCvIZgB86YLIWarI9H
	 Lk9aBp6ZD6BSviIR1+kSisLqNzVc9L+FgUwshjBRaVvhnmPaX9Xkwqp6wCCPJ504Xm
	 noyuzLM9Kcxpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96186E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570975358.15331.5747599188717266433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221ac412e026dc69e722c702aeb36426f790c22d3f47bba9ca24a0924d1edd94
Date: Wed, 01 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735709753
