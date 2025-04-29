Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3869C3D76
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745938794; cv=none; b=f84drXUfIiNorQ/LpAMZk8VPpP6UtF5p4GpQaILrvIaXdfJ2s1Y6RjYW60fGXh3jWZmHSIVOYDBFpTfkOciwpgvW2LSqH9De+cE6EehEU5PokdZ4fiqUvjFG8bXu4mYYFpmsQVCjYmdXKpk3OvGAsaCiUyMgt8UGA0oQ/1P7F+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745938794; c=relaxed/simple;
	bh=g5ST1EnLjDwtiY4LSS3qZDio0zh+4Fae7YvCwQeDcdY=;
	h=To:Subject:From:Message-Id:Date; b=gP0+Ioc7HxaTNNpLvVhUFcXnSBvRIGzOise5bUah3lwPTT9IL5mcW4fc98aq6KJyYlqbH28lmoxmPkaeIZficKeOTDCulSPAp/WuUlmhOFzgcbrcFMyWjhUe5FiwAvARUkdL6OZJsh8faA4bEaTFeyh6doig8D8e9QQuUb8FYQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW+LDuvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW+LDuvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A617C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745938793;
	bh=g5ST1EnLjDwtiY4LSS3qZDio0zh+4Fae7YvCwQeDcdY=;
	h=To:Subject:From:Date:From;
	b=MW+LDuvzwvk7GCdhfQ8J9KqW9TXLIlxxWbYxQd2GnobVT6a4Zrm2prOncWpe5UI11
	 m6zFL6RMiUJeFPIx5eFAeqNiUzDr1ze7pKu7GrqMXfBRgDql913yo/oUWQZDySAUcc
	 qwc0cI9bsOu8nF8LKd5qTqZsKKR/2SLxNIUtt3zVxXc8rGIR/7iSunlJEgHKLKOIhk
	 jxDUMOJSNs4gskD5hT30AL35uXioH1A8t9tHc4bsLCHkkRU1y/XqmSb6/NYagkvFAR
	 30grQFrDIjTkhUrV6U1Jl5qg/1qmkyruV4nsGo/9rM5wfGkul72+BHlon0ZMpootBe
	 GM/1Zlb9NRrwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E084C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593879357.25581.1517576524106913463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfd5f3725df01438ab46bf9007f9130366b330414f32b53384bb31be7237f37
Date: Tue, 29 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745938793
