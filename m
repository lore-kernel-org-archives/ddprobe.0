Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4555132937A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781161594; cv=none; b=Mb2sSvHwMkgLIQBkj9Ua2kX7EHJ1mGjaVAwZCRGpuXqPsKtKGbDnnQUNEy70tIj0yGf16OcD7jjflgiqsnr41chlppj7/qnvcI8PMyTcJv/2Mi3i3rCdxu1MwGC72z53f9FoXyucNJ/X+K61LyLFzowmM1Ul3gnAJE4MSya7EKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781161594; c=relaxed/simple;
	bh=SEL6EdTC9TCrUQVXgWg6HdHP3lxN4vJdTxopfpRsKP4=;
	h=To:Subject:From:Message-Id:Date; b=gAw07Gs4okdsKRmhb4CcyVYSQOJQfQL0wCYnfuiIEmQmX4Q3lE9N6PDp6ixnlEThWypi+Rz2bkSf8oP8tueHanmxKw/KfkdWvX92xylnY0iyNzmdkv/wa1vkoCXf4C234YUK6RcfZfNad0RAvs6pVXdW+quubRfBEF/C81LBd1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PW3WlW0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PW3WlW0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A78C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781161593;
	bh=SEL6EdTC9TCrUQVXgWg6HdHP3lxN4vJdTxopfpRsKP4=;
	h=To:Subject:From:Date:From;
	b=PW3WlW0L2lfcFD/+X6UuwxEibOXiUJ2W3Asr7g5/S52YRalqMkz3zmDNfybiUcMvv
	 s1N4HnhVqloMtLvL6nQpT3Hw4YXAi5XZczAenceGmSVl+eQISJ9mb+PTdteGj1m70C
	 TSdzMAk0DiYUFIK+6BLz8SAHy85zhp3/vkvV/1uRh7jaQx9J6mFl0/U1Lg0uv/VS46
	 Uqb01QH/0rb/C0H5i7iDyHxZhe+oBezP40WJm8giUbBwS+3nryo4EQRBQmgSfl6jbl
	 1zLzBC3dqH2x4Kl28WqY0k+9d4XO64j+FUCLNWqAAx0auqXB0kx5HiApoXNwdzIH3X
	 0yYsF9FLgBOcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CF8CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116159370.9054.5403920800282399755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ddcc4e5863077f9655ed83e66b4c790e24c62c87901a96b3e10028f682cb02
Date: Thu, 11 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781161593
