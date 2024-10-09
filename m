Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3F4187FE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728478554; cv=none; b=UnfU2JyYYfJblYBedSeE1WTg3XSJLP+cnOSetd7/z+pYHIfLVFEEM9XbDCET1o69U7oAc2L+YUKvBEF67sd+IUYDNHwO2Jqe/k7YuBHMuAeM6wJltcwr9CH8XysnOAIxgR84lY/GdsWuw2pPf/r7jMN6BPgT2CMKLDbFjdabP+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728478554; c=relaxed/simple;
	bh=tX4EQZVjW1MqRuquYbUMcepV8UdbAx62Qt3u7cGsrto=;
	h=To:Subject:From:Message-Id:Date; b=TycAewf74VIywu47ucBSToIxMxVKRTrAsdQIc4PY/Kwr872XVPlc2wP0ugh0zpbQsqG1FD2Y5g/rJxTD0+jfvxW5/oaCI+clXwSwEwMksUtoYmFLL7kz6FXH5DmVI5O6Oz3DDbXLK4qL+nOwLmBHR6Or+WJYlbOyI/VYF7ag3yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpihlLsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpihlLsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC6C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728478553;
	bh=tX4EQZVjW1MqRuquYbUMcepV8UdbAx62Qt3u7cGsrto=;
	h=To:Subject:From:Date:From;
	b=JpihlLsBSuQNAu4G7FokbygXAc0304WihndtyZ8247rxdrqaPknIPJjPHbroLv+/f
	 2wjZxTJpCeLHewqciQ2hEZ9KHdGGYtsQsYX7evgDcVOW6SpJYnLcKVkef0S0PL0EeU
	 GiXMAhThrfW0mJRmg7AUk8UHr/nMMiG25hfMagL+xZr/9U0VnMwL51VA1s9tgOIzH1
	 fhjxy20FLWy9psaCrrcZa8GZg/pxya4ZaAtojAn5zSWiAL9oEa9LLtcckhcxnnrIqr
	 Yei1vtTG6FSEagC1AKJyOQBmf3zGXyetlGcpxXvtOfOYkxNCAvW42WwMF+wXGlq/PK
	 LxG5M5kIqFHYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E6CEDD89
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847855359.11325.18035390411435034681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad17c5f4f0f3cac9fd1dcc74f3d775ff5b4a3379828e2af038fa458c38ac457
Date: Wed, 09 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728478553
