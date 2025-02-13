Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4296A21D3F9
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739449734; cv=none; b=TGsfUQHTF1hp3rttwB4skQHbdzmqH9BU2ByucdpjWhNFCxDCvQozcBLGOT0LWy7+8l3SAxwWcibLCgtf89GPlqbuI7glRUJzlcNq4uG4HdEDjBsf4Vg85SzbySMYuySO7FD374Gi9+uXNpzx+truvuO1zuHEiygsWspmKyAIZ98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739449734; c=relaxed/simple;
	bh=7QuogQhcywx1oUYBnNiXgzYxLO4phfV3bZzihj3DmIY=;
	h=To:Subject:From:Message-Id:Date; b=K0RuwzW1jpDsT9HJL98L57gWzjReqDM/OALh3bgOCjyVzWpdZuvYshCOar5Arjz16zIyTbx0B2lO9W1JOiDl1C8LpSR3+2OO3j7S4ZQpIHLNfCn7SrKNnhHp02lx34ZzbafdYSrUGHwz9TkBOgNrA2oG6eIPSMuAz9kXVbK0t2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK9aKoFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK9aKoFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29A5C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739449733;
	bh=7QuogQhcywx1oUYBnNiXgzYxLO4phfV3bZzihj3DmIY=;
	h=To:Subject:From:Date:From;
	b=eK9aKoFmv4GsddPlsd6j7+q3O8hCoAqFojeIsmmp1bqP2OK4Y3SbhoUg/ZZXRdD+8
	 rEEWKHCW7pEzYVkE8U/2r04zYdc9K72iFx1Ee2mtMidWd2f1SwMAggzUtXZILLmKYJ
	 CaCocm9D52TS8oNGdA1vP0zGNwijRfYdl8rPofPkPPTemoFSL1Ijcao+QePAUQx0X6
	 rwvWnferFoNsnnJqxtC/EU5Te8A/21ai+1E/Q6CaUWN1gU2m3/HXQ4ptAbxEnluh5o
	 j1oM2hUCxwoSme/JxKSBbmU3Xx5AQsYCfxgWFa3UKCuADyEQwPyvuVHqjZe1x6Cajm
	 hMAMZaYkkv9jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C924C0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944973362.10903.18025873862198063967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c431fed2668a16399ddaef373484d3142090ded9e2a45d91ef0d249c6768c4ce
Date: Thu, 13 Feb 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739449733
