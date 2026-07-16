Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6FF376BD7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784218716; cv=none; b=FbbZfajhukoJ267ddcOvDOww7k0LosRU1U2GrewoKS+Lje1tno+Hth5FIWZZ6EKflAK3sd9y9fLC6DEFLkUYG78Qs6pBTOkqMCvEzZQWjhqXldwmYYmMO6X8Gnl4dzttxtPNDPcidy0YY90SHbQJAVS7TgecM2EdQrKGwMgkE2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784218716; c=relaxed/simple;
	bh=mTeQX73oczZx8+IHml42oIEfoOs3x2vPTh7TNLoQAH0=;
	h=To:Subject:From:Message-Id:Date; b=iZAcLMK4qXp7e0nCy2M47YpH6h4feTBSwVo6zPrXkt7RNxU4HwmdcDGm5jlwdK/HBL+otK7RuhnavYU2r+1dzzt1lDNO9kOlQgkmm3hQNmkFKdzo3Pca2gEcWXjb9hZ44FQkv29gpLG+OA5tUuVaqWq+YK/mufKx55xJo0M5ubg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJTontQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJTontQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC00C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784218713;
	bh=mTeQX73oczZx8+IHml42oIEfoOs3x2vPTh7TNLoQAH0=;
	h=To:Subject:From:Date:From;
	b=tJTontQJ1jWoRIC20TCmmSfs1fVlDvFs2DH0U71XDx73i98qsUMtJm23s0r6Bf0V2
	 MRBXyNoZqN3I24EQ6axAxXDQgsaSLcTYAke6dQahTNk9LZVS/OsVUi4QbXyNlS4nna
	 VUesCk9WsesAdrcnvqXn5i+p5Uv4+7gYxKz7naI7IFU2h2WSWo94vvlZlRP+YVnmNS
	 ZQpfs/1nSAHltExXV/wnfWp38qFlQheNc7oLj7cSLkoYtRu1tnJrGaVaQsLwfhiJL2
	 GyZLNQXu5ueATo4P1Q98oMOR+N+vbTfav+YSvPL/LM5QIsXW1as4cOU0TttRJ2I9sx
	 BAXbjc5Yk8ujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7DCC44511
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421871369.30796.2709298738465676491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e351206f8cb1b58c27497fd47ed5d471c1fb65055f6e7b4eeb823091b4df476d
Date: Thu, 16 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784218713
