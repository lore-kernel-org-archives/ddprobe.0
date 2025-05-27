Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D8B15A85E
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748318994; cv=none; b=PuAym8m/LlmU/MSmzXcY28o0HT7Z+uh9bcQXPTCLN8LAWvxblXKO9WwBPHge05qFGS1+17R/nOTVTaLpSCzJpQzNBOnHJfOOv80G9OX7mjAZfg9wzBjaP7p06baqRkMOsRYBHHHNjIb4haU1HMiJBt9RkUniuOoi9u+uQOFfVpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748318994; c=relaxed/simple;
	bh=yIb2xcRQKjW5gR5PVgFOqZafQUgD298PmyosmjTn1HQ=;
	h=To:Subject:From:Message-Id:Date; b=F1eCJlokAXF9joCCnIjOEyreJCHL5DBWOm7ubaqhFBuj9QTjCQSTT8NI8kiVSHJEox89GYGGtiQ4XSEPlVEA68SLHEIRfguzCbtvQQevEk0Tyh0q9eMpTND3gUROF7K4Tn79OruUM3cz7D4Uq77nqTKfkzqJRG3WtlJ8967thvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cr2fvt7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cr2fvt7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2130C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748318993;
	bh=yIb2xcRQKjW5gR5PVgFOqZafQUgD298PmyosmjTn1HQ=;
	h=To:Subject:From:Date:From;
	b=Cr2fvt7n/QQdKlyFqoMskCyzwsEp/eGPe5w9wtgTIM2TwaxqCjllDm71yHxWWys3A
	 9+OV+RW1m8mebChNMVm2Rqpvx08GkIt+J2MDK4C/1QkevObJL5FYLRH4BCU2Wm6N5D
	 /AMYIqPqpKRLCIO128aVKMwd9TnA0lALARZsQgZcVkeIuiZQ380w9Po8hGk2gUS/1V
	 Sh5w9j3TeID3OrYzT2M4urWpHeMlCC0erw2b4av8sqBTnGzUCyyUCvZtAoxX5uR7Es
	 ao+je6XOf6/cBzi2q2Ze5TLvyBjP3DaT0ioAASv9HOGvOJr+1unCXooMNjBHNctV9J
	 v0aeyj8uLhg2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE5C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831899357.22711.5810135339198391691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9be4b3c8e89c0d22f12cb837e2de3a7b1480f643f5b94c6a159c4888831fb75
Date: Tue, 27 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748318993
