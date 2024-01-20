Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3073C37
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705743497; cv=none; b=TG2oRxfOekCGCLbAgw6/JSO+rnNPVNEquudGyKp623e7gffBF97hkMdiHNGrtTkITEcFhvQkPt3m/KpjKxNEkkv8unRcGY2XdThcK/CsuyB4qLPjNA1oIfDni/Xr7IP6rWy2LAppqZghhuu7qpNUEVQiHT3jKN/e3g9XatVYNPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705743497; c=relaxed/simple;
	bh=fKb467svE9aESOd4W40YMLEWh0AR+c4byR2jEojxFaM=;
	h=To:Subject:From:Message-Id:Date; b=k3i73ozh26hsdACR0s5473v0Y1lRT/vDk8HFFxK0cpL3OfyopajWTPce8xNIVB6M0MUy+ySaiBWVyhdIFtP/xHGcyJzCMCNtgiAu/FEbXPQytK5mT4UAfGvrGaMnkKnLHDZiZj1mzqJEsqb0Xjixc0B7AIePSZQZYpO0FZgG0jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyXCvDL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyXCvDL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80171C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705743496;
	bh=fKb467svE9aESOd4W40YMLEWh0AR+c4byR2jEojxFaM=;
	h=To:Subject:From:Date:From;
	b=UyXCvDL7jRl5oJJbGW6EXsBElyrYQfwiWWRrkmCEiMpM8LTUsxH+SkEwn+ZDkbpth
	 RmU3Xx9l08Z3MHYU8OoOfP0V1AoWdAh0eJvQTGEhBH6VM7fOnnszUA8p+4qD2u00IT
	 38p/62fu22Ld/Seazg+N8TRI67eXF9DF/pLs8wQoEYcYjS507A4qjZUxrF4BI2405I
	 c0fFQMlsBzhIBdCOCd8Ann2KdIVtEEUVo762TA7hEACR4Xd8yK1cZ4VmUR2l78Iw97
	 2tiIWKELQZ5JWP1PlvVy5E+JP4AMwekCLVhrtX2mVQayZZxbaHOMiNN7qrWHzGor31
	 Ue0CBdXo5yKPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F30C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574349637.27313.9084147572694211671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259d210b9fa6158c9531aa222d3ec3162ecc6c01ce59f0e0603ebdc29aa17e2c
Date: Sat, 20 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705743496
