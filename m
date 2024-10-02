Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2749D13CFA6
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727897754; cv=none; b=ApcdsDbQGvdXGjl0T5X3V9kvuPsn+x0YkEfLTbqjv8V8CP+J9U5SdRa5zs1VvTGrYpPvH8c2WWH8/tV+DFA1eRTt4dAHuYq8rs9rGoO9RatV/K3lFKHD5JLnKdZFtgDETeklHBn1N8scuaobssJHM8uGckBZVe7ekfQxLTt5zaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727897754; c=relaxed/simple;
	bh=7jEkVSAMeJekO+tRtjRMr7ixguJ7zR7iz+PKM/YlMO0=;
	h=To:Subject:From:Message-Id:Date; b=ueB8qMwkl2TNx8akiJPR6dLbxw/vSs4Wyvwkixzbnhcp41pMmFtYvdHdx6Td2yp+U/b+GHh0ru8G3uK5qvfQz2WcGomC/EiNTtgLMjJd7sM8FAPGs7q4jkElTKjm1Ht10DnBLX8YJoCr3HsaeIC/uhnwsVIySNYKcka71f32OiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHU9KACP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHU9KACP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC2CC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727897753;
	bh=7jEkVSAMeJekO+tRtjRMr7ixguJ7zR7iz+PKM/YlMO0=;
	h=To:Subject:From:Date:From;
	b=VHU9KACP/TlYXfzZ6WG+ZcMHUVuNZAPYtZuW6vToIGSTD8bBZcNULR7wGuyVCumT2
	 hR0rmwx/KHVFD9FEq3HL81erGuL+RgB+Bw0YUY037h6H/84M2v+46XNRHvvuGQw17a
	 Y4UxogypQV/JxcKIxRECq3aMhkGHZNPJUqbyYvzBbE6od1cEFHbLkgBOxphf6Onk5J
	 oR4lFmEVZPsRsFW4xi0fmOgSnMIvP4FeoCiaWbJiQNOycHbh2/Ob5n9brNJv4vDfkx
	 yCvFTk99Ok16hK3bYh83vPpP0H19eHgHt9p+zfh80Gh2aXFHJEyCTKS3cwYTAS3tfH
	 Hz6VltQouwuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C97CF31B9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172789775361.11540.1500300403830932654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5330651565bcf4996078fb3c1f392b389e1c53f9d4ed7ccf7dba1a1ddd61812d
Date: Wed, 02 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727897753
