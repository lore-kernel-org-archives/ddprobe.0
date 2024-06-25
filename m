Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F78E176233
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719333803; cv=none; b=h6r2rXia5TzvSH8RjHeO8otHNq/sOjb1oEQILxlcxsqQhrTgSTFVICaYGA9JyDGKZNk8Wa81Qq9PZvREdeLluMsQbVZV7XZ7pQFTO5sW6h+G6kRJFlU0nC2Ob5YNdzVGtcjX8K8ds1Z6GSGLFZWh12yGjLrTP5MhWTyuvhDhdbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719333803; c=relaxed/simple;
	bh=rq7Ivq6XGpr/dlDswgsL67Xk03A0FyIQuHv8HHqglP8=;
	h=To:Subject:From:Message-Id:Date; b=QFsjH4JL4J5vfwEjYmt31+ixFsjX5OEceOwrQ4LFZKQjDT7bL2xZMZ8FQSd9uUtg/k+0nsTMB9o3vJixwKjpZzPU63youRm+WOQsLxyJgHzqWxFE/yNZ/9UGgmBYMEtaI0FMp3Mxruzr1NErad3NyRnoDwTVOjcA5NDtID+3G1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epqODO+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epqODO+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB69EC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719333802;
	bh=rq7Ivq6XGpr/dlDswgsL67Xk03A0FyIQuHv8HHqglP8=;
	h=To:Subject:From:Date:From;
	b=epqODO+Qa0dYoleAlCtspMLBkZT5w/l8Grgld770LgMavkKoLHEiaedTLUCLHodJN
	 ZxdBFwN2ooX0t8+ggvxP9kbMV2mps2t9OBfWOYIYVDB59QnInxP7ZmnfhkgyLO3iWf
	 Yb7NAGPp+TjablKhEG0F7VPIF21anTu9TaFnuqHE0JNXI2YLTM7dQuvtm1ZBCi544o
	 MgLbVeOSq7emGQjauLcr/i5sd8GzZhhdvHpO4UjlexAoSF1Zt2xcbnJr/lfrGGbRWK
	 GYwOH55VZyzf7J3cFqf3RBPNPxuYXqEDiasZyzzY27EQxP0MOUSBo8zzuW3ce+mt8A
	 HPDGZZnOXb8WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9500C3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 16:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171933380281.11825.13750481440362100817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96c41b2cd6f88d8cb4a8d823f07fc2f1be545b168262209fcbc8e344d2d2240
Date: Tue, 25 Jun 2024 16:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719333802
