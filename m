Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA9C2F4A14
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784356714; cv=none; b=VfwYLsgCuw6xNC/wQZRBhlDjBnB9cw58vLkVQvkEuAc1yQ6JNpiRWxFjfwr5HzGRPMmte1NfVm+k6dEA9kQQMbeERzjyqkZW2wL3Ctx0L0tW564MUEI8nREKiPNv7txU4N6xCs0Si4mK+D3VB2A0bDkZ3+ZvpXzOGgR4Rr1PkaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784356714; c=relaxed/simple;
	bh=XWQGqDcmBJ/WLGqD24S3npzjwVXt70M3r9oamJe5HbM=;
	h=To:Subject:From:Message-Id:Date; b=MKm2xRQdzl450PPpCuPadFK5mpkMZWWLfnfiSEM67ErnbtvnN+BlFZxYdR1tfBxGFb5ZbufoOIpiwNgfp06aRm18IS/bcMaqxmQsPYAe1WBIvRdjHCGySCZ3p5uUJ2axHtxhUuf2CLsT54gE0VCSVwS+B3TxogOUZI+ClRydolU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7xqBTIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7xqBTIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07C3C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784356713;
	bh=XWQGqDcmBJ/WLGqD24S3npzjwVXt70M3r9oamJe5HbM=;
	h=To:Subject:From:Date:From;
	b=D7xqBTIuilhZCVlnkpk/i/XZZJ5WvaA11aLRPIuHQ3LC+uqXG0ne36CF3BR8JAVKX
	 fdr+F7E6cHlueUDroiFtQHgckhumCTV3+nARtLFM0xHEjxbmC0TwbKw2BuD1VKR4Rr
	 OZtdq1UWsEn04mB3VWL4hGx74gI4GvTvTQvK9JTKKkQshLXv0DUBUlHZH0wk/Ahgfo
	 h+9q/W6JsPc049OpH+ty6c59mgZwA9iJq8DhRuoFdKMyoMakTjwk0SfYp1ZkpuuSzF
	 edPjrz37Q5YRp//oJF9z+g7r5LU0ffNxWkFDqM2kp2rs/DXkDqEidmJ/hU9a+QRz0W
	 fc2NoLYU9CTXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1FFC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435671368.12231.5130653310169694552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfd6c333c1a0931d6ad4cc76cbce9315d66c1de38d53a23372c00397e42d092
Date: Sat, 18 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784356713
