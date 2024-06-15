Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D414501E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718474303; cv=none; b=uyeVv2atmSWq4wCQZnuacmW2gWi8JMItWJhd0B08cRmCE+RK+QxutEQ1Alqd5HSAlKxN+b/n0uqZCeY4/cc/DQSi31IQ/+dpv7fMl2K+32qYMupRLJfQSnINUEueCtmzuJ/boUcJ1A7mlOrKaHu7rhxz+DA02mn/U1p8N+x0R7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718474303; c=relaxed/simple;
	bh=My2GDZzp1d4sc9jtKY35U12ndvHmUXENa4/L/mfUePc=;
	h=To:Subject:From:Message-Id:Date; b=WFUV2Kp5mc+jDnjlxa3YGd73zXqZpAiK1onGbypQNaj/BDN0C2Nx0s5UXC/vIVhiIBHmV4f5S7Z7uQVhR8cnMzk4pQzL2WjSaCrhBGSvzGNttDbPayiE8mFpuKp5JSDBm9rjBidhU/EXZEAgneKSDT8HNc/F8U6qpcAR3ySW+c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aa0PLQfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aa0PLQfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E6DC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718474302;
	bh=My2GDZzp1d4sc9jtKY35U12ndvHmUXENa4/L/mfUePc=;
	h=To:Subject:From:Date:From;
	b=Aa0PLQfTAo5KwQOAj6Lg0pSQjuUoXTETXaWE6XzChr+2OZ22rMrxJyYSy92+v/1j3
	 0ZJNHVLnXTdRCgYKkcX3qe+p7p0/o9deUaEUNq4lbakbzXClbvFqmjTUpoI3V7kPVS
	 Tkqj/2467aNStkKTjTDzJv3UWeJM5fkS0BR2rMW14Ie6QIfZ7zkMPoDDUQscl9lXXW
	 vfoVIRbaw5kEBrRQZVsOaBPgKFxdaPAKJ6J4qGsYR8g0BBW7YOORewIQoe6NSI8RpQ
	 2+hDkgbh0Fh2kSMaj5UQn1BKj5rxpfAm2G6ZbokLVoOK1K0Iw1jICmn0aGHKw9h62D
	 tNqAi/mOcSZGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5EBEC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847430283.15042.13123868713049404999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e949264ce695db7f3fcdc90b4969e8fc323e9159550f4d83b83ea028ed0d20
Date: Sat, 15 Jun 2024 17:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718474302
