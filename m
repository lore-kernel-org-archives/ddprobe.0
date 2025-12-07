Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E36A28488F
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765081374; cv=none; b=a8TozK1WYd7anvCZUG0MRg3vH1HAViq01UKai/g1f+f97qlANJEdsAObovIwaSfSRxLUPax5qCjdX7Ldwro0OaNxhxYA9TEclHiHx0zjnHbtkZh4VYWbS4bRseoHzb+4mWRkwSG7ola4ZRZpULgmXo4d5ZIMkXmSX6MjlApYRVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765081374; c=relaxed/simple;
	bh=BESmy6kWe3HCOfWY7sgRE6b7DoUylEpCOz35iNNPag8=;
	h=To:Subject:From:Message-Id:Date; b=fqgztDwZdr0KyMhwsMtmgiLgsq4qoSNykI14VPvjgXYumFwhc0Hs+Nj4eGTckeyOACQKWNabWySIOq60BQiUxN+k0RcnoDGdpGicn/ekJS0Em31SrK3ZLMANC70Fvxv5o33S1OxIohAFhbDTtMczrKKrtj8VnRejVF1MJ/Adokw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCpok9hM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCpok9hM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D2BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765081373;
	bh=BESmy6kWe3HCOfWY7sgRE6b7DoUylEpCOz35iNNPag8=;
	h=To:Subject:From:Date:From;
	b=fCpok9hMT2xkCsnxPMLlXHDgi3ff02d53EECxiNdFUWUMgXsAu0FoMkEaqwu4Cdgx
	 sffKedW5K8KWd+ZKwPF1kFgksUTyDjdt5ePkzmYLazr/HNJodaHvvTUcX4aKGaV4/7
	 DkW29vmjiiQV+ZnFKbGSCjc/C5Ar7hKXc5BmaY18FTA51gnDyVIcH1y6R2sxWjVDfA
	 fBnH+ZaRZL34+RsnQ4wwlnr7MC1CMEnZEbZyac1di+LeZWZrRIdURSh73/2FmAXg2F
	 DiKk/ey+rPM23/N0Wi9NCp8rD3/3kbQ5Z23lsm6BKroeL/Hv/1bQvGgagMQSKZSmZa
	 5y9N0AcketiVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D554D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508137361.31699.7411505605221448282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cd573625e89c7f253d2adbbb17f08b2a4b65fe0c79e52f6f6bba323eed3e77
Date: Sun, 07 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765081373
