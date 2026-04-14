Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1413A78F2E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776152254; cv=none; b=IGCFgf1c9WaAT20wpsIQUzWByeLTGRqoX97EnzaLQYRO1jrMgvSLkoZ9CtHFsPOnfBu9SKMOzIq4HpQXpa43CGJmHrxbdq+QVLFhDKdDtusZkF9d3NjncYW8rBnzlENEx9/8zm6YuksjGKujY3Sh8AJFqQNGdKVp/1CnTWKU/m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776152254; c=relaxed/simple;
	bh=t42+qzUvuhNivK0BgmWuCdwj6uo83pwloBN1Hs64nhE=;
	h=To:Subject:From:Message-Id:Date; b=OWdDSG+Au2TsO3VzRvFjTZ32OsVLEYUl1DoJTg4NAcLBso4ip8Y3iqng5rSV7sRA0RhAYPe14JrbQQUsTl/gulp5rHShv8FF3N1TtQOkdXsdxcO0rbnMLD1hMFPlQsD04V4IUOvTiwmhlmjV3DSGcFMof9px4ytN1ytLrfo64SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXt3cEDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXt3cEDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B946FC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776152253;
	bh=t42+qzUvuhNivK0BgmWuCdwj6uo83pwloBN1Hs64nhE=;
	h=To:Subject:From:Date:From;
	b=DXt3cEDCBkoELo7phVour3j1CVnPv4Qdd4qcZp1CBKVQ21q0LLUf0RRgN1fHi3/iO
	 VRjhA7NFLvN8hmrG7CT5OIR8Xmz1ReWDScHgYl2PFBK0GWNuRPfjlJjY7wGcXMRrCC
	 pV3UhrzTy8XxKHnI6rc+qAPPN3pIbVkZrIzw5izWpZgXyDBZf0fp3x+ve2ixeI92jG
	 QBKrcHNaWCbtGsW1dI2uxKfNiJztfa4rNdwxSBxJGR8Bs3MVCqT2JajeElbYHFzeUk
	 DT2Rrhb+PkTJFFWJxCQjNERVO8wXGMjchjmbCmVvYZA9dvLaI/aW/L2MxDc5Aw0RC0
	 rXw/kQp50H/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA141F531FA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615225368.26405.9045219719487869424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9971071df14ab17956fd495ffeb57e127ac387c61228277889fba626234e4704
Date: Tue, 14 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776152253
