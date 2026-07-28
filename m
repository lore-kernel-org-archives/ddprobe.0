Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDB2409637
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785277834; cv=none; b=a+8Ch+CM/7CvS5o1cuK4+rNC02sovfI2H6R0uAiRldQiaXB7dsyULMHHL9m1F0n8AEbG9g7o0DqqOlNbkrL3SmVfD7IwATqj4aw1AWQiEH1qKwfzKi7TomAACWOC6xBti6axcugUZTI3/rWnK7vzyfpxtcOFP2nV6en5ae2JtZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785277834; c=relaxed/simple;
	bh=GY0sSL4sUO+wViTLvVB3KBk4nJls6UZwuImEkamMMus=;
	h=To:Subject:From:Message-Id:Date; b=qsvkjYd8MtC5aVaLnnKHNvFmVpVJd82hiTxCCCvuCqYlL0F0CSZZxg/NdaeTYakelnQM1LjkHDp3AxUC4TcniJgSPOlzXG8YUadX45hd19y+Ghk8uikLXLDbRv44R9O0Qzilq9dLe8rDwdj6i4KMCo/CZUwLSysjXXvvj40E1Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/o3jtw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/o3jtw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29AFC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785277833;
	bh=GY0sSL4sUO+wViTLvVB3KBk4nJls6UZwuImEkamMMus=;
	h=To:Subject:From:Date:From;
	b=p/o3jtw0PjQQNznwDv/yxYiVgVq66QI/9ARM6eCwVm/LjRDIa6FVaIGLk4qal9Lh8
	 86pmgLAXPAIiPTwuQ2JDoclqHisnOlwjK8hfMelTAbiGOdcx9sHNmFYUqygFVFNruM
	 DdAvM24Ch94f6iz8YkdjGXlSA88BGKpXpnlf0rzyCUwfhRMls251XRgNrRu/PCeFB7
	 1x3EZqCEtBRLhF1Dv7gp05Fa/ICVosPk08NGfbneZOK+SNobPvSFRfTAkqVnW8RYdD
	 C7v68A0gCZhoWaWbU4we2UbQbP23HGj0LjupI5dL6gT6f4O/pbKbm4sKBz217lcy1Q
	 XyvdIEHZzCfRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAD9C54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527783368.21906.15084649650626161181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb88d020b9fb4abdd0750f5ed7aaa9d3ac1aaa00c94ad9123897b99fc3683e48
Date: Tue, 28 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785277833
