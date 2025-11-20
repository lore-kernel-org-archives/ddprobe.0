Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FB03FF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763611313; cv=none; b=F6ExFRH9skg/foFMLHWSoxHjHBR/ZvJutyneo0FDlhPM+U2oaRVZI5ib76pX48JhhkVQkhbwg8p9NlK+M6YGyt1AGZj6ZIsVIENyrdHtatxJdMTV1pHncmisa8keOvOMHeCCCx1Il+GqsQIzP996C60DSoSf2e05+wkbJ35Wrf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763611313; c=relaxed/simple;
	bh=9zujo2pHe7V19Ms9qhezrgOrNJC9qGPiLX1q24zQBHc=;
	h=To:Subject:From:Message-Id:Date; b=ucUPxjWlMtBnkffgsTad0bOLnvWOtCnXBPmOULHSjRY4R6nP1wHUdxiEyL4B2KRpU2IZl+tjtPOMoudJe5zwivVn1YMsnz3PN4EApNPPbVOck1U91/H35/iNcsfQyxAf0OgKdwntlvW724Se4v7Q/XdNdz9QoZxxvvg6fPQ44Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/dJvVsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/dJvVsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6370C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763611313;
	bh=9zujo2pHe7V19Ms9qhezrgOrNJC9qGPiLX1q24zQBHc=;
	h=To:Subject:From:Date:From;
	b=R/dJvVsnM/aeAgjxXOpxrf8ZGE81AJAemCwCiQ2MVbMnnImdDkiUbITls+mrB8iIq
	 KzEs/aDLoSVIdY9h28vxrzVbRAQU50GiT+FONSixlbSeu+V5wY0w5dsS6nZsts+Zhj
	 kf4G8ce5olj76KX4XWLodPWIrFk+Vi2VzUgnDpaDdS9gs6miQic8Qv6knFRAZKw7oR
	 hbQISyNc9J2t20APrmDVaskzVAbaUsmtbYU6qYsboUBKjS9ZEn3Jm93p5QniDYJLV/
	 UwNf/TxVnoAmBa3rR3x2GB5+G27yhKNHI18DncaeCb/brqBooVI9FJebgdzja1Qh9r
	 rNqFG1GwPxthA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220ACD4F3E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361131358.18130.12535586635324150578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2b59a1499461c3fd2a4a63be4388d283bc156a7722c0cf0ee90ca2a351ae29
Date: Thu, 20 Nov 2025 04:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763611313
