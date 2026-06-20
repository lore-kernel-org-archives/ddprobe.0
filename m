Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3808140D57A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781936194; cv=none; b=BudlRXYi7ShRa7IOx7f/2aWKXJ6Zwk455EDABUQTDKd35kNzSZF+M5xFuzz/vWORWTkBOfvoqalQDKj2BUfpYEk2DToIs+QynVN93W0/NCgAjcheI52QZMkzCYkzAFSV9ThgljpjKS075i/UeF0gUIfLMaZGFx7ta64Mwhbdh2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781936194; c=relaxed/simple;
	bh=901hWsE+YH1P1UiQ/2Zpz3C0p1kJtjc6/8WJ9lJhTPI=;
	h=To:Subject:From:Message-Id:Date; b=jjtvK46af0XPtXXKVo/nNn3PU2od2u+wEoIBMJ3kzUX/tLGitPM9RcUBPegOV0dvdTx1LsTgy67HXOuGYxDcFM8tnZxfI8A0gZLZ3bheRADz+f0du0AjLjUQ8RPY7/twUi2RmTeOsLpKmIod0FIn586+pjsBbRcdybyPyMunkrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pafw0BoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pafw0BoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8637C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781936193;
	bh=901hWsE+YH1P1UiQ/2Zpz3C0p1kJtjc6/8WJ9lJhTPI=;
	h=To:Subject:From:Date:From;
	b=Pafw0BoAh9SSXgc30HvoNVDWhVOypapuaaipaMyf0QbYvb6/4DMtS4ZB5dzKZXecd
	 SlMywGtONdIQC3NYuu3tYq8xoP3ikDabaxoRQbhX0yBPUGWY6MePcE/t5uAykxB64Q
	 vmi3suMPpWla1Uj1crWn1Pvbh86KU1FjZ/TsuESQP/CYkQPn7d4W1U1L1wqkZIJMyS
	 5qvF1fEeaO74ZaQI7nldECTfsS3VsBFcRNe0xfMl6JniXWdmuEGI2YEajeH5bDg4VS
	 JuZ+6UITym2mSbHV+VF1jtc1CUHbsbwdLsqDYTSuU+rR+hKTUEZuF757sK0Z5eqxB7
	 mltTPhxhpT2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA51CCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193619368.1232.13440928374155761474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcd9a095a300911c3222e24aff36b7668f2e93994e69fc3bc52b956bd4f6ffb
Date: Sat, 20 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781936193
