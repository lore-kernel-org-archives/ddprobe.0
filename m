Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1A37DA83
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727853954; cv=none; b=mG19jisLCZKFLfZXYPRb1IJN6dBD4O+5ePAk7LSFhXe/UDXtGJdd1njRgtItfHpuUMYdQNhQ4spI0bGYhGymNNZpLZjgJ7oy5i3cYpTVbY598CVJALFiCXn/teK0fYzejlyhHgRekTLrsO3d1zHyRkCzOYkH6+rDALVHFV1GtsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727853954; c=relaxed/simple;
	bh=vBbBaDhNpRgjZ28IEKNKNd6/t6fzYhVLDI0XN+CQ6z8=;
	h=To:Subject:From:Message-Id:Date; b=ANSQ5MJ6BfosXJZV2+/Cy1D7kSTPqzC96n82pROYlpD+u/QF39zVqsfZsMadvxfAtvCk6bZHtccp2KJCZpQJhBcfJT+1IKC0XFcHDu/WPScbegAnc7RV+gNI8HYlUtIhpyVIGMIm/dlXzFqwKE6DVNSkp1OP3o68UrDaQ/NCtAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mdti7/yY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mdti7/yY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C8CC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727853953;
	bh=vBbBaDhNpRgjZ28IEKNKNd6/t6fzYhVLDI0XN+CQ6z8=;
	h=To:Subject:From:Date:From;
	b=Mdti7/yYk72ZQrR1yO6mJ535E13sZytjV9YZnSKoi2bH98NRSp+ChRKKABLrVkKq5
	 6GtDr8JkKjZdNM4bOCIz5S/u7QAePA0q9q+/fIavfOXym9pvmJYbHuUUJMUwhAf3kA
	 o31WpyHN5CqdpwnRCXwloXH97Eg8QIPCJbtFSnVRoKOUOcJraq947wdFNe2RbyFunp
	 ND3SWNy1xb8BEpPVezZv58hthjiu8qqerRyWgtOhkomn1Pn9H4kUVYB6PIfWdPSVax
	 wXbcOqazWV3/oM1+ebilG9JXnmbsJ8yfJF5QMA8j5erqD7J9tDKBQ8I+m7qcXNqZiT
	 MSRI03LDRjqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFC4CF3199
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785395364.32327.15475736721786489228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7d231304c2dbe3a557558088f09e0e70fdeb6e6d4a9b69fdb43fc874db03ff
Date: Wed, 02 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727853953
