Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558B812EBE7
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715298143; cv=none; b=A1wFAyHlwOPLnRH+6TeAwyPmq5NB4V6+HC2vU7PYqkSRfybm88U0PeDOj4bt8yfrfikFiNtiuuHIfyoKGrGhIcCSYpwCJaSTjj9Ci2amK2VYfrgGgb5QHvYADFPvxLOMd9ETcsCqBqmqaAnVJZvpbLjTYZBCJ3ixRF5E7hdqZY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715298143; c=relaxed/simple;
	bh=zBVhDahx2SXLPLpLDNydkUjnQaCKMfVeIHjbB+E0PXU=;
	h=To:Subject:From:Message-Id:Date; b=TzGNJAxop4IbJAugnUUa306oF5eirrArJv3610yXX9JNb9r6Bj5936UdE6Y6w/13b+UWfTh+xzF7WpqlGoM6YB918pqNw4IiUxRyNH40CYjy3eM8GHTSZPsv0aFjnmbRwuLwG2BFZoDFaiqQ/f15DY5luFEpbsvSEDQDfPyCrlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwoBg7B8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwoBg7B8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C26C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715298142;
	bh=zBVhDahx2SXLPLpLDNydkUjnQaCKMfVeIHjbB+E0PXU=;
	h=To:Subject:From:Date:From;
	b=ZwoBg7B8PJlmEAzttjnxvX6PaMIT7gAaiWyKOEIKVuyCgf3GQPAfAuuhjKTlS/ONN
	 U3LrnOfbqQPGHiwHedNXyElbIic9ZZwi8dsEnFAuAKHlVzjF3g2v56sVVkor2FvO0v
	 SEi1p97NA26UVASuFpCHqBBXqNLkkGwOa38J9r5xR9bh884li6osVj+WOFRLtnlft4
	 bQt3dx03hGlZ0JcNVJnXwWIPaYAdmp1m35UaPaA2tMpqdRKr0v/MOsD0L/l86iJVlB
	 lb2TehJWy8lxgtXzHtyNim/5mql/OfZJ2hFazjnVmSvgaYtwg9Z07QLRbTC6P6wjPy
	 xCNfvvVfL1+0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EC6C25B74
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529814280.26578.15337304906276481286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c010dca2900eb949abc7943005e94d1c0644b3e02125e4c16d00c1dbaad7ad24
Date: Thu, 09 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715298142
