Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C068139E
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759366194; cv=none; b=LvQVQ07rrsc47w756AQ5zNABW4Alz51+2k0o3Ef3HBYKec51tPmdD9fGNb7dMjLqonAThGoPC48sLf7QJQkCQ+ZoffTRADn4MOJVl7NiEruv/HUbzgFdYVHRYW/HsacTgo3g+dt8mJciFrakcsSxfvtsKsTR/ax51oPYgkcrbfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759366194; c=relaxed/simple;
	bh=o58e/y3KPo8Smfu5wYyzWCDq/c7T32JtB9gqTTwrgHE=;
	h=To:Subject:From:Message-Id:Date; b=XUYK1szpYUoT5o/Btyllcv0Po/EY28q+akQg8YOe903tQ3oZ9oN6W4zFd9uT2Pvipl1JDpNjtYbTOC7nGYxW+toKC+t8LGpgTMjhQigRvM5e2nASmfElqoUAcW7O5n/vPpgOWPGmJ5L53S57FCZYvzQF9vVLKBa2qHCcX5viLU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgG5mK42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgG5mK42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759366193;
	bh=o58e/y3KPo8Smfu5wYyzWCDq/c7T32JtB9gqTTwrgHE=;
	h=To:Subject:From:Date:From;
	b=pgG5mK42AP0FDggY2xjWAPrXIYGHkPQYo4ksARnHGfxemx4g80QuPMr2NH6fbTvKO
	 XlWBbR1awuvNT5Qxg0yN7wOFo8KQDG4K8Nfvfc9HI9J+kix8NXY2DLu0Lv3vl3n1Qi
	 uCn2ym+8KgpfP0jF3P+4KKNp2V0wH2qVkAhoVjCQCcNIxLHX2P7V9VhhuFGERvQ0T+
	 bKz/2LqjEoNckMHHLqv51CXEEO4RxhHzYDtjVrSxkQ6NHaHSkl6gtGHQx2fvGLOMKc
	 G1aRTN/JlSwlsgrbq7VttdUTvDw7i92VpYmlLcIvtwoe3pG6FeONCogg5VkAuRPyVb
	 RwehxZoFI8tqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80CCCA470
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936619357.22388.726933006429271943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80508d4cc6e222f2c0c76edfd44d1ed9c922e55e57c46b34bc798080a961e1a0
Date: Thu, 02 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759366193
