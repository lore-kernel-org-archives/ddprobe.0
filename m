Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1434F30C110
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758146394; cv=none; b=d3m0iRYrRJbDzO8KyaHUoxWtmsbSVB3oxiwIIdU6doRys5oGuY6KbhI9j22LwWbXsX2cAWq9Y9I8FVqBykY9CxjkXaqD14ZBuC0sWn6NBk1symgjuA7ciZ+FxFwQYr1pyW0E+yV9NCz+nit6wSjLZdkUM0yCxcMXMTcuBnGf9q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758146394; c=relaxed/simple;
	bh=WSaXxPJ1LXO7+G6zAiY9dC45Nn0aalp4zXL0QAfmM+A=;
	h=To:Subject:From:Message-Id:Date; b=pdwjghIjYBCu/O/XcWYf+WazxcjinjF9Oz3bUlP81Vy4+Wd8+QHffXebhKlBwloJs0om9HEGfZ8l21eToeoqnOYrZTDRmcsEyDePwWxuR0oXl7WXWIh9+jrcvvR3eV8lQO5SFmkPFb44D2BZ76zePKZ3lLFzk5+Ftq8vfwB3qSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLqFcqvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLqFcqvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E02AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758146393;
	bh=WSaXxPJ1LXO7+G6zAiY9dC45Nn0aalp4zXL0QAfmM+A=;
	h=To:Subject:From:Date:From;
	b=mLqFcqvCpuYkC3zAgnPDsYFEIlGJLvmxCBExahKK9nHicKuAF+6rp6pz5ku6hU6Jq
	 SopE/mi8Tsxt407cSm530VWVzgnd8RBOMa2r8O0Su3aKVAi7+x+kP5stg1WJkzuFxn
	 QPiKCp2xfNabWxKGs4nfNf3Oxr/XgfQ5ALakRkQa++BdfWQJWETVPNRUrMuIY0yAHP
	 Ra+Cw5YHpWtSzmVDJz4Efbs/57KbUaOJdrZPyp1QNZFSaFdnmpxtVo3raymQ/rDV3u
	 xKKc1USidyEsvG030BUKnwNEUrvSQupC/iny3vj0alb3W1MHjmZxFqfRzTOV0xHoJ2
	 RF6p8W2RqrgPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B2CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814639357.8456.14238676490866114459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714c7c95d7898100e55df6a9974e4521c3cf4467232fc9d122bcedcce05a5f9c
Date: Wed, 17 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758146393
