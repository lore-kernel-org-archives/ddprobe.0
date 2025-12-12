Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD971F03EF
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765576974; cv=none; b=j9aNHot7tqAUXkXIkGeGFI43dpom1zoXhCC861Npa6ftfMgC364pc45cue5AF7Yxp8HZaoSJwS9sRgYCdTjJnvtCqGl73ayPtv0NvqBa8zfGUbveubfaNjJmqX9321NgfFiJm/+qFYUfh7g6DwFPUt/auZUf3kpuS8PT/F1+n9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765576974; c=relaxed/simple;
	bh=1PCtQi4TxRUbSDCX7kGNcw/uC+lIeqlRpqDq3U/bcz0=;
	h=To:Subject:From:Message-Id:Date; b=NS49NvvRH4ItwAXqspziov2DvUvabTtf00rjjKAxEubXTvrqdX1ZXmfCyiOWHAgjcH2Psun6JvlQE+x3B2ELzojQXa7veVnKEfpDUqAnIv1Bmx7fWfd9BQIxAHn6NpxOBlXI+aFHVYTjEyhj1KABIm8ZYGac+rN2uqWqs5byKZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYZOmuKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYZOmuKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765576973;
	bh=1PCtQi4TxRUbSDCX7kGNcw/uC+lIeqlRpqDq3U/bcz0=;
	h=To:Subject:From:Date:From;
	b=aYZOmuKISYoIDdmWHoLlmCyjJvW/s4EwmxH8G91KIvg8xflF2iGivpJEp8paJ1/1b
	 MH0pO9qmbO7XSBb44ppO3mxSGgU62RkJmYz61XVrEk4qpAEGebKL/xLaQqUmSHqRWH
	 8frEq3wtTev0oVxwwVbf/ZhVZ2VtF+/kkwpsBivtGknSc6EyB9fPr3rvVHsYIfK9tD
	 VlCnqJr3ek8Hj0+655eMLrawIJ9C40Vvp5R8F+pN2yfFjnJJuXH/RaT2S+Unh4ZCSo
	 vokQtBUfKfv1bTu58hHaq0j+b0E3aanER60bjXfCo3LbP38aTU44MpqvbNBGiCxmVW
	 mb+jaHgtaDyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9336BD59D8E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557697359.18003.7492256145611517568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b5768e82458255a2caa2d153e51ca760902324ec6c3816283db7cd85fa5634
Date: Fri, 12 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765576973
