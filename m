Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E364F7CAF
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790635234; cv=none; b=f5zbwc+qsfYFkzb1avlhag3cHxYa8RXp3jy7A2NrjfTit/NkxkQaQO6psKRu8wsgdsDr1BQKi63L1MWwyQvaBtRGap2TaA6PBbIq6QM5Q7hJqxU6GXWBpyk/f14P3fhfYlmbNsOCcwFk6C71XQ/tUMgpTwmKMH+UjIbqiwn+BwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790635234; c=relaxed/simple;
	bh=g4E8o9o2Cf7z4fhDLPvgeSIRrdIw/wG9zO4i/9AZegA=;
	h=To:Subject:From:Message-Id:Date; b=qcmdAJUW/IBx5zp/YMdGPQYD1grEA/lpGl7nz64dE6IuZKh2aSimgFpz/hd7G9B4urIwKrLYgnrEpuRjbNZO54nP66powgDCBk66hmD+CZZHYvehRdyz1xUDmHryTDxuwONDYZ2FVu+uUTWT05/H9bcnRW2yk/W6D00mI1ozp3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPvP8cGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPvP8cGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E09C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790635233;
	bh=g4E8o9o2Cf7z4fhDLPvgeSIRrdIw/wG9zO4i/9AZegA=;
	h=To:Subject:From:Date:From;
	b=mPvP8cGBxdHy0YolAeEhQ4mklPkRf1n7MxfHUDjVNdv3PiOFLRgexIKCXYUvNrAiA
	 QuORx8rnzUHZvOQxkzOO8sAKnCRZjED9YrXHseO5tFAtCW9fMfJVIhcKCA6vqAHtir
	 zZkyP9jYS7zHlbcYYANK2yyH32pFnYjpVkwd0GyyNrOxC6WHNlINCv/sZeWpGR3yzZ
	 jXlWZt7LBFW6bNbMheGH9BDrL+kvhbmYUu50BApXQUz774HQReyXIPSZBnwa4EDody
	 B7dj5oJedN6Cp6HGtP52PQ3DBUZtT0vkFNlY7FYGw1X9HyJeoW1njpugVUqR1UAp7U
	 TlNo98g5lT0Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD47CA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063523369.4588.17015431602470812653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad5e283be981deb6ec4d579834a84dae9654b2704171fe55d20f74ae369d54f
Date: Mon, 28 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790635233
