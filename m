Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3480818E20
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752872995; cv=none; b=EV4ClakWWNopan/WBXMQ2RIfQVWXjfL9wFami9tzBogaK7GJtaW8LnvhbQBQC6Sk/IiU0HGahk4O6fbSBDG1CKkEBF+HVkXdmekUC12BjCJODRKv2+T2+OZ/qxhul/fP5YcsNH5lVRgDwWPSuSSpvJ71RtAAwjzu+Frdic8InB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752872995; c=relaxed/simple;
	bh=ottOy1zB9uWcKS95cNKtl25XpKeGzmgy4vABPJKB25g=;
	h=To:Subject:From:Message-Id:Date; b=rPiWqeZ9swDUuVPK1T7oSQOMQp5AVWIIdqE+IKxhR9WpqsxNInX0ErCZ0zxVxm2QOWsJ0kutA2loP+5/B2bMCUG/6Hh+s+0y1jnY3x0TbL9OF0FBaJt3SgsLOQYPLerG2PpF+N3+sMazJRrkfAmYxaV9t9P8a7fARZmfLPzJFrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVD8aFB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVD8aFB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52F0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752872993;
	bh=ottOy1zB9uWcKS95cNKtl25XpKeGzmgy4vABPJKB25g=;
	h=To:Subject:From:Date:From;
	b=nVD8aFB0VP/tRzVE0lrhUJ3/i0W20hY2s2j/BK2cFH/0OD5zDhtvQ/H9Le95i2Sge
	 Kw5FTUnmOLsr6J2PAIY7XO27P6yu8HAePz3glpfeHfEgqMEL2biUds3Y0BTZX/jGf9
	 vtL/L7288cdIJRwps07wf6h7qWbkT6FKnCIhsDD0hSdpnwkOkgmLORCQ4i6hyK7+67
	 GGqsO+UU5U0zlelwrD6Bx3MHiJsqhJ0i1mkIxk2YdbCZRGbyFVZBGjxtSm+M9cqfqc
	 t/rnpTh5eyZ2mho+iFltSV/y48CVzkgtNljsHADDt6GzqPYZUmMD039kFzlb1Yxden
	 uHZZggFmjhtxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0084C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287299364.7237.16800581913717281622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e29a6a1188d69423aeaccafc6e8753afbe62da65f8016b3fd2c8f55a8b632d
Date: Fri, 18 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752872993
