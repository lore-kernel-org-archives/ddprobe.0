Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596DD249F9
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752836394; cv=none; b=XceXOn9L7haFDmOjsW/M6EuDtAGPON4Ye0n04pf3/SAo9BFWv9T3NWetvROEmlieMrkw5jaPdg9//PjoWM4S80g4GSFR2ltUPWvIHedTp99VzQFrlkp/FlpsMVSELDyXXO3SWb9RoRIb35vsi8lon1Orz/AYYJRAQFuskXaW1/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752836394; c=relaxed/simple;
	bh=S7CjsVxPO4ziSA/AHRcfomFpRQtL8rSPfxL02Qm6Wpo=;
	h=To:Subject:From:Message-Id:Date; b=Vqqfr4Pl0XeyT3+8pLVGgA5UgnLMyfEfwrC3FF03E5xfYY3fgiOvAg1T4tC+SzGRrvvh/If9XVFjeXMjAwCiwXXDmt3NEJv2Odd8Nf9jj5D14m5zJJOLxpHjA9cnT0kokg5iw64t5mulv4hfywBdUTevw2ARGp371FcCsHOtAME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGmMOAbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGmMOAbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AAFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752836393;
	bh=S7CjsVxPO4ziSA/AHRcfomFpRQtL8rSPfxL02Qm6Wpo=;
	h=To:Subject:From:Date:From;
	b=ZGmMOAbW8Ow8b8xRJ42WQ6ndgXuV6kvtIvjzDPLV/5KKWjIaG2D19s9nSl3MsA+a5
	 vE/5Nf5+MgdguqokGzF1pgVNS42frJcRB8FeJJOefuK2Lo9pSitHLDJ+eV4VLiY394
	 xOZGNllhwin6mYUpJKB088a0n4TCjqsSgxMG93zRndPh4TP23Pzag+8NUgQd3ipo9d
	 nAiDJR069pBgmerfM6SbbRk77O2rbW1yKDYu2Pyipnzf9yd+S3gvrL88ZqZS144vsQ
	 k7sIl8/0+DbBB8QRF1B85ScqOAImYn7pIfYfaWL26IhSvuNc5wYQYnMSgloWTAlFTq
	 n/QM4267caxCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D5C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283639357.9404.4922470186479879374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ed99701cb34f3ade09c4345b07dfdf3a29045a7e272102977002cfa71f2742
Date: Fri, 18 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752836393
