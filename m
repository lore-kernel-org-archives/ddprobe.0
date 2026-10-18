Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A29640F743
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792319434; cv=none; b=TR7832hq/E+QaxMEA+X79zJkrSajjtuRvemvbh0Y2F2kMzes5JcABFSYkTCXnUd+KH858FNRPL/vK9z9s0i3jCrFiZ5vS+Hu69ZqtI0ODdI0su1OcZTWStwDv9TfqxZl4rTORj2SebzeVHuGhNuKYoiWrt0lP+b9Dr1Ms8sabYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792319434; c=relaxed/simple;
	bh=BHASv3qzX00VS9bf9TClDmqL6V1zuSu3TTO8VEG+C5M=;
	h=To:Subject:From:Message-Id:Date; b=fg4+RR8W1i4CcZISq3/cum/ynrrzgM40BSEQPZYpZ+8Bp6KnN+CagkZQy45Zucjv3p8Gsuqz4lZx0fX7TX7MnL+AKXWJ6433weP+zIIR9V2B6lL7oWeDvSU90A8+sqzBVY/HpOkjOaLH3AfMEGcmvOs0JKvbE/N9lbsUtr/14BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDWFyyM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDWFyyM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12EFC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792319433;
	bh=BHASv3qzX00VS9bf9TClDmqL6V1zuSu3TTO8VEG+C5M=;
	h=To:Subject:From:Date:From;
	b=YDWFyyM8zu/Tc02UPfPBEkruM4ahY2jmfJUtd6jdVvwrJ8OHaZw0eMJqJxNSJ/vPF
	 6o+xY5CCsVPAa9HFd/tBfSu+85CrMW/Bl2MLk81pAbavUYEhHiFIBm1OGBNrFGEqmc
	 hUf1u4Djvvvw49Sg0GHjUhq2uquUgTfBWLuog5ZNmdN64ttuyuGsHYC4lYAxiXWal9
	 U0egYSDyT+M1/dfyBOVWQ4W5zA7+4kUjnDSaKlpgiLVq7Y4eDZQsbrNRU8ufbumZH9
	 kdmmcUR9RIPSkpJX6363NNTD6zqa4wy3HeSE7GdShmGEBiFVJaLO2KoQ3Tqkzz3qto
	 7KLXFfEeK5dPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC43DCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231943368.2421.9090012800199383096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91710507eeafa564512c756f11007f57771c76124b6d336414bad8a58fa78ae1
Date: Sun, 18 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792319433
