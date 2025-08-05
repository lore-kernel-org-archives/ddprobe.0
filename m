Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5921A5B8C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754381994; cv=none; b=QNq9m7NMdPdYgCZv/xIPPzmJtnm1ULx90y7FTLRrPMxxt+UpXQMZNklY3DudgJika7AariuumtTjDK2Dlwwjqb7aKhxpUKr3IyGHF+KaXY2xrSBej3//WEmfWRgJ6f83Ruzw+lqpz+gyHO0KxSHO1bb2gy0YRyIg9hB7YuV7JRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754381994; c=relaxed/simple;
	bh=L4l0hWSYYla6n76DMh14trGFp6/vKVQQE/bApBRC05M=;
	h=To:Subject:From:Message-Id:Date; b=D3uWd7ozQiYft62CJvm3pIqgK8shUwQ6OJkZ2doq3uj0/EPGBp6O97baxfTEMlg1L7VphDDjE4OPFZIvG+58CX2iAiEQ9gWAT/EXArurfMinWEBlz4Jzc24lwdwDQA2Kpy3Ejbbfd7rnPhWd+L//9X5bsZ23/ILWgqxYUVtrPJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fd2p0FfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fd2p0FfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC6AC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754381993;
	bh=L4l0hWSYYla6n76DMh14trGFp6/vKVQQE/bApBRC05M=;
	h=To:Subject:From:Date:From;
	b=fd2p0FfMokZnnJ9tJVC0eGCUYieGgBvFxbwHv75KhgvC5UwWQ1aDjy9OA6BFJBlLw
	 eMBqcFV/JmFUb+8FmoNQk1UxqQMWi9u+Cmlw57FEUQkggwLyDFCrEnYk1BZ9pjzLTm
	 KWEISp2ggdzjbSMlsf2tB3tvBw+dxGQamrnFP/5HyjMmPc1oWZA5SfV37gZQs5ciJs
	 ROKLuvAdN0txu9mVJWlAcvLmlWe00g2yEcjYkjTrOcthMC07ypMDWPk/n8Z1OPNP9Y
	 YndbyuORfdxy8zuEx0BQ9v7r9CI000NagvtPR8gykC/wvGxNDnTe6G5q2GdA6ZBguZ
	 3vowudiRNvn6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFAAC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438199357.6939.6645912249851056871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1793024b12418f79fccad71a84f3d65c06078f65ac2dd90a1a35fb9ab3fe203f
Date: Tue, 05 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754381993
