Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F065C8DF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721913954; cv=none; b=AeRrmHZktQLxVFsC2QQOREuBCoqC3opsy5mIYeOc1ZYx2VQBycetVQX5PpPbDOnwi7n4nyaSujhQpSOE4O4j6snLo2UF1BJ2mFVT+Y0OljqG93KMQI8NnLFxQBp/UTtIaOkUYFLQy5sN+nm/1oErUZnEq9soxuFJr9rXBDGpRtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721913954; c=relaxed/simple;
	bh=vAVG5uyX4OftkXvXMDVCYvcbvEQbib6dttAxbQuyRpE=;
	h=To:Subject:From:Message-Id:Date; b=lfdB5yqydkBW3HoDAGuzaHYvZcmNnlgRfIo9HnuzjMcKUpnk13iFztiwmENhHrLdmu/0zPYNdIsilgRo4ZmMUQk4DbU9qiWh2XzVPJ5zyLZACaIHA7MkWDLvjYID24d460GmCmIWSPKXHWtoK+wiAH6y2z7HlkqtmZXY/odt0Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rT3L+3Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rT3L+3Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB2C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721913953;
	bh=vAVG5uyX4OftkXvXMDVCYvcbvEQbib6dttAxbQuyRpE=;
	h=To:Subject:From:Date:From;
	b=rT3L+3EuyBwL1o0kXYZDOFs0D6NnrsxBe5HMQSYc+KNO706LBLysi66FoILtszLpK
	 7YROH7aVF4F48sQBJyPf17TzQ66CJWt7b7jkz6B1nVLtADa9h7m2jrzKVtIv1zY6Pp
	 lKIkE0dRQqR9JZWw/S+GgNQl6fAzfi75l1bH8xfwCl76HfiVTmSKEsA4v2uxjpnnwZ
	 DSC1YkBAR8ytm6R8hVcMvdkXpNtCG8C/FiVUq7pGkBog15QpiVXgHsFvN89Ig3h7ND
	 WeVRNTQy0X+5SHZ350GhJk4kUF8o6bQWbnbe+q9J8lhGVpTSQ/9QljqGyhwsigV40N
	 oUG+XLTjjP9tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91200C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191395358.420.14982941740732415117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfbdea5c9ba4856ca2c1a1b5a1f8edfc2314d6afba1b71bd72cff1a90dbe51a
Date: Thu, 25 Jul 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721913953
