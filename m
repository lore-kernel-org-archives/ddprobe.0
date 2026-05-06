Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273C0346E6D
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778072854; cv=none; b=j6icdxRpLP16BkrlvvySO3SiRgYPo7BfJ/eMMWcpHLL6Fbh4/2uwKZgbalSzRCAHX/dUWERyVQ9wdQC2DndktQefIWlOfTymW5WbhKBNm4kCM2W7Q4nhdH0SvYLpHU3Ma3oFMcMamANfVIUwVwbbdaHVrLTnG5acHQqxrDEl+9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778072854; c=relaxed/simple;
	bh=nsFyGGn5zoYmm89HUysjLzuwZk7yQx8Mue2DXvmTlu8=;
	h=To:Subject:From:Message-Id:Date; b=Wqm//Cptzf9b8WPEQeouAzPBiPFnnYc3IKrtMoScRbRLYgiSn1rT+jDX0rc2llIvzAVg0YNPSx/AHaTk7GYYstC8R1vPXzcald8rhZhGFDPsb6MdgZGHzwq+N2n2imLOA6tC2sjYaRWtobt8q/BRLXUmQqdhII5TTxJLbiXFjTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbOfVBgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbOfVBgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0D5C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778072853;
	bh=nsFyGGn5zoYmm89HUysjLzuwZk7yQx8Mue2DXvmTlu8=;
	h=To:Subject:From:Date:From;
	b=CbOfVBgvqrdHj3jD4s/R5Ho7L778HAiUZTHqzNtmZNTt3Wrkvg1ivKY4V+fBIDX6O
	 m/PXq0Xgxn/TkpJOcRzMdaoVaeruTpl1iOPjAvYYu9MYshR321j6PNMqXcV8A1dPvf
	 GfjFgkDIWIkciBtYYuJwDjrG9cZkMIsDzrhKL4EaOttH/RsHySIffJlkSrzMfx7OHq
	 N90ons8KDqAf432fh4Eoi6QDwMFx8robzN3qny6qhRkaSxZMGmzSrHQLD2YVC1Lxoq
	 5PtvYKzpVCeH+CdTbq5KbIJevcRD3yx5QW/L3H2d4N6zYG7lceF7FQHl+v1JhFOnwX
	 SGXgOOfojYfcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB15ECD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177807285369.15240.12956540641817927187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63825e26633cbd777ae05cd1cd3ebbb9483fe356b3925f93268af6e4c4e3c9ac
Date: Wed, 06 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778072853
