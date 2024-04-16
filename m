Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE3E86AFE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713262163; cv=none; b=j2gprmZAhV1xP5kkmOWBqcBz2jKjlnEevRRedkR1sXoyv5p3EYEtb09Byxi8LBYOs7tt5fIFgDmxcc+O49wr49n2NoB7l09eNPXtJW8LjhW3i1RxGv6H8bYTxkyEWWHiQKLIxvIzCy5Ye//UQMtSZ3jhByMPD45216WSOYcCZ1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713262163; c=relaxed/simple;
	bh=u9QFtTOS004mXptsXT+Nm0EflIpFomYzYO7lWcQbLfc=;
	h=To:Subject:From:Message-Id:Date; b=hurpP1hx5AVA0PqqzZ6KubgvVZ3L84vM0Ii3thfml9DOT6FzTzvKQFCIlecU7PuvArHl7G6V20c1QIhQYJGhGjuUcZgOTOMGkSR0fVothQ6TqF70B36mpYi+AfOPvanoAeVUUe/BRkuOzIVh6HfD2nKHcCUP7OSSXTguACBQP/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugS1cF2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugS1cF2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D697BC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713262162;
	bh=u9QFtTOS004mXptsXT+Nm0EflIpFomYzYO7lWcQbLfc=;
	h=To:Subject:From:Date:From;
	b=ugS1cF2yINdGDWAr/pGzaVuoU43W/gCYtWsOAccWqWI29qrhABKlz6DUMlhyOv03U
	 Io4p4yS+2Q7q9C5RfStgZsLYq4PEwqaJ6xwfHCKsRwZ2jJwvwj2oxlPsgva+hKC1+4
	 39RHicMADPD3rg1gfJR+7NMenrflkvwKVv/YVBB3fILCiitRAMAMaWSfcJzCkcUKBM
	 Uo4D0/v6kIdv4YWGINd3IUFnYH8VaF41brYB0dT9QLPwc0pd7HMvA8hgQLQ64ZyJkT
	 aNLgh1Ofs6zez05GXhh43FsuLI8tTFoT5G+ffmSTePW35a13A1K3uRVOwN1Gi7d7W2
	 0vVVmb4NGDgbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C248FC04FF6
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 10:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326216278.22690.11859009157118892179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bded403d943c5611133bc15128257ea6231fb1491742296c6ba4705858140518
Date: Tue, 16 Apr 2024 10:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713262162
