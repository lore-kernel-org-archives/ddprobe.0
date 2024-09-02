Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A541179AA
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725244554; cv=none; b=gIkB3Amwr4nBTVvtA383wRaI1MZr3iz7QFzpmV1sBNF7oUfItGrVffSrpSBafkCJUoYXnCsa39tCQv/l5+yx6KEkEUZDDfJDANeuHImPGMQiXPYEfahTvSDT33L1b5FceKla61CxhPPavUUdDf1t+bi+qIn9a8qbjYrz/cH7W1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725244554; c=relaxed/simple;
	bh=OfpO1Ln7+yBTkfCyCCy2MLpGM0HbgQIkI8+6I/NRyB0=;
	h=To:Subject:From:Message-Id:Date; b=BGjNEe6whoN6VMrulEW156QHi0cNGPgWpf5AtD+cCmP7SggZIE6DPGURbNzirMfIwCqa5do6VHnIB1gFVDq8yCLQNeA+cAAV5ZKtXLiycyXiNj0ehFvtvr+ESh7aaiKDE9NDjVNoV/RDaUaNTZyoGC8lrZP5LYmOEFe+HcvhzeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PD7SF7ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PD7SF7ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85A1C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725244553;
	bh=OfpO1Ln7+yBTkfCyCCy2MLpGM0HbgQIkI8+6I/NRyB0=;
	h=To:Subject:From:Date:From;
	b=PD7SF7geQsWLJ+Qfd2OsvVlDm+/FrYZW84dvOC4S7Ag06+ta/hkf18ybzOuMtebqF
	 HxJwNjVEamd6lQOP/x2nuA9FnKMzh/S5kQVGp7chd8UNZPo2eFMvmRUbFltZyHD5Ny
	 uxcfEYBkOpadB93xKHxuNIKiGRpHMyrvJpwQQ2CF7Z+baIg+/ck0/IVEW1JJ7rc9HH
	 md82uFi5F1nMiAiTLMOVE9AjFKOe7R1eB/L8o2EuGWObeb4OaK4LK5wrjNVdPdyCIr
	 3HVIT1eNHFc3HWS/Utd+i9h68HZ9UBfrRiIo/+Ql+C9Mnf2uzEMDq8LY3LFxX6qcg0
	 giSot+eOJDPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B06C54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172524455363.32679.12521583029142366158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d18976cc914f3b085b5cb6efa3a2e0fa92921caa9c2ca227c99a3c607255b15
Date: Mon, 02 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725244553
