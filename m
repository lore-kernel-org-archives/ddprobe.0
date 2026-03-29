Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226D627281D
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774811094; cv=none; b=t1jR6lwb317QjaH2OaB6TilV45j7DzGti0oEAV5GSOVnkcQb07u60ce2EudcxsA+31OfXt+8C7G53PK485VOFY6vZ30zeS6B5pJxehS+6SXJ4kbeUXdcbM/NNKT4Dbcx9XRnPiQ5XlCUn1VDU3Bnfnm5e2TxrZJucvD3r7b0YA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774811094; c=relaxed/simple;
	bh=ysBeiL8pPs/ubN/q51GKW2tyTTmKMeXSvh1tjjPGrug=;
	h=To:Subject:From:Message-Id:Date; b=psrV5TqvdIz0owEO9CZsn3Y875Np1Di7laJQX6oAzvkWSyWJoGMtMPYG9a9xbyBiBOo/oy4AhkE5DD/93bTVNucJWQua9IkLX3Jr2so7mFxGmnweUvznKCuY8W+CEBI04DKKWDq1NrWsBt06zTsgmdHx0BBQtgUMU0VWgN4sdj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqjSK8GI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqjSK8GI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B4EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774811093;
	bh=ysBeiL8pPs/ubN/q51GKW2tyTTmKMeXSvh1tjjPGrug=;
	h=To:Subject:From:Date:From;
	b=JqjSK8GIlVnKfi3op3NSZbZvE0NInLLw9iHokvIOzUmX/CTXjpPaZZBwLG8pu3XjK
	 cKHnp7vB3h7u1IOwlNiNQJclgWrAZ/fpx5y9kRvGOEnSsZQEIAqAaJK0sINilQweFa
	 ZpsDLU8R7J3H/Iie/72jqSPzi2MH+HxZVQaSHGgeUz10BZfaSu4MYJFVSzYIkgBVu3
	 21tAyj1SeFc3Dh6J2WbNKg/4NdDo4pJXBll96dUzJjrO2AI2ioWJMse/OToNq2mWb7
	 H5rRBXHw1siSTbpNOZH2S+ecJN78ysi2nN5Blcc0fSY7TJIasaW2aTw0fT8JTTdbod
	 b6/DUtE941pOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161BFC97EA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177481109358.28969.12790764926392644695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffe7b9e89f340918b394286877aebd05aa5550f35761f3f83554fcab54ac247
Date: Sun, 29 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774811093
