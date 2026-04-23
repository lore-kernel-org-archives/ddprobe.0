Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67BF389E04
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776926253; cv=none; b=YxE62QbhR4hnWoItRr4jSB6NDPpQVntwVMHRnnDv+Ftr97amqTx1Dtc2YzTDYwthdntJ+Ls6DsaKCZIa00ej7JflVwvrhbne2qXlB59Nrdm3GDLGd+X2BjRY7QSrmem2fj5+nfJZ90eAPlzljv5x7nMtvieLJVfhQsJSNZSa9s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776926253; c=relaxed/simple;
	bh=Gla42byBGinlJ4UC3r1wd6iGY8ARoFoB/iNRylGYVRU=;
	h=To:Subject:From:Message-Id:Date; b=h1YtqjYjINc0f+7w4V3pKptTQvVYBR2w94dAxDo0wzX5CeNjldHZkacRpXrOFCCp0FlC6PZJT5ISt9ulwGA52pB18DEWuYdMEG73gd7rUr0ARErIQVYh4nwoEuxIa0xKuMKKK3WObAygU0D873bHlxek612D6+MHub32OeJjm6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5gsz2rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5gsz2rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D8EC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776926253;
	bh=Gla42byBGinlJ4UC3r1wd6iGY8ARoFoB/iNRylGYVRU=;
	h=To:Subject:From:Date:From;
	b=s5gsz2rgIrvUX+j++rLQQnWB/HJJR8FqN+gLKa0wKCAN9OAlO9scxbPBFceKDqHxm
	 BGhgh/gIoPa8t3y71+9WgLSuPGpK1uIjSt2RYWTImPpS63bdbWgBJMsLVnwa133gZC
	 DKrxMk4mmuzSkw1wN2Km4dXHWFa4A/edY4OYJVJkmUkaNV/YawXv7Dz52ORf4/bydA
	 r37LtfLRs6c7mj04RfP5OGg7eKMq3zsN7cNSbmxPEcpcj3x7QEOXnXATEpTweKEh30
	 xkA5a/i8sV0ESgYMI0g7qVokZjocJLguzwo0W2lnT0mCPh+cY0mqO+PJQ6ZRw7bleS
	 fvhiXG0kF4h9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA1FAD3E3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692625368.16962.10585274498221428210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41a796b05fd84c7e09cc83f6b8e6793e455b9fa1f531b0a6133fa0eea2c805e
Date: Thu, 23 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776926253
