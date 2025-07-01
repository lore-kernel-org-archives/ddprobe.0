Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233EA1EA6F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751356794; cv=none; b=G5SwiDo56hQ6+FDenLoKNO/Xtvlw+RBRxZI58Y1nPtW15sVlidgxnLyVYzp0cjkxUUOlpxOSFM1PWN2php8AfMdM8HngpI4u1jXTDQWHXtVHqiXq4bV0T8fTittgQ/ohSOZrthS4p0rbc7NWK4mxERNxXNrV+UE4LlGadyhaXTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751356794; c=relaxed/simple;
	bh=w3KCpbTGGiQYgAXA4y+vNemFUPAbIUnRR8FfHfgIC2I=;
	h=To:Subject:From:Message-Id:Date; b=JC0Lt3/YiVBmxv8UL6UaYaKAo3NZXYJPeeW5BurCdCRx/93FL2uprJVmUUeynIt1MGFXs3ny70Yi1t9fuzftJpjbaevx1zWxe+Z+EygAif0VKbX8egJqs/Gi1JXRgCaGFeSWoqAXyy23I78Tp6exTKuK68MZESnTM0KsLq7H1gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hqh+M3ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hqh+M3ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A047FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751356793;
	bh=w3KCpbTGGiQYgAXA4y+vNemFUPAbIUnRR8FfHfgIC2I=;
	h=To:Subject:From:Date:From;
	b=Hqh+M3ri1b6frkK7HE66t5Ix98eIKqlHdHWK0mp34SKMvXFGSFeEQ7NrP+MRh3TJG
	 UuKlU9Gfw/3FxHsQweNWukBoH1xRLhn4HRJMDHYr7g91c5s3RvE+ucQ5s9+sxu4vQX
	 viH/TmxZE33ZJlMhva37aPmxntBcOB4NSu7GhjYDJO08JFnizwIxPRshQgarPPMK/0
	 e0z/smHpcMyaxgNOYNmxt7MVCd4rOjxlXeMANVr3SQlNzHIKjA2mVz3sxcjh7FcUyj
	 22FqAISNrvTQswX/BSvrmDen5H/kn0NVh/MV6vjQALH2AlYtQMB0l4So8PyiTr2Ym5
	 /HatFwiKNJdvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A8C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135679358.5710.7890565618656769179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2356071e46af6d3ea211a396ea32e2209ba597699ebae3852109081ba57093f
Date: Tue, 01 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751356793
