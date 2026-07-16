Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0C73BD241
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784195315; cv=none; b=rkKxpufBA5YcJdCuJT61wjGFU/sJoRRiMNXjbxIfiWg+0R2L6fNl8dUAng1/q1f/DKaUCAwU7/7KIsVfyYxNg8KsXuurJMUfXf/WUpoYPmDqfYd4cCCShq4YYNTpdU7oN1fFE+66EggNnYRoJx78GXB4xCV5SXzgr5CsLShwwac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784195315; c=relaxed/simple;
	bh=Juaw53c6/MzNLLePKwG0vXmIEaeGEbA6bXBK25fvJYU=;
	h=To:Subject:From:Message-Id:Date; b=ItIxdBZpV7kPJbsnjbKgmjpWiG7Fj0lXeukpyOxlFzllS5uLw4k5PYT0amFT06WJWAA4okWFpTYt7Qhi5kt02V+uFv5R0Jcgc7cKS4kcdTUnAnpyymeS41Cdc+vNbKWK+tsBOw+bZ3+XRjaQfurBOG9Ytd5GWGmufRk6LLzSEOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkZoR4Ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkZoR4Ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC19AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784195313;
	bh=Juaw53c6/MzNLLePKwG0vXmIEaeGEbA6bXBK25fvJYU=;
	h=To:Subject:From:Date:From;
	b=lkZoR4UgBW/QVM0nwYMBujudrmKWgkN0twYV9UdgeB+eikX7ECZcqkewouAa8X7ex
	 XW39Ta422jnfp5lxfATkZ3Vtx2TFYt6SVB54QAxFfGLVvuV4RQI2gtgX9AZpQuQkqc
	 oJdjJw9h7dfa926OvE+DZ7zvo2Rj6zoC+CawIP+IfYYPEdL5Idwtz4EAMY7RYKr2w7
	 WqUx6UidJAq60i6AXwhGPFjijIISqIUYLjYRv6X2m62FrQ6KRHQKkWILh/DyzI4BFJ
	 lortkQq79TYkBSwAjfMNhqX/yYUvOToDAVHs0kGfk4TfS0Sed39tkK6UxwCb93jI77
	 otfLfS8KB96kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B8C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419531368.28071.17219038356988725704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb00ffe9bbc40775b3667b5dbaae1544887c00deffd0d4b191ea7f998e3632e
Date: Thu, 16 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784195313
