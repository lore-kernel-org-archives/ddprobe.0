Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F6B8F4A
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765131774; cv=none; b=FljE8i4v05g7CzT4IvOdgKfhKQCoBUNVL6AG5EHbp2mBcnpiXxFrmtm7P1NJjjEd7qS5TBLDQN8/VezVNBGx154eh+ToqtWSybrrDHjbY2ieICWAJYqxlOWuE1h41Cty+MLBS12D6uj7mBRFEjI8enEtIyaXDU3cUgrYMNYy1bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765131774; c=relaxed/simple;
	bh=pJJVfHeydt2KZNHDrgKDV+jmbbwOCvlYsz/pyFqWDRQ=;
	h=To:Subject:From:Message-Id:Date; b=iW75IVQ00Ac/9iFh567NAFc+rk6AB9ktkG8JHq/kqo31IrEex9nCHG7Gm7ure0q3TQ8CyhjIcjh03VmwnMmdjHM8OFVwiMexrDkWHFmP1UfwhLmpM3mAPVLulHXdG1tmqsk70Unl7FG3FJ7BFcEG2ECBJAPQnvgW2bcqiJmBvSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqIJLx8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqIJLx8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0724C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765131773;
	bh=pJJVfHeydt2KZNHDrgKDV+jmbbwOCvlYsz/pyFqWDRQ=;
	h=To:Subject:From:Date:From;
	b=CqIJLx8thHxvtqz8ztayC/gZAibop/o7Exx9FloYkBxnLdX2VKyC1TYKuEjLFHWbV
	 n6psVLyehWCadPaouojEvxpuEb6k7mi/OCwVWaEIFeOWpc9JQa9EjYVImG7RTZJDlp
	 oIdhP2DlxSBq9ihxUOpm7mK+BulfZZf5jKwsVDTRKd5IWuhMF+n+7KayF92l8D2/bc
	 +5v4bFabOL2YwmiZ9asp1Gzc7jXBVKKhj0qL3mKkaewRIM8lrcTRXC8kl1Ttcm5sy4
	 GIba4QR6ZOmwLrmIk9ZUD0AQodICPHtsBp1ZF/YnwzgL2SZNdOkbZVNkteuRW81jkd
	 MonwURBAmFE3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D4D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513177358.27483.17936380441702421584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42214ee7edc9a39eac4a2b9d67919a0bc4038b01e41442f7a0c020ff3eb8d37f
Date: Sun, 07 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765131773
