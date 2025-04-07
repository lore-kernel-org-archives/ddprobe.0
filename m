Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D850224FD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744028994; cv=none; b=aYf+AyhhiL8wiDEmA59XUW7n9IgvMK/fH0AOnYuxXFrg/4ly180zT22c9pK1+6d38bz6pEQdhC8dEIMX0Z6nrZQImdnNQaaLfhKHj81fbAFi/JapESH6g0Em/Nz9CH6D+4qmnpCpd5mZy/k+h2hG7xW8cwyO8avpef8T6mKXxbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744028994; c=relaxed/simple;
	bh=xl0i0M7GTQNUVDN5zqKmNhRne/kUKswbWn8BGpzP8qM=;
	h=To:Subject:From:Message-Id:Date; b=Hu32+Ixx4kl78gWWQgQwMDcXCVcQG0UVp+d18tMcZeWyltbw97pvlX0jn4M1qz7X7Afwmt7KAgCqmkYUgDsEKgXrEvWMzbW1BW3q52RL0gM9KaBwYA14+oz5kw0dv/Gb+4gz315Y+uJjCFIirzq9D++RP8Y2Yr96WtEJykMvxXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUKocOR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUKocOR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71B6C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744028993;
	bh=xl0i0M7GTQNUVDN5zqKmNhRne/kUKswbWn8BGpzP8qM=;
	h=To:Subject:From:Date:From;
	b=tUKocOR7JAAHFy6IQQjz4OBfunXT/FXT5Ud6xM3ht4WcEdWmBJCLQP1sFwEGH1VtF
	 aL1Q1UVuu2wWr1hjclX+KJP2idyCbr9VoRJM+X+L97raxCVKw9yzMBlGPHW2d1GBlK
	 GnQ9ztoXUTC0+VUdE4AWh3DNeGkueGs3cXJvuVqAerC5CHVbNSXRMZLfle3YO9lxW3
	 vYojjW34VUNLXtEqGga3oSc5j5EVT6UyO1n8GCljRwcxPWthlOLiXg0jFirhRY5F2N
	 0Y9p06F+l+uNrYXErRGNJwZAWgdpIznxoyxo9CNFqt/DE1IzqQQ30tA5vqtUDgBENC
	 FGy7fmgS3tc7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A815C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402899361.23090.11030370832427774635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f37ee42a15ac3cc2ac07216477721117c11da6055691cd985b1f97d37cf23aa
Date: Mon, 07 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744028993
