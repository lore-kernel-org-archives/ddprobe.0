Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4777F4A99A3
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791637234; cv=none; b=KkPR4uIg/vNBoReCLQPk79e2Cfc38vFosIfgnQuuxATBrc6hU+/tVXLEgsxTGFCRg4wkNDLlynnCKSmWUmJBkUrzMKcVAfXZcIgbB0aFTOC+IYQovqkxFVajBAK3fXA6k62B7xv9Lggo383qAu549QGWeCwDsMFPTbDBnywedd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791637234; c=relaxed/simple;
	bh=YedEJpQ0ChNU5d8vCYqbC86uHxKxKo7qemKlWic6Tcc=;
	h=To:Subject:From:Message-Id:Date; b=ZUT1HDz3/xmMIVYgkXMGSJqDUlvZdjDzAPJIZQP3Gt5FVq1JU3NxDIL2fzQdQx90CMcRXrB9VGJNsxq4RMTYnYMOuyDE22IdoR8OQJzGIgMCujJQRtalMZetmhEbdLLyfiKf6k0P4sxodQ2UQIpH45GhwRN6lB5u7L53TkrJIRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKAeeatX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKAeeatX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA562C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791637233;
	bh=YedEJpQ0ChNU5d8vCYqbC86uHxKxKo7qemKlWic6Tcc=;
	h=To:Subject:From:Date:From;
	b=MKAeeatXT3l9dCg5NfNyhS4xtEC0G4x+Ncnl9iHnQpJs+zi9fzKLg/nMpulcUQUOm
	 rIS6mN/OtLy7SIi1/e80+Nj1GqZ3s9M3HdBBQgVRiZWqP3vFZTck4cBQaBg9uR8f40
	 rGLiTXUVqLCnlhK2gWg5SByUVinaabYtta0JCa9thLTTV0fTNFwaBf8doW02qNkDS9
	 TqQFDBsIsB+M+plUWkX5hfOm/iUiILGUTFFHDv9YvtP+xIeqYzbzIUa8Hf2EsanHPP
	 zI73lezQdhm0T6b3AbG2Q119Jvmiwa19v3ifH89w/l4oySE+w1Enwst+ybYuvckqdA
	 k+6SHqiwQZF+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A931DCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163723368.14724.11421272068514944256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23903c3bc118f282a2022dddf6de8687743cbc44a22b8f262758950963939fa0
Date: Sat, 10 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791637233
