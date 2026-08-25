Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556E6329C48
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787682034; cv=none; b=cmjBJOMh78ZQxuzoF6ld1mrbt9cReAAcR8+LpGil+wiflGGe+BbvNLRYK+toH4IEArqNT27smaVz1lKIUDOiaG446K/TmtuVgvGQctTs1Rypj1lAgMwc3IPjeRz3SyjtedqCo/UfRAOHPVLaON27DCWR7Qm9ZkJqyTrJXHHXclQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787682034; c=relaxed/simple;
	bh=5+wBDAfzbhW5uQnaDwkFLe6dhZFF96MDA3ZuFVWsx1s=;
	h=To:Subject:From:Message-Id:Date; b=p1dAgEH41sH6J7euYXfpKRMEde+f4BogGrlXuqNLpGixtK4rKASKQ/CC91u7Io3lzuyiYU3YUbtwUWtbI+oUyeWobQ2m3vC1yOIWisH80ZP8C24MPWHOvK+/Mqzhqlb6gDAqfErj/5VYhz7SPsTPfmmvyzY8Msxv1fCUYQww+XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK/cFK/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK/cFK/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FC3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787682033;
	bh=5+wBDAfzbhW5uQnaDwkFLe6dhZFF96MDA3ZuFVWsx1s=;
	h=To:Subject:From:Date:From;
	b=OK/cFK/RWJnElnnPM9khttMrNWFIreoaG1uKnByF+LHNuQom5Ca8TB+UfobFf4Nfi
	 1hijtKlP+hPMKqT8ryHOfejpu8SnhcMxw6prKAMh/4t4wlZMxwbka886ytg9eYlgfn
	 50qCrUxmrL0jKkyyps4nIRNb2tO6Lls7IapuKBHfCnqPkpuCrrXmpD7VHMYllPr8Wq
	 SjvUc/Ai6z9wjYs5PbA/fJYjQSYlV0UDT+OtCVHxd9vMQfxcY68HRZ6IP6rhNzjZqS
	 yrEklW+9JIMX/XZa9/SxzkV1yeV2AxNYaG5ZkWgsfU89rAPHIDP6AlQ0erJAgvSDwu
	 PMRYs65Y2JX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C89C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768203370.5427.5370982767047141017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c792d2d37a053158a0779dc783b490c71fc2e63d166a0f4e84cd43c587c2623
Date: Tue, 25 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787682033
