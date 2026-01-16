Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BCC241139
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768576434; cv=none; b=tnWwGkPGfIA4m+kNJ9YB4K/+6I0YVoQd6MIJiHThk5RTxXcV581J7vxnyKIAHFkp7nhPZAc2EamHJPNi5WAx2v1Yus/D/IEdMz2o8s7FCekCnCBCvq+BFjbfRnAvyiwdiF56qC8PBSpkFRwPXZJI06zJOvPsdvIFGajATLUqqaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768576434; c=relaxed/simple;
	bh=DyNtSbnC6Y/txcW8zfsAUfjxznig9EQPsoe7Fhb6zm4=;
	h=To:Subject:From:Message-Id:Date; b=JZBPdr6sKm/Kfj77EGPwdSq0yTbmnMNIWJ/vlWWxpmRViK9nifZ1TtGfXeebH3z2wdcepPVWxmDRo59txRVvNJO2KwJ1XeNBh8qkXdpvb39YJhq1BmgTnwRGLl8xJ/MaiVzHMJhIJaiZNJh2YwkTBu3nBnpFLfQZR5j59/Ehaqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoV3LRET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoV3LRET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D128C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768576433;
	bh=DyNtSbnC6Y/txcW8zfsAUfjxznig9EQPsoe7Fhb6zm4=;
	h=To:Subject:From:Date:From;
	b=JoV3LRETGqItFUtvHB+dNchQFmG8x+OnNRgJS6F+pH1eCbcThKgbngCPsEmVtvs0t
	 hZHYijKOB7ZgPDB5nyOSRFo+J5XIv1MsLwlr5mi5Y3S1SNSkd+pHJyyM/SSvnpBEtj
	 S6FVGCaBCOKlSjJEsj7a7hzy3Oz8qH4XqlfZ33CxSoYOtkEEWXi0FqGoGCoRharxFr
	 6RCRCrB5HkwjSpoARIdHx5EuaAVJX5teaVVIeCSK3fbVB6Ll1Y3rEXnSz/dIavA2xE
	 SL6wgYgWDsho4x2Q4q56YtGxDhvStThiTzo/3LIfDv2nvJfJqCXae5kGqPF/uETYFg
	 apt+ro69nKlRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B1C982CD
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857643357.26405.40831075784915934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac19bd41e7271ed1f64b13c9aa2b63090445ac9d59db5bd4bc16874b685ac7b
Date: Fri, 16 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768576433
