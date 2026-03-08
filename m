Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EE82C0F75
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772974494; cv=none; b=MuEXeerimCHaxsUaljlzAxGrk3uSCYVrj9hCimp6OGLWLXesjDyG0YAaxB/90LpMXauU92W1eKu1+fyuLT6J8ZrHVYJsdU8xBs+u8vMkxgeUEC+a4QQK5DU5jjgTEFVTgyxN3eOhLSejbvQfK/ac3ggfixwDWJtiS1K88ttWMQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772974494; c=relaxed/simple;
	bh=QdD44slQnL1aZ2A/9r7qfd6C9Eq0Ts3+YElwGFkyyFY=;
	h=To:Subject:From:Message-Id:Date; b=kYXA+kFOmTdiAuieNC1rRHTzPKG/oMd1sIHipSieAeTQq0YiQlGfERoV0Qat4ntgsKV/X/MqDybyLp4FyDz970M+P5sJ9zsNkti2i3HnMrgSZzpaWdZD81y+axuP73MIW4lyyz5sVb4rLOFs9Z9cwndz9kwwBkqoDPE5EUyhiYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYcdaG+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYcdaG+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D5C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772974493;
	bh=QdD44slQnL1aZ2A/9r7qfd6C9Eq0Ts3+YElwGFkyyFY=;
	h=To:Subject:From:Date:From;
	b=nYcdaG+8bjOV38offIjdobDXz0ftDiq+AVjR5y3fVo5zncwB260CpFvxNmQy9fYJA
	 eHObYFgiMaZk66c03rm4X4foqz+dfAxNoVn3bmM7Jq25nH24KRdh0FQhoQJwJkEiur
	 xfiXui0OuzAW6gwGzmwQkUjtkz3YX4ojUt/bfNrRFucBYdmcLBOn94r86vLktm7pDS
	 M3p1GiyyZ1X5fMjX704zmiYf83lqy8pA7Qo2cR6holeUS081XjYPlsH7EcHkM2d5m3
	 BAv2QZKEYo4SBcHSKUVGCZNH9aU5V709TcDJc5cLpz9x/wBHuqMdzoUCf1KzZ5oC1D
	 tVqT/J549Rtww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D36F513F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297449357.27720.9906842863484119053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a5cec95f2a752e4c4fd389a9efeeaeb0056d93c13b243a7f5425882cebed03
Date: Sun, 08 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772974493
