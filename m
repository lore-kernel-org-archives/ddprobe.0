Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246C8211A16
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736524554; cv=none; b=H1MYgAkI9usVAhmbfTu7Hx9uKI5s4FxrbD8J5u/LjsoUvLwvOXHayXu0IAril6Yk6831nTLO+8PY9tkS7616UcHV0TU/+diuvlYQNWq5WTjY0FzMmG2sRe+NaiYqLs86tbGGAFAzzmvmFhvZCeVRlxXGB44fRoGE9kZt81/8buM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736524554; c=relaxed/simple;
	bh=jM1Py6nh76TlnDIQ4DWtbdPOT9Y17VcSJxjGlkfoIAs=;
	h=To:Subject:From:Message-Id:Date; b=KA/Lw5QsBI9jyQfTvLPklxwXOZWou+c7oQxewOjtoY9ewIp/ocXd2rg0MuFAb1vg6z4JVu91VdBDB0J0LPsY9y628VhWym5zLb/ZZ3jYaRtEayOGet4I6/Jp5GmBQNnB7bmaYqoiPvS1em+l8chRsGy8x8JIhbcYRN10Ccd7LWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lsc5bnGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lsc5bnGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A703EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736524553;
	bh=jM1Py6nh76TlnDIQ4DWtbdPOT9Y17VcSJxjGlkfoIAs=;
	h=To:Subject:From:Date:From;
	b=Lsc5bnGE19zkfnbOF7h/TA//E7s3oUj6faQJau1bK+LOm5raJa2Bs8o9HqGpv9oCw
	 aTlDMUv/9KgSdbYLORDvx4MMHSk1C/0WU2Z1qImRgytmGPJpQJ/Bsd/N3qLbRHzq9+
	 zjoE/R4tiiHsxs9MCIC4yPK3SAsCFd26YsAx7/PX29IVxHxZBYJYwlpv9sfSh7u1Xh
	 SJ1Cp2JoHM9aJzcbvHcCkRmlgheSC8/5WCwerH+Hd0di8eokI3N2QZcXnY9+Q2JdIi
	 k+HVjFXxgnwspL5INYfAuX/pyBxtvubS2U0zf8Cj6YzTGQP8cNcQMNdHC/M6EB8ht4
	 1HsjvaB3EKeUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954BDE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652455360.9702.8834839663757757837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27d9e2957511e8f0c614dcc2f6bc001e500420e3a2da80ab022b416aba6d995
Date: Fri, 10 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736524553
