Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3175F25A655
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737910554; cv=none; b=lxjzoScT4eFdF60ty1Nbm6+HbtikpVeve8R3YbNhyG6Zke4xaA6MpDNH30G6ohMmVVYTTjV3Au8AwXTIYiKoQtMBkVQ3wDuPOuhcKKfYdJQaZbvdZfQNB/PZzTy3lBnZ2xKLHqekY/FpEwE4GOJBfMbNleG8T/v6ptop/dcr9TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737910554; c=relaxed/simple;
	bh=hz5roeBashLjAjcoRHLnxtYrbS7stBb/HmTqMICCyGc=;
	h=To:Subject:From:Message-Id:Date; b=mhZuyWiNDUnPJ1YsZo0lP8UDDOZhmicu/zyKs7mHHXFVPz3MuaAq2IBw3T8RNI84xjJXHl8ailGhDJGudcd7b+PBV40wUoJIbhRUHn5rJF/bkt6gra6dGAHK/ThrAgkL8FyOCE9HYgu85hhI/bDcFsDu8pTxy6Eak1xI7huWEmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVmKxSeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVmKxSeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5FFC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737910553;
	bh=hz5roeBashLjAjcoRHLnxtYrbS7stBb/HmTqMICCyGc=;
	h=To:Subject:From:Date:From;
	b=JVmKxSeFneQPUX+epwworhEdyVDGZoOXrqXQLzEpEOIq64UBOnARQvhvJpuMmY9R1
	 LyIad+cLIMtxOQhH/KfQ1Gqv4COHmcl1FCgs9F37Z9P/8ItyxiUQOB7GTryB5PgVmT
	 8JkmDE6leV2bUYt15OIrnK7mGRyfjoEb4jX+sCg3Xs7c2HLGWZJjUm1Bw4EWpWyrsW
	 NC5ZrAhaUZ/bQ3l0tmHX996UogPLV85wv6av2yMb17lElJKBUbBOVU2hSAWjiFcPLF
	 8MDZngDPf7w6XV+eeRnkqLLXoq8Fgb+5bhNLRCKjFeqExeNdhRenLi59gk9VpRBkYl
	 L+SHrKlYo8Xsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E5C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791055358.24142.15681438692406652300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72128cac0437f18ec18ad3fb7f86f3447238c174df79d3488488d3fb00eba7e
Date: Sun, 26 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737910553
