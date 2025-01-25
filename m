Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A9322098
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737771354; cv=none; b=bPFYeyEyc97GtBEjPu19z8BDp6/Ta0638e74bxrX+eu3a/pPt9k2deuU5/sCwQF8nKdqvvgOImJfHObk9uFUDyqae2t+hKglT/ZyWGoLSFQS+gKJgfhNP6aTpJGkxSeYefI2B8FnOMVbP0HJWoODfiP5G4c9LiX/dsKEdxVzq/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737771354; c=relaxed/simple;
	bh=DqKBmE1osDLrbAyTGlhUDBf2MP2Uh4IXy8WOjvY10wc=;
	h=To:Subject:From:Message-Id:Date; b=atzal/IA1v+v3iIJa/LA6VjbT2ylX+70G3Fa09treyqql7uEmYszBGz4JKTtU5SHWIyeEtqSOgo08L2q2b01htPHpj4tgb6XVxCE+v5MSE05amPJ9PfQ4FbOBH1DLLowkeZA1VJMdz/h8WxY+ENskhIpwBfES4vctnVLMPfbWMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDLIxPcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDLIxPcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D18C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737771353;
	bh=DqKBmE1osDLrbAyTGlhUDBf2MP2Uh4IXy8WOjvY10wc=;
	h=To:Subject:From:Date:From;
	b=jDLIxPcgwKLbi18gZXi+D7TsRVZk7DSvLXiM3VWxMl8ZnP5piJtxrchhxP+ULoFIp
	 XbmmP8D3PenTR99Gw+rO2vGJeQq0+lFy+UWvEcx+kKcxLdAPBRopviOsTT0K4pSWEo
	 DBdJ9/oWvHGndco6tGXys5dfpnNnVpvqQvPepbi2qCueO3y9Atn5T9JOGWzQP9NBNG
	 +GMtgTlFFJ0dCyvVboSetGopvmqhjAW6sa1xgcizpB7wloG9ee7+zNaIH4x1J3zeYc
	 gFqcBwW+fmAELetXYZ3sXlgJkomYy84ioLS9l183vZyARyutv3pT3Q9SAK/69U7Ckp
	 szK1zxwO1f10Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B49C02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777135359.16605.1453061628406007261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d1afb3bc9bdd4af0745721d2989dd05ee07f50f58e1c715651ef880fb30995
Date: Sat, 25 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737771353
