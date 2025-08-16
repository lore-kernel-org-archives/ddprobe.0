Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0C91862A
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755321594; cv=none; b=n/1OpDB/SEf5TOVCu5G0XMuVinRUXV+NkZFH31C3gX0NwYvc4WJffb9SAjrrnoO/74lQ80SY7iqtr8dbtexY7mkxxWnefWMTOe2xH2WmDSHSuol49XF8fAbdhN0BsDJPHEunColMaIESdNPxH2h85uZSdQOOJbAonLvH8bB+Ukc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755321594; c=relaxed/simple;
	bh=ibMBTc9hN57KFdm5YLytrn2fsw2u0ycAGTuDUKJPlkk=;
	h=To:Subject:From:Message-Id:Date; b=O3dmQs4JTIC/NS3sa1F4pg4/QwGv1dJchg5ObPZAi/ucd+Ck6rOAY+7pSvYKLQkM0VIjOz9ZR3dz43Zzfjo0XsNmUhUwMvsqiTl0EchTM/Z1SvFJvPMTL4Aq9ZgRIGXHhEO50dQyxVEaZ+NzsJiOio7N857zQk9QuZ5euRxyqQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnYU8fAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnYU8fAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A301AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755321593;
	bh=ibMBTc9hN57KFdm5YLytrn2fsw2u0ycAGTuDUKJPlkk=;
	h=To:Subject:From:Date:From;
	b=VnYU8fAoKEh88EcZCinqjEVAB++nKh5mISVvBTGgpmzqviu8z5TcsxTlMNOnLdoKj
	 aLrfcb2t6AAqzkXI/xO99ttFcaUdGc8raa4KwcJRh/qrLOn3e/MNlQVNvZVS/FTdJZ
	 id7Av0Uze/ZGVFMSMCqdyRpf7vFbds0ETgPrZmOnILC+5L/b6Nng2sYlU0sFnTJ9FO
	 Jab2IDBTMNSfAp2AWovb17Dli+qxmELy7CFD+f88Vgu+crS7QVGPudx1Kxp5T2ykuD
	 1C+b2B8h5ckY/8daZ3f6My/zFiJHuVPRs1wD8u/bYAxIF1FHJUf866bHVfgrThglkS
	 UYa54lHM3JqZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6BC87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532159357.24812.15205716220479881819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79ae5f5924327b8d7b7bf30f058fca13ad910cf7381531f87a1c46e80ce6733
Date: Sat, 16 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755321593
