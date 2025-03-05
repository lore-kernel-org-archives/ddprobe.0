Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC05156669
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741208334; cv=none; b=VEewO7dNaaPMcnJ2ktTW/76ShZ7ly8BdkoUMn7x4NCAO+D+8tWmxXeHRH5/2gXQ6IGFCL3FVPkhygSPnIydet2eLe5mxsNr2P1oOu11Ib/WZq0zrvqsvT8LISJWRPkBqagTAnYON+sL5vzK3zxm+8jelmuRqWOAuaZytUvi0EVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741208334; c=relaxed/simple;
	bh=60P+zGnMpwGOlsHYKC4FX3lfa4iSbZ0H6jL7jsigMqk=;
	h=To:Subject:From:Message-Id:Date; b=DLt69GFzdfLPE0abC0GaTLbk+kBW75fIZ5BBFdPswIkMidMewy7go6SOZ1Xo3Tlh9REYFqeP2m4NdakHkngdOY/F8x2Jl6Pcak2batC/sPHEIlieEUd1Jalry/pe3TD7spn41GH+EiCiy/T9jMbUTvhq8T/SiqfUAlrvdDRMC4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5TV3l+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5TV3l+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28ACC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741208333;
	bh=60P+zGnMpwGOlsHYKC4FX3lfa4iSbZ0H6jL7jsigMqk=;
	h=To:Subject:From:Date:From;
	b=O5TV3l+nBB+/30gSMYXaQjdwopEScF4zZaNWJRYf2FxJ9f3wuGRIAiXR23LIEQET+
	 Q9x6hAP4gQCOXyW1ET2ctLVtTsIjQxwRnp1QD7SQhqtXIwmBpXmQC7KTcupMW6sG2s
	 pFZw92fGXKp6EBCg/GMSNZ+bzAb7kgkFNwWtc0mqlGD8+828XE5sEY22WgcP24YdG5
	 AOZDWTpbz5wXumeDgkd01fXLJjd2DqZooIkRN63Qob7oCD482zikhEYb1OR0atxPZR
	 kZxLZSKOUX+aqImJU2fBuqrERBc4uiQ3TYZwokoyS302EJ4w+fjRL8xU/O4/rxW3ww
	 env01m/2yKAnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F272C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120833357.14100.5455971926728584501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56e6b6aac96cc816ae6e23e07ae5bfeae9546453bb7af7f82b99b6ed56e581f
Date: Wed, 05 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741208333
