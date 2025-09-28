Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA2B3594C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759103994; cv=none; b=iJD/2RtrHdPoLLHdcMtiJRSVZkha0DdV3rF36sS0GfoM5ab6rvDkyeBaLJN67fFzqffxpvPHsDF5CK/sDYjk+7WryqIA9XM33NrP6XSHUInZMDD3o735rO4ozJoOtWt+/xbqKvYkM03cYJ4QNSdgrjiKZ145CjImHaAYq/8rLX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759103994; c=relaxed/simple;
	bh=3NVL5qaFoxeOBSrpRGZaj6YyA6uDQv2F2AB8lcHG2ng=;
	h=To:Subject:From:Message-Id:Date; b=AS+yi85AVrcFpOYqqIlrjmuvQinB175CADkZT2Qf7BGav9MwGLCPpt8pxYFSfNi6Qb/a7b2erZaJH3GjNydiyAg7M8yKvdtVf+XpD7Z4Q8WqIBy6IK2eUbFtBPyb2xLfmm5l6fc7ercbdi08ARk6fb4zRe2oe293Dw2qgB/fxw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfomFFqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfomFFqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA385C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759103993;
	bh=3NVL5qaFoxeOBSrpRGZaj6YyA6uDQv2F2AB8lcHG2ng=;
	h=To:Subject:From:Date:From;
	b=hfomFFqTusBiLR9kr32dqKbFObbNV03B/gk6R8lRnsSpCF4fAXsYcOC5EiAG8HxNs
	 iZ+9PjLSrliO2CWTybl0ZI/xxUGgYpD94VEPoJ7oaQWQb0Z77GqMWznQDSCITDFxT4
	 fp5rMuWLsWWAHKjSD2ed5GpzL4Q0kdkG5POj5rV0VHwc7DYYQxvkg6XCCAK8Ytkvp0
	 4xxoWoaCrHlCQD8Vbpm9lfpJ/fkVQq4CfDixtz7sMmWow0AyyfHpnr/fMbDs2nfyMy
	 tTv2Fj5YHRq/axglgR1gyiWTaTaxlUqPeSSrov+d+bbWksLs51v+x7AHGmQCTJaDim
	 pKwuGFA3Rcxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D73CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910399360.12375.15994791980911390409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413645e88298177b0b2d827116ffc6fdff78fd83b8bc637d6fe6023083012e00
Date: Sun, 28 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759103993
