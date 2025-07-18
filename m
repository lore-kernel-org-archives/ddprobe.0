Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3601218E20
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752866994; cv=none; b=O46yXersmOugMkC5cHhybqjzpmUFMLZznaLBlORgx3mYUYSrtXFJblR8qj+YXowU54L9g3RH9Mflnq/cRoRGLCtoCW75esDSJW6dGHX0F3uzwA2LqCq9u6zpy2bYSLdnS/Cl/e44Mz45qjxRtwXzroT8EJ/1KRgUpQ/9hHjtPOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752866994; c=relaxed/simple;
	bh=JamT00u85kAOILrbq4gvlH5W44fTfCaemcDrb0s2eFY=;
	h=To:Subject:From:Message-Id:Date; b=UocIDVGNLl/3XYaKV/XrHN+RWPbvb7YUUPqb2xrjjhfFVHBdSOtACw2J6ZNkx+Cv+VBZPMjBfLZM9m+i5smHrwEqDZVUu2WNQ4YuCgj+5/5/49+aPfiTxldtDUa/+pYAc40biKOXwrmulaawVBEbs+XuGunkXW0nbskNRRa3gtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJ7VSykT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJ7VSykT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BDDC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752866993;
	bh=JamT00u85kAOILrbq4gvlH5W44fTfCaemcDrb0s2eFY=;
	h=To:Subject:From:Date:From;
	b=RJ7VSykT8/O4UP/5POyJq8EH2aXHJFt+tCKwNLhbgLOdl6oEzNiuBnj+xmO1iUxyk
	 h3D/ksk5ysrBp+x08ZqNWT8lGOIImVOOEoWNgvq1OBITCGjvfpdsO0ZAdsIr35h7iA
	 nnmdVouOQUxmatxxDAA3XdYEsID+wHxksZE++FJ7UYCBf6Na9qb7cpy1PJVT3q400E
	 iz0+kIoy93VN0y4Ax9zY7PcMI9M3t6yn5Se1H8LNwqjMPS1CMRYtdRLx1u+iDMbnl8
	 HGaxdik2f4IiUEK0TWjMacy0SmyFuUxsI0h8XlodziPLxB4x8M0yzfG+KyfZjk8cm4
	 KDDPv5ebANbKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9FC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286699358.17812.3459972311560256472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d38b30d683d2db77990e34056c9377534c45c84bab0cd5e85a8ca7a0d2b8942
Date: Fri, 18 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752866993
