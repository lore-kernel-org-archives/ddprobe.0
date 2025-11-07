Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCFE258EE9
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762478394; cv=none; b=a6KD/OxjNlgg3V9VNxrQTafPCFd68Z1GZ+KhZCAzkgQqF/xc/iS+H0Fb9gTobTEUaDP8XYdrKe7zTx7IG8lIRZbkSQM+sXvhswCyfKYuK92MP6rAGt8qT8zxMf4/zXU63XVS+KB1Apv4Xm82mCQFbgtpt7HiBPQJcalCPZV5DVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762478394; c=relaxed/simple;
	bh=2Y52qSYfhDmb0rqTOgDFNXlftcrYPMFMJiL5UZT+VRc=;
	h=To:Subject:From:Message-Id:Date; b=bPm6crmL1a8KGGPisvkwvmlUNKXgOtFwuhCYVRT2xLSE1UWuTfez6XBQu+YPJVRiPpjhezOCEZnLXlvt2RfsbBRMNFRgvOQjwgQl63TPIzleEFgn+XUuQJkuEeGVKXALBJhs23uVkEt8BRyho5dTIlECnPPazZnUowQPgy7r6yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDReMHwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDReMHwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5476C116D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762478393;
	bh=2Y52qSYfhDmb0rqTOgDFNXlftcrYPMFMJiL5UZT+VRc=;
	h=To:Subject:From:Date:From;
	b=gDReMHwRSpG7tsTY5ZfIJBaPDlxTt2l8wZGoddyhoqOkdDVVa06/JzEzzvQJIEwXQ
	 KtJefOdTJUqsBzvQnn3rIfecnuUjdkuUHxUv4I62kybPR2wnxzySDTm/EwpsNEMsmm
	 uKYsGgKtp+ryVbEPyrVlrhO9EpDLMmk7rcr3DSLay5VCBL0HNPXZxsBXG1EmnNVmnq
	 9liTKvNpvX5vYrwO1t+9BIOTiAU0rWN3OChKeRFoEW9jjJo19zRJ3eoQkDvvi4YNNY
	 S0BOrVEe2krE0XKlctXftoC6J/vN1awp99ePc265Rxo/eFpuFVQpIOBIWPaqXEQQmn
	 iuP6V+S7qL9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95148CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247839358.2238.18398006490005798339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e7b27cfac3acb89102a861d3a07c8f269f08e8e58ff79536b915c87a4db8ef
Date: Fri, 07 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762478393
