Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B435266581
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782060394; cv=none; b=NwNDL6Ih72OB0FNao2xZBTt8Q+k+tBeNbTHxVctGZnG1OC7TPhFu2BFMI19M+nJ2KqaMDbRbhJZDyuWc+Af3+wgw9IuWFFzNaC9m2FiVZznNVHa4MpmM0PtPREVst1P6OugdTkdilcSEjy2uTs/dcVuTbOTtjfdNVDzadeyMKSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782060394; c=relaxed/simple;
	bh=glw3TLnwXNFjvmV6HcMVgqpPhrWiFjg/gpjnc5D5VZc=;
	h=To:Subject:From:Message-Id:Date; b=Nz0XCRStjyJwtH84jVGO+3BQ305OceT+se87eQltqmAyipg5IMqoM0OP6r5szMVp6ysnETrq7iOJqAGUc+uwF6q8Cd2ap3uyWD/w2ITD4B6H196Z8ymu/c583IbSxgXrRPMeUi6Vr8lPSDCz5ATXeSeRdEPrQFxKTDImRQ+bBe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S508YcCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S508YcCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC938C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782060393;
	bh=glw3TLnwXNFjvmV6HcMVgqpPhrWiFjg/gpjnc5D5VZc=;
	h=To:Subject:From:Date:From;
	b=S508YcCY0jDNN3OTF6dmNpRh7Nra53oRwGkf1sza/XwG7oidEFDajlVhtxqOqD2hG
	 B2L+fG2BQHwkDuUITRnjUDY38JJtpvr8LiZlPOVZS3L0yI4iRfQ9GsEcXNqw5fiRbH
	 N8268b2owwp7E1SHu9W/sl6yBSDXRU3aMBdRZzCSFZ2iMJnhh/mGLxavSOUQxuCR/0
	 iUbc+REDJCIOYG/qrdySIZV9ABMkxG2MabFeV1jnDkWA2pilLzzj0sU5zSm6G8GTyU
	 6IXSVELSzN9u7l/ptY4LMWyhveRumo0dt1f2Etk9xg1fF5dsQuzLdtyrEMKL5s5Lmr
	 B5ykYN0EnHuzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35EACD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178206039369.25887.9206631426144811222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79846e4c8a3955125fe784d11aaf48eb96b863e60830199ad26eac43152c85e0
Date: Sun, 21 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782060393
