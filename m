Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30385B67F
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746089394; cv=none; b=n+WwaEMkzf76VhmedUDY6Y0bWieLDuOdm4hoJfZGgND+AoMI3nay8cyQ47fS4vAK68xL8c1F87kyGJrb3s9zrvSeEsSotV7xQKEfCB+XKwcNxUhN12dVezS9sSn5+ffo08joKqqRNwuhJhEx3RJwcJIT1Nb92e5Rk3CsWo6/5OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746089394; c=relaxed/simple;
	bh=/1NaEaU2f8lZd0xKXx/47tRcFo+O1qEMp2xDFtZn9KE=;
	h=To:Subject:From:Message-Id:Date; b=EBTRtjZ8TSD7tWUVPUksRR4S9ru1tetNlSrocB8VQXHl3fiRAZPYAdc0uE6SdI0nZLBMNQM+h3MgLow7M2X6csoXQoMQD1OjK22tHzRpUcE7t+vR3HYLA1NEBAR0INUH3JsMXJQZPeSRbShRk0Hci8q7CIix0QySBm40lGunbmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwxvdg4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwxvdg4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E2C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746089393;
	bh=/1NaEaU2f8lZd0xKXx/47tRcFo+O1qEMp2xDFtZn9KE=;
	h=To:Subject:From:Date:From;
	b=hwxvdg4bJs5iyj+S3cS6MV0cWt2Wqu3YIaVd4pEJGLMmGelbz4jN6oW70p0G2UMUY
	 /JO4gQOVp0tm1A/UlgzerZofmkXC3a+QjOeZPxdbGiPPYwdzOI5WTJPi64KeZGPWKx
	 7bXvtXqUiEDqTDnfAgXw9sUIv+5bQdfZzxVedEBXGSPzQpeJhn32FI4uYwPlqsi4yN
	 g2Zuj9wCmQ6x+rrfQ7N6NKdH8oZFg2c7FZLVCOuvnhnVtW7RTucXAfelWGIjKRyaJb
	 wKGdjn1Yopqs0du03vHG3/niukk8vZ7hR3huKjPb1rkcS4mUIlxGnmsgf71f1/8dKY
	 YczlDrtwiPwJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E158C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608939357.20824.2528070437487821480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fefeb6fcd4a1c62fbb9cdbaa905f180dec06f6a8ecc3f2beebc3b0addf5b42
Date: Thu, 01 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746089393
