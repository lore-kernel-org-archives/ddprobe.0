Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ADE15689A
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747465794; cv=none; b=fpk3fIlcSa3YPPtLPVGC2756VeQlwwgoEiNerUIcudgmHs6yU8ClA8ZjbhFa0uszZ5yTZVX0Y+CNgH+JpBKzLXh80ElKVytTQ4P09UnmHFbe7/XJdz/8UnGfqhPrQfiiLVf0UJFfkw5ZtrWUOcuMB8i2kBlSYurWzh9KdXUeGQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747465794; c=relaxed/simple;
	bh=q5sI3zCwMIUw+f4grQ4FFp8Q3Kdtu8INBMGU3LWMWpY=;
	h=To:Subject:From:Message-Id:Date; b=JCIL4hMFeA3TEAosOPRlw3iWJGMFDKFJcT0xpHAEnL548+dv4KgGQ3STxSWVOlIb3AEJL2rA9hochA0A5A/uQZy3x2P/BlHS8LJA1/aM5SKfcZGanb2rdCUSwCX8IYXlTU+c9KVdOf8DLXl0jadf6rzsP4JKbtMiQsWlb5JmGM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbpSW6Rw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbpSW6Rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747465793;
	bh=q5sI3zCwMIUw+f4grQ4FFp8Q3Kdtu8INBMGU3LWMWpY=;
	h=To:Subject:From:Date:From;
	b=CbpSW6RwFhfLK0cJ6FsHECymqw41A2Lc86qXP1TSBTlzOo9mLT0bhBinJTdIRYexv
	 7Aw5kkEfXK0kl91Zy8jfTdd/egkU8jHzQd3qYaCvCuTN/AfUjNkizEVVxs3fXy0ZbB
	 xFXG7iDjeQcuZgZxOJXGh5IVDkCFMX2xBzm/XvMnANLwzRsXvpdl5W5D2QNK6QRi1e
	 e8tnrq/+OHYwH/LksHqQ6Z3cBRJAjfivuPGlkvBn+EH3x+Ockr/sMVE7Yj9ZhwAOUx
	 2VSlmdxLsJEw8cihOs/LVBipDwCG/UPXIEICWjKzUpSHE/tAMm9RT1d3htQKXadJoT
	 Jxc0AuBUOz02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921F7C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746579358.29263.1750464763474194292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081d1b9bc55e9b0389caff855853c3a9103892c16f61a036a3a5b7031be2c116
Date: Sat, 17 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747465793
