Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F76329DB83
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747085394; cv=none; b=qkuBG8L+X+6tpvg0WL8BS1t4vkwfZpl89UkamwI6ez76uXEZvo/rIcj/ZNB/PcRiCQELMf56+b8/s5yYO7Iqe8FYifNyKA7nB/BOcAK/saBadtdd5cQuUZ3kIJL3D9nTfGEot1flMGIly0GqsyCLFdPULn3EiU7Mfu7TDKK4Zoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747085394; c=relaxed/simple;
	bh=RPFl4AfftKYkdO8OIa8PCOjlFjAqvKu95yDZzw69V5Y=;
	h=To:Subject:From:Message-Id:Date; b=BbJ8AAsiq/Bd9IA1enanU8W58YFYIGbKaYIgXOSPPZCG+CulrClGPSYm1QugJopW0Dsc9Ax1t155iaQw6Dc5LUHwyr/r//MpIJcwoDeD2Re4u/40iMKqNEAGH2g8cSKgRevSlX3Gw/90+NthvYgnT3T5TA2VqQzLNJP+ND/KEmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efYdSCF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efYdSCF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747085393;
	bh=RPFl4AfftKYkdO8OIa8PCOjlFjAqvKu95yDZzw69V5Y=;
	h=To:Subject:From:Date:From;
	b=efYdSCF0uBFJCfQJ0JKi3l/acanxcpJafwL9CO7/syFWpW8t3l9EcgEDmpLnpWcW5
	 pqLSAG+93yFNGxDiebvOPUbqR8WzJq2hSsRu3FADJTiTETgWnJWCaldHh90ri2mSlQ
	 nPVHzX3fnP4X72u2YFJzQxmNb0IlVk1fd6hZ8wWtlXCu/diBSpWQuqHrO0vK2oW9Qx
	 mSCT19fon7ZU7cadLj281osYm5BC4pjsShcWo+ptqiP7WqLWoJWu4nAXohduQJmcGW
	 gqalF/1QRwioh5ZGSH47YnhrDLJahVIuqiBaRXGzH38Yfr+5S6EokcrWbNP8THzMk/
	 HDLuniavNY5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89EC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708539357.11259.14363976368118840597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4330aaec5d884c80b2c491742c724a495f99304fd94850ad9138dad15281ec45
Date: Mon, 12 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747085393
