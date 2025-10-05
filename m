Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6206F06A
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759694994; cv=none; b=AwRT3SkpDEh3hLaLw9YR3jBmggbDMrIiq9ZnTwbQDRY3afoGNLjUNXklLPpIFJneHLW+leTf5VYXVxslH3qo/sodmq+s4DKkeh8UYxiliVHCUY7fFoTY9tu0xwgdaqkFqHbxSUNwZzfuNezR45tm9woQtl7LQqlAVWntMQII8Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759694994; c=relaxed/simple;
	bh=JPmxDyDE0zOw0vDxdJlqmO3CjxNECPo84wh9XJ0T7w4=;
	h=To:Subject:From:Message-Id:Date; b=ULbQarsV1m7xNjemNHcuZwifsszzMWmzGbi9qjPebONEn2JrE+XV1RS8kG5EezcX/VpWv/lTpWKH+nzgQCdhyZn7FyinmebtTtCuTtRXp/TVf/mcvTyQ1BnNSZRBQHBBnmAS2So9ycFwEVQmLBG1VLUK5Y6OGAS11QosE4qWvBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnsYhuUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnsYhuUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9909AC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759694993;
	bh=JPmxDyDE0zOw0vDxdJlqmO3CjxNECPo84wh9XJ0T7w4=;
	h=To:Subject:From:Date:From;
	b=PnsYhuUo3DukNXyCG8jEnqnr30RQlJfROdWt9YYhWCsZGRWBV7Zl3U/oVS8obajz7
	 dTB3ks93ObLZFkRqFwk3v8a7l7IE+4KU+0350dgmbtp5OjOYoodOvEJsu/DH7U/eah
	 uJwmKmITn2CHDFAkFweiceMshzUMcMrt5tIaK+Q+tG4R6csVufhK2vY97q5m71mF47
	 iGi5tof/Uizhy+zpeVDXdtuxTQnRMt//q3p3R4wtNVuOfvvSGdX6l8vvCWCa//O/1l
	 88KxjX+AxMEatDeO6FrByhxSnXRBd3uuVKl1RN/vC52SpM6yCljLxz37hvN9HxUYwZ
	 ULyPqyYTaUKQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B5CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969499357.22379.2666355100985140473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb77d87f50503629f61646b7e528a7fbc8f938c43c688da4e10d2ba4652db54
Date: Sun, 05 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759694993
