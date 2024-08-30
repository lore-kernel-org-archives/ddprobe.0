Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7E916DC27
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725047754; cv=none; b=ZurM4EzGjUj3FcndoQVG2cvJ8gvWNrAtw1DIR6EThxRUfB9Ey/53Kz/xg6oNGHo12WreJjMaJ8Z2VxctDu+Zry6FymRj0wwGaJLXBMirVcFoQHe0l7mYuS6ZbyBLBCflGYROo/FWdnfWS1gC637L80iUc/aWRBpmTzoQiKGnric=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725047754; c=relaxed/simple;
	bh=KVeq4wnR0d1EnWtC+63qPQF0tlWahfECc8CfupQpFd0=;
	h=To:Subject:From:Message-Id:Date; b=G2rkmHwC1rAJUMeuaiu2qURVUqTNaY8jyUwphlENPboO5MT3Qz1wBJzvAxsR7uffXg8dNVOzMORqGgSxd+5YEKnnP4uuierIQnCR77h2jE7OV8ZYyExlBw18VNGjq0UcuZ8wRbrg6p02TI7Zjhpb/ND/1Zs37859G11n1RVcEq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVtAx7qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVtAx7qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1A7C4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725047753;
	bh=KVeq4wnR0d1EnWtC+63qPQF0tlWahfECc8CfupQpFd0=;
	h=To:Subject:From:Date:From;
	b=JVtAx7qktICdh9sGPdGn/F23nvlm1ETI+L2LvfPK7fUWlvlUkerpsDsgQeoC2W7h2
	 QAVXqtT7tXE48ErCyPVVNdBf2aRpwqq7vYWeFWEpVKMpkfYdN9wupHOujD6KWgAZF3
	 yUIn2SlLeusDBCbwpli5b7TvKLyvs/535WqRaylfz4zHKCr46goMemfphqMqzoff2p
	 0S+vm0Jdse5EIqeQatiBPRLblIrGnnQpqVTnmV/uA8VwzMadUGpt/Ve8WecRUON0EU
	 +nqGv0+Jgnh0Pl+GU/0dOMkrTpE1L6l3Gogr5LuE3P3h+8MAn3NU35o/FOrKIs1mRv
	 nfw+epphWC2Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986CECA0FE8
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172504775361.28165.13372097078551828053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2eb0db559483b5fdee6209227ecd09ed349245bd99cb88a35e0aa1e69829f63
Date: Fri, 30 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725047753
