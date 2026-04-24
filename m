Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAAE5C613
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776997054; cv=none; b=r9z0/GJB9nKES4cUF9JXP8iXPNRlnykiweHU+q0HqnyNI+lTUTTbLirCUqrbBNMjhZ8uRmNuWsnG4eucMuH84t7HS0QCrFognRTDmzSXZHJICRRUo1tVo3hRsh3PJ6a2VedgYG9+J2Y2E9Qh+P7wcBS1sOTq0H9VGj/EnzboU1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776997054; c=relaxed/simple;
	bh=dxt6c/yZ2RnJ1X2AbxWDNgMwLcWTOPYzM/6AEUtSjzo=;
	h=To:Subject:From:Message-Id:Date; b=pmd7GAUQ+Q+ICIFyQCo2l6u4s6Cykbje3Zh4bzvIPFjSx+eAly/eFlm4i11A/D8yZF7+iIOGOHWb288IvyiqbeHDi6BJXO4+m0hYMnqt+lmcTnhlbAbjGGxzDcgT3j89ILiLhevU5nOIKmEgwQw2qvrJqGQxxwCjEsDQ3PEqs08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wbvr2mk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wbvr2mk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1849C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776997053;
	bh=dxt6c/yZ2RnJ1X2AbxWDNgMwLcWTOPYzM/6AEUtSjzo=;
	h=To:Subject:From:Date:From;
	b=Wbvr2mk5tSesoz2W+yjyJ0HOnVu+xIZoRKZZR5ry416x9GD2OjEUEOTPotyKasUx/
	 UzpsB68ReyrDeDxEDqbmnCkteNEyN4dzQedLEsJsTjEu7aC5YqXmRavv/Q6P1uFwje
	 g/nkocOqY4zF82fX+xeQctaqwb5G2KtyKjhoS3uI3mEd/QDPck02GevL+YJoBkeg36
	 s2jvvlOGV+nAaUrsIW8J6kZh1fUGvH4rNJNqq5cDyeZECBHQUxcSTSYLTY0suSj5sx
	 08oaqK0nFnmwAB9kGwTFRrunKEi8GeniKHfZ6A30zNt3cIdEcfUC7a2OkGHGxDGHTg
	 4ol9SCRZnoVuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A911AFDEE5D
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699705368.27109.10161693339229674506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef7b19f08ea3cc4c932dee291780815dd5d13ee51dee88ce7db7eddd342b3f3
Date: Fri, 24 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776997053
