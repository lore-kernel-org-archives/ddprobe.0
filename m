Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D361E47B7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760788194; cv=none; b=VYXi5NbHD9/y87OuXdv/GvY73RQEynVZqoeUpJRBlXFWQ3+L1jyvuey8yBg14OUb5q05z39vAn/ljFNV+inQwQw0nGHqXn5G20bUC7R62bh2tIv/thdT2PLKZCkceSqycr64Cs9mZefRHcZ4yb17FhyqpgPEy/6PWut0Whi5OHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760788194; c=relaxed/simple;
	bh=bS9LQCIDuzkymPEIfsoWzV9iLqng0U76epDGRKIou9A=;
	h=To:Subject:From:Message-Id:Date; b=OIokcqjmJrL6M62wXIOzC/HpgWohDnhKxaeXCp3bISpN+jB8T2vmnE3kraJDQ9bygKKNZFTGGFbjiMLGC+6QdHDNuiZXYUrMAq2bXKYv9sIZfwwvGA+samF59C21A6LUPJ/HItS5MpLkyHnsyV64Wyipniio9rKUdxUAM5M+n5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdudgxBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdudgxBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D3C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760788193;
	bh=bS9LQCIDuzkymPEIfsoWzV9iLqng0U76epDGRKIou9A=;
	h=To:Subject:From:Date:From;
	b=kdudgxBs5fV/XV2BE3cjKdlpLXWfIrIzztzMK4wz6dUg7NewqhGgzus9+yjkHThYx
	 nDalh3ykqF7VOPt5fWGnYaeHJY92yIIEuff3BjYtm++oRItubWKxMgUmGZh4i723E8
	 tfdmY6pp4xNb/V7NWB7r6yts6fJG6d7aa+zdHdPHUJj1pjgkbZp9ldlYnH48z14CAs
	 UkYEF5Bf2hqyJu9zwsneEBq9FaQKzbo2ugoO6LlO7d1EWN4Hw8biLqX2bi+vc24ehA
	 +TKdT7gtr4zMogmiatrHJ68ZCXTWeqX2VtsE7arEBgBqBplqT+oJo7jDoWWNajKKUb
	 jC/3A4DiYM+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92721CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078819358.16182.3332647244784077023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e6c58c577173bb8f7081251969611a5a2f0c067823306003a7a7d53cf50bcc
Date: Sat, 18 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760788193
