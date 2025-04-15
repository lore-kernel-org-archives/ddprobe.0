Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9201DDC08
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744719594; cv=none; b=BO9VsYfJoyiVUvOwlX8qwuTO4SmzRubbJeJsDgWEntR0rxRvzg8/zbB7BnGeHLUjrrSgOL3AJWUKnD/S1W4YunqzGuMw8teLULsYRfLI6ALY57dUD00PdsoNe3xDFM7HBZfnZpEupfCDANyqbZYn1tPcWXNJ1756d9QtQcOUWSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744719594; c=relaxed/simple;
	bh=wJk+5T5P/4W6Xrbdh3iZtGTg0s+FEHCKwX6BwuifJ+4=;
	h=To:Subject:From:Message-Id:Date; b=NTBghgsyefR4NXW+lR37DNgiRrHc2U5Ccvjd4dhWMv6BSdNe7VcDlQYIwMTv851eCZP3QmObi5jAADsYmBZj+PVrolieZ3Bg7FFMuM5w1PQDYVKyJK2m80iS+3aU8fg6YGrKNnIHdHX8GtoT6czI04J476avNK0qvchap9xrWwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQB7IsQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQB7IsQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11CFC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744719593;
	bh=wJk+5T5P/4W6Xrbdh3iZtGTg0s+FEHCKwX6BwuifJ+4=;
	h=To:Subject:From:Date:From;
	b=QQB7IsQAyAwkmHI30WOWs7rT0sfCPL42Kb89h6LRtpu6nQVoyCIevnywQDWiJ3ik0
	 dlpvw8W2ll9x6/mLe3SYdWhBtGXa5PElr9A3x6QzTS6u9cgv2E65aqC9njBpj7H0FV
	 uetehiQnbWi1xbrMBBpoDMZG9uo0YTfVfxMngfCP8SAPoI/meElLYAtozOy9TCQcsL
	 TzuRv1G7FFLalG8gjqTaEujeDArGhflg1Y1MfMWByYjPeSQ1DlqD9DglnrFzE6v5pU
	 uXz1hdE0/qxaA/YtgxCK8xT4z3fjL9w8Up/8jBzhmbp+cSq4x1eE8O3NVZOkDhWzGb
	 so6mKdH0jjzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90883C369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471959358.26742.16490364929930948522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c8e6e4c13aff41b8dc86b952a15b5526105a64c7bd724379eda42c0317b1c7
Date: Tue, 15 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744719593
