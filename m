Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BA84A5C48
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788367234; cv=none; b=icvHFvuZMa5oWZTn7zpwrqGdTby/Wsp+d5qnQqs5zbtBNTmOpQC+ssIZJwJ1AGJHk7ulet0CrCjYNt0mj90of8dVtyTP40wN4VNmxqB9e1U0A8fkbhPX1DyVrTSg9YbZbULOCtKwa4ifSb3lPqG+SKzm6UIgjHmSsYfGUubIrVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788367234; c=relaxed/simple;
	bh=l2I50jSz6eNr+fgCs5br5XLGyYP8sldrX2zpTWlmjvM=;
	h=To:Subject:From:Message-Id:Date; b=iYoIVHsOFS+Il9OfsKZr5AzSz6ruLSRpM6lkAsZn9xcEt/QEvdWKIFL+Uz7dEqzbuG6EEgWt3e/nRHgmA1x6iyZqz3CtzVL6jS8HblVeASsIuinFO0bMAJECjpoGq2X9ni9K8dipHldl2cupHY6Pi7yp41vC33rEHJwZb4MCuSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdc/OQ9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdc/OQ9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF57C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788367233;
	bh=l2I50jSz6eNr+fgCs5br5XLGyYP8sldrX2zpTWlmjvM=;
	h=To:Subject:From:Date:From;
	b=tdc/OQ9fdo/7LVl5mmSrMkdjKq7Ky1D5kzbxUv2r1P/fywzZQEod/+R3+GzOk+asU
	 MEiGqZUCLJB+IanjBXPV3K/YY83MumDmnd+xOp05uKyejwFQCcfs5TGk4mT+BjUWvc
	 2gJX5P+F9w4sWFZMYK9pERddZBiBTbo9lqlf+OfpRHlP0LPcV5qfrPZxeiAxY+WD4l
	 dUKMVIgRqPt5/d6R1y9us0DOGP5vqzP0tb2K/pM/5E1JsUYDq0OWMHy6RCj8b6bpkT
	 SihvGnEkp4Fq8lMnwG0zgKqjYYfq08BuNIyeGtVm10vfWxTqDNZCQwK3f6zxa+elSI
	 hBq2CJ77bOqJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA72CC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836723368.7768.7381204770058749040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1853275c809d088a6c7c942c00b68f4493f0141b8fd5da3e2ce821f433a4d28f
Date: Wed, 02 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788367233
