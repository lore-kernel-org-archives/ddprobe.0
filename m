Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C5522334
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720472183; cv=none; b=UDer9+cVlvkoMUMlPCmuWAJuGI9AVh4wntUZ3s1heOrg8Vbx08JMFIok6FMyypz83wymTP5YGiHJCB2MxKaiICtsiLsMtGSReVnxvSq/RwNUsA2XYUyLuVcGEweBXL6PQARU9WDqaCrkM5ABv0Pg8rAPZ4c9xgZFQEQZGaCrejg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720472183; c=relaxed/simple;
	bh=U1y+SCSg4py1b829Ip4NCrl1ElYxjDZf8N34KaySv7Q=;
	h=To:Subject:From:Message-Id:Date; b=pII4wqNk5qytXDrs3HSsN7xsOOLlUO/qnkl6YI4wQ96Flgu+jLHDr37XElj9mgOC5eq+uoLmd4juZjSLtNHXsrmYPhK3iGLxaaSSoTDyN+VHwy4oGvXjipDuDL2T/wkFcvESfFrjA9OSlaPcvDdlwfkwdErmdoZ0LSMKUkBE1Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDiyancc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDiyancc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA448C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720472182;
	bh=U1y+SCSg4py1b829Ip4NCrl1ElYxjDZf8N34KaySv7Q=;
	h=To:Subject:From:Date:From;
	b=BDiyanccvQlwHUDmuQyrNIEZu4acCcT1HjFTNmSNAeJ126b8/XS5gy5wfzEWo5x+9
	 RjfgZr5TDecdstjJjcg7uPqJwCZ5ssZBBOriz38NG5088MRxjNb7GwpaZGlr0ZP/gg
	 PbMpAnxpkoTwx+LP2jKkq1diZ8gBQLRj6GtsjrfMHGbDlW3C9TuEnLOvuqHYKX6Pbe
	 ekHnTKk8KJaG3Ons95thXUMKoofXjNL6AXZvU/SlLQ+PwDJkVVUBe8qmtOUBMe5w20
	 JtETUo20xkKXOwJEYINvxXq9ovZgI8X9x5whsu8ocOkr03hyckh5IuseOxvAVTOu8h
	 9kmZciuQqd2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE56CC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047218280.24393.4484262448341657251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a4a2141f0d017a4576f9f7f6ff7bd0c334f18aaa8172b8c34943de8e195322
Date: Mon, 08 Jul 2024 20:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720472182
