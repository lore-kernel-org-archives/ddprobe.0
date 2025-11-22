Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492C61632C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763785314; cv=none; b=MUhpw3HXcAejSIRImhzWGJyAhCLRUyJPduhl67jIMAsOPUVY9CYD+3UuJTO+IukSUtOP6ae5hV8TzQTRESYhtOuGmYDFwxKCca/UqhKDuvYQcl8itQmeNFNzoY/lxLAqtbHESlD5eVLVduq02peRwssd0ZpptVLYX9bGMihPSh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763785314; c=relaxed/simple;
	bh=Jkp/XWJaKCSADLLDxNS+/7FDXa2NBklfGqMDqUY63XE=;
	h=To:Subject:From:Message-Id:Date; b=VMxQDwdIZLoQLpSjYOI2dPqM6JfhszIAyPYypKjvRGo6gh0kosOV7L6zkqkc+RDeosx3p2wgseXMcUXVrQfuDvcUSJchlu4F+zBu7Z54WAIl+UsxsY8wYdhW7cwZxUT7hciV7kDh+lSNyClk+zYzvHmV8ivzuL4RrKrdWbxqb0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ep4yknyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ep4yknyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7327C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763785313;
	bh=Jkp/XWJaKCSADLLDxNS+/7FDXa2NBklfGqMDqUY63XE=;
	h=To:Subject:From:Date:From;
	b=ep4yknyiyjQWDFF/R+rsenPB59Wm71jMgqDE2p9yiTQjga3Q5gDE3KPWQ+z+7FT7L
	 rRGvqLO2X+lLGV8i3Jrh6biJmTdFehQ3IAk588lab79JTpjcpDDuuIoZ2EuiJYLs2t
	 4dvVsojFPzWPcpgFHCa9Bn6uWzSSEvWCfgKjC2v4N7cPqh9AsPTyPe5NUlKRPKoxRl
	 KLph0s/8Dy+xzMxscoOm1XmSbGh9u7ExZF/C+aJYBZI+AIwMb+hQNwSs4e1z/tTqtf
	 hdMdq7gU/EWj9u+BK2RAulZt1ElTYjVzW8uVK+CPlBprAtLIopeKeXhJVsssR/PVYr
	 iMegACZvxjUrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9404ECF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378531359.14499.6402055280679780059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377908c067277eaa92b252f319c00da63105e2d31da3aec07cb97e58d7719c38
Date: Sat, 22 Nov 2025 04:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763785313
