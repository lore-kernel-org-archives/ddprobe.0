Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FABE31A54C
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757009994; cv=none; b=AeOHOl5cV0FGP+VAKcFlLMQmVScirAF5A9QyqbJpzjvMYUKWyYxcYug0gBntchi/hybu4V6aipPo2sLlrI1V4BnLCa+bs3RE/18PmsWSWMXZUvMaAdrfjKo5i1WSbhda0yd6gF0FStnffRTrFGO5B4YmOpXSYhDfUobXJVxxkfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757009994; c=relaxed/simple;
	bh=5gFFm7CKi9pZh8ogCGAYp7iH+9IN1eklCWDOLfvLX5o=;
	h=To:Subject:From:Message-Id:Date; b=Qat2UHDvVpiYJcBeLeo2fh33nbum/UHy0UVB/TYgN6UcPAoR0Cjhyl2RGEuVHUfE8cg/MzJBkFguQgsxjSnmesETSHQf35z65aYnHrKBTN6yVy+wNLEo9DkHsVSUI1WQh1JDUF9n52dtDmwHGZC8nyu/jSMcPK4l3br+7O9r5RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHeYHuwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHeYHuwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C55C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757009993;
	bh=5gFFm7CKi9pZh8ogCGAYp7iH+9IN1eklCWDOLfvLX5o=;
	h=To:Subject:From:Date:From;
	b=tHeYHuweAVnTjDAhIx8If+jHhGzvuRtTXX8VGhp+84rhmOnE/NLc+ALdGrcPl/zwy
	 zHZ4tZCHfJl+MrbcukbxZS0tcwquNvZI/H7c64jFuttaoS4GB52Nd+BLa7mNAvfJxM
	 TVobRsOhHbcM6AYb6t8+srHLv5B7uaWxMyL3I82nhE9wglokCk0QFgReTLy4rTaJOX
	 CSNbejvsqG2buwyGUjQvcHkeYQY3mQWgHzQ4/5Q26p+dfl7lXkOxoQpxIy6BdBtuBZ
	 5F66RchgQmnFLrnjLxFSos+WrBxuPMGmWKR8U5swd3TPf52Lt1LG9LupzTMqAw9iTE
	 JHIlA8IOjlcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F576CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700999357.572.16285845190588994507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803aef8ce438b014fb7a3390ff03f9e993cd90368659c84c383a4ba72efb4b8b
Date: Thu, 04 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757009993
