Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFB29475
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762754994; cv=none; b=ouQ4XxNU8ON9Mfbfp1Q9tN1Duo3EeueLGppOQZI0OV1hRIT53f4nm5OmTpS7/6tBY4zadE3DtPHfADVKzPUBkbRWsxa/af8Fe9t+myiSGnN7WRKqkQ4BHyNKBMvEGpQ38NUG/RxmRuse4/AiQb3e46Il92ycZBmfXhXa+ko0oLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762754994; c=relaxed/simple;
	bh=ylIUQ8MERGBoD/kR5ckQnWMw4b8eTMWSZlmRFtMwjSE=;
	h=To:Subject:From:Message-Id:Date; b=MLUuYWvmpxNmogpVgVQKBgKUUjQF7M8VwAVfLiCXWamv+sdreH3c8XaOZsRC2rPW04p3aBqL0yCmh4CuViGa4RZcj3e9exbtbfpEJkbgczXcHdHnIQBvPkFRiXvDrPJNBkeE8fUjyT+67kKnV4DawMIyyp+OYq30zxMVw3tz//E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8z7Nofk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8z7Nofk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32E6C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762754993;
	bh=ylIUQ8MERGBoD/kR5ckQnWMw4b8eTMWSZlmRFtMwjSE=;
	h=To:Subject:From:Date:From;
	b=u8z7Nofk9b3DPCdSRwFsQie4jw4vasuiyKgeyhUoWP24FwsDPRKVGF0u8T1fqB4Y9
	 hAv75i/+7D2VL4IIIQEDhVClLRVixlyW8bNOjPPYCzMHt+UsMITj0QxTqJ2BiMJsCk
	 lZ8IIUsUvP/HfxCTi6tYcUb8Ro5mXVDCl21VPRFNiQADTWaf4XGlm1jAfbKDBijxhp
	 mitXQUd8TnnjqImOxQjM8Hbwmj2n0nU8CpkEvyJab0JDC9yUyiQpBlCe1AqoNAhGlf
	 oT/MWhkBB5qzZZV/Reye+9F3hVcAvX8vf71YRD8NwkcQqbDl4YUM9dQaYL+bWphvBl
	 fTPKqPz9hLDxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECC2CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275499362.1051.9435623924213130092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d1c3c462ba1f5e02541eec57bc33660316361ae963d403afed76a70431b0c4
Date: Mon, 10 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762754993
