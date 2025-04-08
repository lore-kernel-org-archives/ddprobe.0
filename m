Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440A6245024
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744154996; cv=none; b=uhwd4ops4zX3hHaMmidfZkDsRt+2No+POBWvL0naRbt2DYcuBb5B+MSaNipw/7ExeI9WhymAS0sFO2y2/4d0FW3xfaNpr2FJCUwz/sDBnfEIt99QiqtQjivZ55CKZkdEFDPXtWM2oVt4FrTY+X2I5O0Z1rWy4c2p/BN/qswaf3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744154996; c=relaxed/simple;
	bh=NB/MpU0ELvmIrsuMfX4CKjUwWdlxOihlQiCnu6TmV3g=;
	h=To:Subject:From:Message-Id:Date; b=i0e81Ck/M5M3hkOdT1zy2xHPAwa6r71YFoCIozViDMKJxEkNYeNAOQRSU9tDz8Yz7X0zE+9tMO43UhPPCjtd3OsTaj7Rpo6xmDL7WBJDi929GiANqZR72hbf7DpSXcqnedZnDARi2ThSLMX8FQM3fXsPWrqH+7Mf27T+NUyxl1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Thv50KQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Thv50KQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EFCC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744154993;
	bh=NB/MpU0ELvmIrsuMfX4CKjUwWdlxOihlQiCnu6TmV3g=;
	h=To:Subject:From:Date:From;
	b=Thv50KQMF1brIQO4fvL5WKOl3OHplU3VOHAIWftBjUqH5FAtvJ5BBc14HcJNbxkxd
	 LnNMgaJrHkREFym/J76gyQyOF9jTdIGujb4rv3xnKrf1jX4kacVCbRsiUvNdfRbZ+I
	 P7zjUpGPusyTE5GqVTypaIBTNez4OGBQHL5KMYLAMxtUm30vL6zKIZ1FoWtnZXx/Wa
	 lt9p31bdp8qN7zh7tDLuY7qrqRyRp7U1idNh0K2ATF7RF33oIj4unKFplgo+SAeeg/
	 F0lnZSUFLZGqcgPgXjlxT1mK8HRk055JeVspot1FEh9RwP37Il2eJNcgIYac6E38pF
	 pGYlCk8ZXmKaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F66AC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415499364.22763.16182483220823742796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06730ba348a9026a228355210288054687c166e202b5af3365cedd19bf5398d8
Date: Tue, 08 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744154993
