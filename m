Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8613033EB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785256234; cv=none; b=Gv2aURQ7FtigUdBG9wcZcub4ficKu319/jcrJBARgWtqV39qLMxvPItq7pPq5kNlmksPo84Y+vGWjXbdNMYIYv0v9M+KwElFq5oVPVLXSH884ujOjshBE1R9UW7KIRglZ/QyfOodolbvMDnVGlffcD01KGxqW4liB1dcMwfkw44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785256234; c=relaxed/simple;
	bh=iaYGWI2dSWoNg7T2W/ECjb93MINmstV6671t+NRECJw=;
	h=To:Subject:From:Message-Id:Date; b=d/FUmChoNph0QAmr8v10UepuC0EflRjrpwslJPoYdeT+TSsVQbEc0O4wfLeyYDrBdcBXX9TfNETtCXZNDGVFSaJgCKqAzMOhR4emyomtQcEmpHomvJfOLKRlb0gaBaUFig2T0L3Yipk/PRYqiQtFU01VUg4IdBr5vaLLXxV8Ovc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJ5pv5R8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJ5pv5R8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35BEC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785256233;
	bh=iaYGWI2dSWoNg7T2W/ECjb93MINmstV6671t+NRECJw=;
	h=To:Subject:From:Date:From;
	b=XJ5pv5R824ZNw7eEw7MbXtIbHR4G30bF1rjP1ddpXQjDUYoFPsgpLh7MEn/0lp5U7
	 bDwI3g1g0CcCg38CPpxfunULru8358Ib8vmMOrQ6oHde+beWQtanslq5IQlkaWbZRt
	 JFbAlPbAyUD6CugDd2244gGOIMqxDGEsdVswyPKPhk1rH9X0QwT2nT4pmsWuIhZOij
	 qZKqI3/utlFt0EHDEVt77JItfwl9GldDfr5EbGCBRBrZIc26UIqXRb8M4kJPVpSrlu
	 Z/cJJBtP/UQbvdgPVPNwDwMMRE6gkauC7KHUskDMdSLFamtoA91j6puoSAN7ulD+6L
	 2Lb3/ZTKzkAdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBD0C54F4D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525623370.13070.10169746074505217301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6130699a0fd43125ec54a9e301002f816dea62c3b5494d138a2794481880d864
Date: Tue, 28 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785256233
