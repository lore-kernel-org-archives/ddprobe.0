Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DB638DD8
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722960954; cv=none; b=dxBko2HM68cIcZ+9T7JjYz0k1xsMbw3A8jXw26mcPo6g7RlGWjlj+2JrJB2AJlptNhR31EhYgYDmwNV4/zEFR+gHNX1qPCPDobvEmIbzniXHY7pCEzTNiSI+1zR7iFupm98+9DWiYdU5PiBE84pUuidm6AspOSWx9HwuiZbpqhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722960954; c=relaxed/simple;
	bh=X0m/aexlgOrPai0xAZo9+ntQTtwWZ5BMxH9n8Ft3Kr8=;
	h=To:Subject:From:Message-Id:Date; b=FARVQzkVA3X2d4M13LIAwgX0THUlQutLWW+0N6D1y4Jt8prt0QErmYC+PvpXyWBOk1xyiX1gPHLv130NIqOQmPOm7Uk2cbBpA67vC07/Ta2rV+ItmVoj5BphRjAMAS1wnqoXZBZ/4jvzwPuNXFGKnqBVpWTtjBHKL3/mMDIFBYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4v1/37V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4v1/37V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9ABC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722960953;
	bh=X0m/aexlgOrPai0xAZo9+ntQTtwWZ5BMxH9n8Ft3Kr8=;
	h=To:Subject:From:Date:From;
	b=O4v1/37VK6n53tgXzjf7oNN9IwMFSXy3mnq963PQOoz2DMdC0DMq9VY4kXp4Y9lOf
	 Bq4vc8LAfLlfMwSANtO5OnaLj5hTcc4UYi97yVAOKUqRp7t+FE8SymD7o3p1euOkTh
	 m64WHkATTsSjO3witFg2da3yKtzsbEi7EIatBwsLcAIX9np7Uikuv0SPwUku49lBez
	 Jf976U2Q3vR6RtaqZ5sJrEQAn8yEN3okVR49R+mZa35VsjCZo8Zirx8+MAO0OSB7Bj
	 u+39C7W1P4SkRl+U1kjjtbrgj4ovA0CtPenjoo+uNWmW54k8eGPF7MJMuhA5LxtMWA
	 ClSjSvy2/OrSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981CFC52D71
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296095361.29344.4978191383086166036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3069cb7dea012851e836ae68305633da11050f6480613c21f4736c0653aaa1a
Date: Tue, 06 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722960953
