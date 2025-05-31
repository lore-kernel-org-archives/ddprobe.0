Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEEF55E69
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748689194; cv=none; b=dXymVwmDEzxGfpAoAksUht4vT3YE8qXrouayW3UPUCkPfx/Iq4XmF7KFhVdCnFgaw85GvS1poN0+D420zoqFO4LvRnty6vpgwqQ3qG5ZAC04B3loMf7uZuofKVijNsNzBflBtWEkNsUIJXCQMPliuKIOToAr+aQLG0Xlz1TdCHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748689194; c=relaxed/simple;
	bh=E+F54B7ywqz86EAuyTayqmDExZPeZB+j4u0v7XFiOEk=;
	h=To:Subject:From:Message-Id:Date; b=qauitKepzRR8YjHbGxaUHgu9LhV5/T/Vks7zNyt0+H8eyY6fSp1GA5o2GQNRF+JaeBC+Habv9pFErFRuiIaF6115N031uRVjPXL2zGAUymqaD5MTAYknhE4hB1jnRYan/mW+BvpGFhMxGZHRmWYDVhp+xSoq5CBKHFY3OEKEA4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0F+BnyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0F+BnyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748689193;
	bh=E+F54B7ywqz86EAuyTayqmDExZPeZB+j4u0v7XFiOEk=;
	h=To:Subject:From:Date:From;
	b=C0F+BnyPxPw61dOLmW9lO46I+5BMgTbLD+EtwRFfuoOwPRdzJpnqtS4cGUOaGgji4
	 YeSguyKxpil2wn8r/r74WnOtNGoKQkduXn9DEXVyylhDd3+oTb9tr+aiSHQRroWCrh
	 w4XcDRZ8MHJgeDJyYQSf0WYQlXH/NJdxypFSY+/6g/az0DmnEWNrfMBQGM0QTOjWui
	 fbuMw7GawcBKSbCJ6d+hP+oxwwvc7VDFUE+0W7mb5h100LsZNaCUHNlfwOUSgHjjPa
	 XX7ka5jSynv/ETvokgyyedCxuT/CYLmu9dzlpab5EiSO1vzBJ4FvmqS1FlBoe6jE+/
	 TwGZIBCtFrUmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939D8C5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868919357.1700.6786220985276147300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61c8bc9fc0ac37cc8050a0c8fe759ff88828ddcfc301d575d3ebadb511f64b3
Date: Sat, 31 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748689193
