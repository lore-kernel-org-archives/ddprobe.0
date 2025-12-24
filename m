Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5F11990C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766540634; cv=none; b=a/FRz8KUcLDHRb17Wn+4OK5cBrMwryTFJa1szqWxsRu2X9WtTpqiJZTB+k4Shzf3bwm1v7ZnDIFaqdHrqrvFU+QB4xAD+HOTwqxbQikHtseJUlg73xFResHMKaDFM4Wtw9sAiKZRvdAxdXnGy8/uuyWYd7ck+HKPA1rv1/XQmhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766540634; c=relaxed/simple;
	bh=BNDujqnhlmyk42Y/LlGeztEYSXDAA6Wo02/eC4m1pfQ=;
	h=To:Subject:From:Message-Id:Date; b=kLgPSF2/fUYa6wUsK/rcBHzcuXhgPMpmwDGpZ1YpqRDF8WhGL4wFoqVRcf+igOc3Gc8naoJwwnbW8AJAJpOaZFdvH4DJ3pgkPH9+effINZGYir4C1v6/3DrW6zW0cabCwV/9tCjstDVhVywOvEPJpEH6RdjGKdKjAfGRTqh1dS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dgvny+Sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dgvny+Sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBEDC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766540633;
	bh=BNDujqnhlmyk42Y/LlGeztEYSXDAA6Wo02/eC4m1pfQ=;
	h=To:Subject:From:Date:From;
	b=Dgvny+SwIqe4gIwp8N1mZW3antTZm3ymM5A42Rs+vF6HKI6bGv4N5NalLTk6Nn/uE
	 njFzkIlUudnupF3yb3+DR+tNB58o5ajaqQSZbqub4MozUhTRjL+zuAPPO2d/EaWiBs
	 TMac3dUlmpj7zArkA4MF2St+Ok4StHLekQMfYHlqI6sLuuP2vCBVTlMJRBJyjoH/x4
	 Rh9kJ8jeCj1YKHEoB4dMU662UI2EI0f4iWJHPBX5/7t9MC+jiV/k848OPPStQAp2BA
	 +ldOHuTUQy9tqsD9eFsj/ZkrboS0DM9u3LF5f/wIR+JQLrjuIXHnQDbFy7bzl/sT3W
	 mZT7Y4FqwW7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90358E74904
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654063358.26175.9659988824351282466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e92d2b7f9f2b2d93562f226e2e70b68361159067c74fe7870e8f5b299b335e
Date: Wed, 24 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766540633
