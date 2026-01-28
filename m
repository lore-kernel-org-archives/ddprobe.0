Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2022D279DB1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769579634; cv=none; b=nU2Sr18dzZhOOKigoEz6BerWvkMblR8SACaTbMORrWy9CIGnwX/HLU999MZe3lTgYM6aF+aLnN0v6MpwyBJC28yqRSfKoZ0wwWTH3MRudfYHHD0A9C1fTel5ZfdXDATg6rHXs4rfsXQtlB3CeuVH9rqQ8fof8Wt5NmjSCq1DFQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769579634; c=relaxed/simple;
	bh=6nEAD1GSU0cnhexTwQFO7LhM1g7KwsgEMcF9AKq2R0k=;
	h=To:Subject:From:Message-Id:Date; b=HOTm4jQVIpYrp1Xd/GsNg2P9NzC2+l4/SXOydz2vv7/bmSL0v4c2tFRDbTvMQjd1fRRwRJaWLXws8yd/+hby3B6lmyHmrWat9MtRgUXfc0ftfA1SKVLEApRWSooS1E3xbQY7QV9sLNtf5Zw8LSI/crlV5J1XhQ/HbZPtJwXHHPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5dxajy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5dxajy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F78C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769579633;
	bh=6nEAD1GSU0cnhexTwQFO7LhM1g7KwsgEMcF9AKq2R0k=;
	h=To:Subject:From:Date:From;
	b=j5dxajy4Z0nKyD+EWNd1d/IxDqvE2KIRFUCvguoYhfSHCDQXakkcWgoOjNWQsAgCE
	 EvuswVuZMo87SJavJbbqpqCBLMzCb+gohdUDFOtYw6/cKZTRmaXFuUrZ6BtBOrBz9d
	 nUDFb28GeZ1Da5vWE+3vyrK7N4P5DSlKHz+vPzThj2IMSFTpoiiUKeM9Ltojl7Ay6A
	 blUhgRZTSXC4LMNEuOKRjgNhFqILx3bbYraGkFCWp9m4U25gcW3/Mgoghsm/p0FSf0
	 dFdR8/tg4DIufMMFuIaXEMIJKMMwa8E3gfwq1ZY6g2rECFo0OQFkCgB9HeXQKITHHz
	 VA7JAoCGADu+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15E3D35678
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957963363.4825.5126301474546352158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c825ff625b944b817025b535b2057c53afb21bd3d9b711f8c80de7cdb12fde8
Date: Wed, 28 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769579633
