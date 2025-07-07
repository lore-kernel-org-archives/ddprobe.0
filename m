Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CFA1CAA6C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751926794; cv=none; b=L+6Pqm3s+E+2oGVRPoDOUTMa5SoaYYGdzKsVPZmrEA4CJD0+PNoWUcjNoUy20XwiaqTwDTtiAzcW0OTwSGPpwqD9xSM9I2bRYuf8xdjQr9FVPlmKeK0mo7cWkFFRqUmNEgv2wQQLvomhmn8aORf59lLTEuRVPYLtFwUGgtheuxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751926794; c=relaxed/simple;
	bh=8IA//iUvwSrni0BjsF+0O6+a13HSJzJ+BhQR7NG6stU=;
	h=To:Subject:From:Message-Id:Date; b=nRYKSwH4gCU9nOd6MWHdowsyf+4R2DMuyjxEgWYWADe7zHBlJjEvwWCaqOMCcq7JTWHJHsdreeO9oGWvkaSyR5ND5XAeBai6UNdAdC2A968I5i98kKJOOeoYKigHE4Oi+PnNxPqV0Fo8uBrhCngKMxyXLeygA3PKw4QuwWKrquE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtDaA4wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtDaA4wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15EFC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751926793;
	bh=8IA//iUvwSrni0BjsF+0O6+a13HSJzJ+BhQR7NG6stU=;
	h=To:Subject:From:Date:From;
	b=NtDaA4wFK0uQ3jAIE8NWuVT/dazsp6EOQSt7zC5aqUYPfnOXCV/FppuB7agLs7ReY
	 DVqn4m+o9qJYZPpOch/Rotv72ccQDlE9jUoP1ffAgCs204pIlSbyI3Yn9rQDEl4Yb2
	 HHYFnk57OMyamcHqxmUbF2VCT5JUhwzn6el8qXYQZdR6VvBMVExa01cEsXMH2Uh71b
	 934qU9MXbhRAf+h5QO1/QUzgCpCXa05qPiUUWrdmVrRvIxgr/+Ga7TWbsn7ni0xHbE
	 03KO8SsjXVbz0c6ezZI5lCMkN96aBxjGRPKt2N2x4jfbcr67Va/FT0wBu/gTwa7er2
	 8+rL0baO5JZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B0C83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192679357.25656.14602207565253229305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7d92c768b1c88cd61a3acd6d2d5072e3a4f86d96da70babaa8e0f95f3e50a5
Date: Mon, 07 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751926793
