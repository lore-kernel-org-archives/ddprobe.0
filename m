Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51108343893
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782923914; cv=none; b=lMuU480Us/usWdxWTn3TixhVyo8AS4Bi6LpX1G6Hhux2PRIsninqlNjKhypCzNkAA56pX8+Z6CfH4Y0A1QGQk11jM7mxVNd7Ws+znmwa+23Q9CmlQvwIXbIld3bdYbiqlITlemQNKinu1LOK6QIsj87bEfytaRKBH5rdXYCNBKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782923914; c=relaxed/simple;
	bh=MunU/o+fFDuJTEBHVi/SkUBnZoXndO6o15Q2bzecWgk=;
	h=To:Subject:From:Message-Id:Date; b=JOWIMGs+GwFI18EbFrm7HDcnMbFqhtFUxjTOmU5MWZ3hgPgt+yqqnAiakt1hasFCUVa0qFHvHfIQ5pned0VOb4dJ15DIgcIYgV2I7qk4XGxzc9v5+SUmVwiV9vEjc/KuzYJHc9NlfhTrHo7IyqJvgCvld/eeU8yMmwk8MVsmE3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+QdpCJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+QdpCJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12BBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782923913;
	bh=MunU/o+fFDuJTEBHVi/SkUBnZoXndO6o15Q2bzecWgk=;
	h=To:Subject:From:Date:From;
	b=n+QdpCJANPWOsKAsLe2dmFmoVjKb6qRaNOvN+2op/cVfGRdjHJoA262xAfCEcl3DR
	 SMZ+UNJHsTuEJBrgPvNJgvMepi+F5mTaBfmdmotEpWv4Ntf+JNWgkNMQJwNEOPA3Uq
	 BQBiqlh68y8/uIxE3d4JiSIYEReEhpmxw99fgS+0edfdwSHBKY07bpZFeLIVRjbvAt
	 jbR+zol4fY4Gd8Ch+pSYNzdTLLPP0d+Us79K4A1/w6Agf4YeagdvFMQmHjl4PqmYZE
	 8vWJ2YyBAEi50mS9WpxvY5fOOy1sk+uDViXCZzL885EXMcbWe+xXzl6hRhK/4g67yF
	 /LoQh6zNXbKBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63DDC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292391373.16925.9122901083663719590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd83956441ac7ceffc113d4d9add6eda44ab12214455451dc8b3d6fc7e05028c
Date: Wed, 01 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782923913
