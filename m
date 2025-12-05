Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE5826C3AE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764928974; cv=none; b=R4HOpT3NFHcpbOWR+rg0Oh0c9lZh9JudzsnmvJrfkWWi4K77NtEp/CCDJdkvdX81IM3AxFQQWkddf1kKsNfLbaN6+AMAJHTw2D7DyUp7eqI7kH8ycdI7a5vk+Kuu88UgN54wZ2lduaYoVzEjMkJS7a69yw2+PSu+iktTy2nbsH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764928974; c=relaxed/simple;
	bh=o/LGjYMOJywml0KTGxywvcITENavK8wm29Zpohg7ncQ=;
	h=To:Subject:From:Message-Id:Date; b=jQlfbSqq0cZvKy5OLmlHHzR4J+d4nTrDgPcMVTXHwXYKXGBr1K3zUlpQ+K2eUqOil1+0k7Oxs3UgghhVxb71VpoKuHVnuwkfQ7P/+XZ5nz8iIwoEMU9tCJz1TL6MeevvH+67VBMk6L91QDZGriKMiNwCSIrU6ZM40z6/VC7OHOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouxCY3mQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouxCY3mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F0EC116C6
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764928973;
	bh=o/LGjYMOJywml0KTGxywvcITENavK8wm29Zpohg7ncQ=;
	h=To:Subject:From:Date:From;
	b=ouxCY3mQ/CDgSPBCdyXsCWNK+y7fzklxxHeYmnGIt7mAT4YunAn6KtPFz0jmbOdj7
	 626Iezv5i1Mi6ODdzhsj6otcB4yiWuxNnzQexFGw3pEYvVUkQob5LqzIwCFQ5T/Z9C
	 E5/CuXywyzLmOD6A8CtryWLZJT2LQvF0+YK2uFhEZyNTaXp7sCZFwwM3T1arXL/51K
	 GuQNCzG9KLKJff0llv5MGfdSFx0O0isODa7VaAiz9N5KA2EgwVW1gMhTrtsLdfC0iA
	 sJ3CY6Npu+OlIj6y3C6SuBnUijGelSG2ww+wIZnJAmd4au14fohoV48nPCwTeazy/0
	 EP2yZpY3/YGiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97975D2F7CE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492897359.17951.7705236318115980648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7709b17e27cfa45782291c9b02f32fb17757c47b840a73531a22085e5d918951
Date: Fri, 05 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764928973
