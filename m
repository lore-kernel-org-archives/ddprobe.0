Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBB1A2D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747629594; cv=none; b=LdDwiM7wDfpW/vaXf7ycI/Erw/OP1nK6CrqvHmfsrITcvP7Ni40Nzus3RzQD0Al63mpXBFALLb/F4hLby9Og6Txlb9YyIT2u3xzFJVFdGMz5KltVaTTQX3MjxCuTPB3QUw4z7PjJ/BxqHAcRjBldDVo2JO9GjNmX4c+LNYJcTj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747629594; c=relaxed/simple;
	bh=TvW5qF/+Vq0oMVOm1FrUbZpRgwOp3VjE2ud5moFjgtA=;
	h=To:Subject:From:Message-Id:Date; b=rroNioYgz70S3kMSXcbW6PxG709J1YpciwKz5T3NNbshSRVxU/Lua1qiv7w+H588v9DyWTI4VfIKSSOP9yRbaGMEXmtbnMNE+fstaYkXcPy5hzQY0idTtmHM/CY6n8sVbbxRPDbMsh79wP7IvXM98mo3F2yHg5/TRiFL73NX0CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDE/9BpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDE/9BpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4162C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747629593;
	bh=TvW5qF/+Vq0oMVOm1FrUbZpRgwOp3VjE2ud5moFjgtA=;
	h=To:Subject:From:Date:From;
	b=CDE/9BpBtCo1NflqLRwJkLDaIZSL+dBnOPI9DwdzBR+O1WA03U6Chs6DmmPvIpBzq
	 LMK9EUmnstBlBaXh6/EXqm3bpSuDvp6kzPKjTYh0SypijUATsePO0iN2v6oQZS3NBB
	 r+C5v/YK4ZS0NGEpS7yCXyG3Lsv+vKq/8OwBqmy+jN9/r5LYKCfLxnANoVrxLcs4z4
	 vzf/o+NGheaiMA0xQkGNJijqgKVAuZT714qgOj+7g2J4nt1i3yk9PfcPUb24iq7ewC
	 l8JM5xlI8ncKQtrcyBCjG7HR0FjIDXhXoLHYh/CRMiFxQYu0zFKgoDr5VOmIB1IY8M
	 FSS5i36EPenQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F8C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762959357.22119.8155997669336560782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aafee1e886e092d0d68de7d9d4726c3afea62295f53f6590d1ff257376dbece
Date: Mon, 19 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747629593
