Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF6F19D089
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723577154; cv=none; b=JbsJUu4KihNn+FCIU5CbOV5e/jUy97sknJqWQaSghxLMQmN7lqzAvH5ZFAW0O9qt7Xj6PtfAZgwEm1t/1Y+CvwDaZuw4u50q4TloLHmiyyAOWawHL9LV7gy4BbLEFIMzlgoaJsraMshMvLhJpdnFFhMy8JtpbVOWLo4wKqKiix4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723577154; c=relaxed/simple;
	bh=qHaHS13lls1GFNnwmPzYSlA/QooKmhBEcyaXFXBr6Sw=;
	h=To:Subject:From:Message-Id:Date; b=Wk3bEJW5MqOadOZ6qLZjCeecsHT8kB8nFFrVdxWt2w3mXMGWZBVspAWKDM0tuOW28xdQZVU70fZV7F/YFEGh8GhPlNv+dWRCUiYKXUkj/UCMxX+EIEYEKQK7X5Zsl836WnUEBpdtU0/REsEEJcBcM72W9LxkwXPxCYjUccF9+jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNx/NO4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNx/NO4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0CDC32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723577153;
	bh=qHaHS13lls1GFNnwmPzYSlA/QooKmhBEcyaXFXBr6Sw=;
	h=To:Subject:From:Date:From;
	b=vNx/NO4fNaueS1dVHrGy8fwffUNeHkS65sknHff21JWM+kO8Gn5Cgk4eAvKnU8hbw
	 Eh5bENEGWvLhE/DS38aCxg9hJWPTrtqpyUXszb+Awb+LfuBWavM4kbRluVaPbFKSzK
	 D/n8BDSphbe37mR1bvmQ7ff0nCMdXPea/V1PVoWMNoOCPppPQKj10Gb4DdQGINE2m1
	 SiVoJ2ljSIQ/N55WbgnrqBm3KLGiEvuMZ6DjZHuatS2bvRwq6hkrVlA9ELJl/5fEXJ
	 iwIwq0+nMyQSAODAjji8+zv+AComIvu9YYJKQnmX/wjHTuPI4EpjkjuQk+97vDBW6W
	 IKxHmtilhQmvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DECC52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172357715360.7342.5243615632342359464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2ac45a7012fa3ac363eda15f611c271eea5c28b177f96194000f013a6f65dd
Date: Tue, 13 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723577153
