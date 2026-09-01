Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7FF47ACFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788256234; cv=none; b=QOjcD+jfJ6qzL6XhSZ5E8+6OzNPnjsouV6IHiSjs9hHO7rgLq5UW31MQ5k2EqXILh+obHrPGs2PsbLXBcZ9j8icwugARbGTxjze6YJczgMspa4wULPyxPY7HbtwfXwf/6u3HpsiWvBwZCHvjVEI9uEFQGOjeEGoRnCWiHtvbc6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788256234; c=relaxed/simple;
	bh=44NAwERvepbAH5NpsX4NpWM2EaqGH+4nQIH4nR0Mr4o=;
	h=To:Subject:From:Message-Id:Date; b=Hz/nrPrd6CL4PS3eb20/h0CgqoTYBdjgiDizd0BPsn1mMW+dL2kxLBhMyYY1hKNBjMEwWpGXeQODJDUgZNBPNEcp352zVI1ss1znlQ5QOM/+3vF78spU9PT9dKXw0ecaQDETFdomaOMC8yYesuYCZlNj1iQY1ojnTD1lOA56LLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EE4+EKla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE4+EKla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF2CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788256233;
	bh=44NAwERvepbAH5NpsX4NpWM2EaqGH+4nQIH4nR0Mr4o=;
	h=To:Subject:From:Date:From;
	b=EE4+EKlak4sNfcv40isp6HGzJM8PzH6ey4LKWYt3Zwqmo0wGLEIhQ+U5Hu6NkET66
	 dj8JwRaaHMTpTafsPTFhX4gxDFmmc4lQj4+l/99+KMjl+N+qAcQvOiFJzuXoJLN+gW
	 A1sXhpekganTcNRi5XIocnAVTgnZVk/Thin9ssJoDoKKFvEELULMyp6NVeXj/VkiMQ
	 oqbYgEaw/fJlpGoKXrU3nWzqCfougerUOO93tYFT8ntGfY+vKqEPQaJFRyoMEb9czq
	 RZPxlnVDF/gpaq5abhdEeviO5xdioCuEtrr2MlUlwftl3iqduidjSsEDF6hKkCLfFi
	 T9AfmCn0xh8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4E7C624CF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825623368.4932.12813502314294682474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a31ef4c4da8ed1b955d34e7a91063cca330b210bfb2d3375e5c721468a93909
Date: Tue, 01 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788256233
