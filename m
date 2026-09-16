Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEFA4BD35F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789578034; cv=none; b=bxUjE+PrbGylnY6ULkBTesq+96ivWo8c8HY+FRbT3+IHWsfJ7sPzi+yP50rwJxsAFECbExzLQkSbqDvlcwrQUrpBuBn8IUAiMX2n5z8M8d52FJKAX+9/afD2Oh2eBOySVXZCIQyPMFXVNORQnAcE4OdByR2yiRDGZ85sK+AsGQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789578034; c=relaxed/simple;
	bh=FfbR+p2F3eBoEWIozeDZjpNJz4ePwMGDQCzsH5GzVwA=;
	h=To:Subject:From:Message-Id:Date; b=VAUw0FXOQkdMcmKnS+eJBLDVN/HPGBNcwdB/zsfZiSkwhh96wf6n93VuOWm7ucmXb3/CisqbjqteYih9ZqUPJ0DXDRCwmm4J3CO6XrJg0myTXNfIfnrSY+z5DZi7BmNPuHbY3AT+OJpch00aVwcI4M/QFt5oCvQi443fB5hZ/E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc87E1PF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc87E1PF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AE2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789578033;
	bh=FfbR+p2F3eBoEWIozeDZjpNJz4ePwMGDQCzsH5GzVwA=;
	h=To:Subject:From:Date:From;
	b=Cc87E1PFvsQRLSFS228IxS4nstg4Q0L0bY1ziZnKb08E3bvbiF7NPJrLTw0rLr+Qe
	 3RNVNjlr0iJahCg6IkZn+EkFUVBoHvmU+LuJwBm2e1pbvS/t0j4nnYkb0sRzs8oOOt
	 S+LnTT6lRbHp1QhKXK7VXYA/9tt4tTpKQUFATWskvSEmmY6qmC/D9RUwZ/97k9bl9P
	 ZZGfb96qNLlcJEajZiFFFRFgKvnkkC1xnJWzCZF6cM9g4sF/cgv0wCit54RrzSBSNj
	 HaMDS/yD5l5XuBWbUW7qkk5BSwf1sZdlWVGXkMuuFnOBHJZxpzs86MlJWbq8CDbCRL
	 NOzbuGO6CoTMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFDDC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957803369.3423.12688271516158088114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be81f60d0365651f49dd8024a7ba61ac1d715fe9c2f2f79100d390cbf85cb4da
Date: Wed, 16 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789578033
