Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDFC194C6C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720628183; cv=none; b=GWmy7FUPPzh6kC8o4Fx1ChyO4d7nuy+kyOUD2Yo4AE/j2G6hNAt2sXuWTFW6Ou+hubREgYYhSqsHQ/Xkg/BVUj5Qpqtw3yx0k3IGh0S6y8eusTbVGgGTOtV+7Eut01VPRCkuxDFl/6ATAmd5bUBHqWRNTkPNAenKdVE2lp/pWqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720628183; c=relaxed/simple;
	bh=mL8VZZpkz0Mn9y7oqdd2KbeFJG5ti855Zwim4U1oirY=;
	h=To:Subject:From:Message-Id:Date; b=mZ2C6xWb6uLOSQCnx+LY4IICtyPtW7jnaWLBAqsmHCCqHsqyQA3LSzjG6PE/NrFYws63Ws5LuifHTeg5gjenvejz3YUF3GJIG22051iOG3hLsivoYoHlxfQvrobq9RJ7mlBiP5bscgX1117fwX8/1X18F4WPnPVphr1SrzKSu0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFKl00wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFKl00wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2159C4AF07
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720628182;
	bh=mL8VZZpkz0Mn9y7oqdd2KbeFJG5ti855Zwim4U1oirY=;
	h=To:Subject:From:Date:From;
	b=cFKl00wkb57cBkWK/YXgwSd/AvgP1Y4qLSWj7WLy27M8ppvFTEPJIxIsi8AaBx4M6
	 Nr6E7ZH0QTx6LZTxq0iN17qaZ3FqrViT5UEKS6RpoFqysE73Q89LcD6RYlvMYAChsZ
	 h8tA9oUruld6ckZW5zJlCkaDVwrMRxHJITd+5vw8JTKR1Ad2oWl2cR0HtBSB6PDroR
	 SCx2IL+ZGU1h88L43bG5T9nCNv2ljucqnWb6yC3oLyHvERFJ8dCKHSJfwWMT3RZlFH
	 SoqSEAk21bJmVAT6OtrFxDhN9+fbVY+Y8lOpT7JgihXmPglfrG8XOs99h8du6cYGL6
	 3/1wlKAo4uTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA80C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 16:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062818276.15366.2470639151341874222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2025d773f69beab9aba3f2d0b6e1b1221db485938f6c8ebbc15262c467fc8de
Date: Wed, 10 Jul 2024 16:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720628182
