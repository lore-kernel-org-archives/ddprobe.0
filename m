Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9534184540
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768131233; cv=none; b=CzV2moOKn1FK3ICrGpmzagp8Ay2/rcpdTv8Aiu077lDlJPwUFN60gFceQGKf14f8imVSG+8XY+5mEnHGeEqgSTotpfqkqFydFkvje80CGIxWbep4sawn978amkXmrJr0U3Okt1cVfK8SAZc2cUYR5YWIaHCEb71LhTNLeftMHqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768131233; c=relaxed/simple;
	bh=uIUBUtijYqYg4nuqF4RGoUgS3E7CkpXXvlHt8qXBBOA=;
	h=To:Subject:From:Message-Id:Date; b=O9nGfsrftTQbBjtN9WxC5SPnMNcsD+6OxZbk4CFVQ4BeG53ZP+J2pWp9GOVeMj5a0eoP9fTCp0Mv2vR+6x01BxlhI32Jt5AHSeLpBZuwBAOUeRM0nrg8jE3d7OMEd8i9PJ1cIltuimWIS1PPGTCH4d4VC6uuJrWICSLzfB8ldjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbXxgnYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbXxgnYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A225FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768131233;
	bh=uIUBUtijYqYg4nuqF4RGoUgS3E7CkpXXvlHt8qXBBOA=;
	h=To:Subject:From:Date:From;
	b=VbXxgnYs2rXa2o9d5Y7HNsXPzqfug6xzFBRMMfZ0FigiCs/iWFE9PB4b3O4Ghu4+k
	 UoxhmVL/s1OBoRryylQcpSi+cYMO3FFDY4lBwEmRRtWTL9ExeQGM3GXZ4Vd1JsUYtF
	 +a10YdYbpkzTVR1yKpDkDei3+sMz4SxG16B0u0KbYeZhPSDnPFtGB0C2WchoOBYOtB
	 qUve3XwptqysrlY1KG3gf90YwCY/Y0ypIptFGmUQ9qBb4E+pUtvG+0BqgtyQejGS2l
	 oJmlsyhr4yiDTCLX/EoqeFv/96Kx3z6OCutFnUJvjv51WHBlesb0Ka0IZz90GvNAG3
	 Xu6ZjA6q9omqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94275D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813123357.30073.10300984520914364199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f64214b37640a4b738e0b8428965bb51dc2083fae57557d9902a16d68432d88
Date: Sun, 11 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768131233
