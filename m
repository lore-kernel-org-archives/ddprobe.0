Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8155A5BAF0
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739543334; cv=none; b=U7EIuaGHTZxvVxhn2N1LuAxBnJCvggAE3KOww4td7DvALkVAuwM0UVjUkU6WJz77XSxOXFef+GeQp4vs+9MXyyh03QvO/jKBSyPolBtUTlBvHgV7kySZ0EhRI+BXOOrbR2DUxYBrcOaU37S2h9rnS9eam2gZynvVmYapvf4+l+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739543334; c=relaxed/simple;
	bh=R3zGHZLp2Bak2xB6vxDXjKdKruMhwIzrtdmBj64iTE4=;
	h=To:Subject:From:Message-Id:Date; b=kH5tjBeYlzrG2CjAucqXEZljj9LHUq4zBIHTxl0ZjZqolaAnYUeKBrnpKF1z/oHAevFpBc5Rd4lxy2vsTznPNnYZ4h4fHrtuXL2XpQHK0ckChFzPDSat5VUuxL2V2aM+Zjkuz8D6qrTRNTgI9CtNMCiih2FdE41m7F5o7sxwddY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZifwDCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZifwDCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A282CC4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739543333;
	bh=R3zGHZLp2Bak2xB6vxDXjKdKruMhwIzrtdmBj64iTE4=;
	h=To:Subject:From:Date:From;
	b=YZifwDCBYEZXiwlPCtdJLIU11z+0V2bRLGfWyoKhaekuBc83vvvzhYZqb/rhZpT5D
	 SJMtoRHpuiqJYy2uLAZ6QCGW5Xap6UMkvtDBA45MMy0gaJHUTzayaSMzHIgvs9qjP1
	 vH2d9aAJ54WI0jr6v+P4BX3hm8qZxlGU6opEu6+nc2cga419rG+CPPENeX1IjbED9P
	 9jPnGQN6Gr3sofD50wjkjgojbBmtQ0dbzhW4OmYEKVkvsGGpCtpkY3n4SDgV8LKB9S
	 ufS1gGRPfHHcDCTUF0A75SUHBTTaExvybK2CEDCKmLbNbrhRau/qzHe+GKrZDDXPuo
	 srjHPMpLGxDFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92110C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954333358.19910.5515581139640991984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df46b47de9c4d12534f5cf647be65cceabdfdb4d27d1f3f1de53d56b9e6e4db
Date: Fri, 14 Feb 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739543333
