Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294922EEE7E
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788020434; cv=none; b=AO6HYpDkhmrHos+QYTAcHDJD6OKWxwf9sRSRkqNRW0i41paHJCsYgY+shjD5WryxaF3QpbRpmeDZqbDQK3LUu0t5rGMz+9Ug2pRDgnfvFe5sgprci4osjRRzfxs1Epu9NOcxGY6W/CF2fGB0nC01//U/75GnkVhMkTkqjoWzTUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788020434; c=relaxed/simple;
	bh=rCnB9YIuiTOel12r9SDgldxvIsKSul3nhfmcQmhwr7Y=;
	h=To:Subject:From:Message-Id:Date; b=HsgfD6B0axdrU+IQNy1v+11EIBIQ1CsddbGSa9EInTp2x+ZExe8NAuX/BtLppvXbEDh+KWzEMHnHdptiTVitOh9/E3HlrNuym1zKxNyOJk3zTMM4LdJqvLP5MftrLjYW8RgOc1wJR0VY8G4rTsiHFfS2ksBS6rLKpenCOCco8Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs7QhG3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs7QhG3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D06C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788020433;
	bh=rCnB9YIuiTOel12r9SDgldxvIsKSul3nhfmcQmhwr7Y=;
	h=To:Subject:From:Date:From;
	b=Fs7QhG3A4n1Zp4y7rbBx6DAqK249/QpILIFolU2vYDo/s5rhdheIccXT3Q9p3NDkp
	 qRphil6Ozj52iykEN887/fuA2fbW6PT1OjH19fBru6dASrzcebc40b3KMlMrCSm7IG
	 sfy67JaSjCVRDqk9Mol9VkLahUrldBlrXUucxn3uN07qWHRMOsjSdG5eHe5oUTKa/R
	 KNfJzKH2o12WSRpq08liW+zw2+1Cu3pzyQrj7z7KHP80bX5lpVwuFMApsKQna+waFw
	 WdERK5N8N6Q3W4RgrwinarmGtEAnDMTeMGgVNLi2xJBljcmGE/aM5ZtYYSzS6lb/VR
	 ZrNlFx5pzJS3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF62C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802043368.6351.12371461949651615135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb381b0ce16146fb22c146018b9b6f18e34e415cd5819aebb15061be44cbb8f
Date: Sat, 29 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788020433
