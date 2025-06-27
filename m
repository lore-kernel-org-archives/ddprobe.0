Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1F51E22FC
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751048394; cv=none; b=KleGWFCnoZKlvPTtgtoAQW/Ix94y24hFX8ucUyfblr7e/ziHMbQTlxt42SjRZb2sShvUJ3PE5wMgAaAEBTDsifjIuwDriTnQQ9kUw0RL75ECwSOrJhkHgYSDyHMJNcbRRCZMWfjv+Rg7Asv2m0QxcKaAMrJ0sJ5v+yseOXrcqYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751048394; c=relaxed/simple;
	bh=CwqERM4DM2qC3nXD1uAdMwwcgP/6utOLPDEgnQLVeIE=;
	h=To:Subject:From:Message-Id:Date; b=riwBi97EMaM+V+1jg07HoU5eSSzChWcqIFtwFAv9anb4TrwJpEsLY5W1vPV/47th2t8eDcI2y1bpSPNR1UiFxJLLonrRnAFwLtkLiI+WUEEanYWCduoEp2qudmJPcIKKKx//IGF6bHGTMimdmpbCWe/Rtsw2qFu3Lpf+oSBQlJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APRlkd7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APRlkd7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BD6C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751048393;
	bh=CwqERM4DM2qC3nXD1uAdMwwcgP/6utOLPDEgnQLVeIE=;
	h=To:Subject:From:Date:From;
	b=APRlkd7FzJwz462vTPnq9vuQ2w2YUsd9SiwZmNQpkoz3eMFjjwNYoZ5pb/cZA94NU
	 ouM352lbutlu5ynE46CkHHMCNqQzA4TUADVZp4su2snC5CK7+bSLfqM/U90BLCKt2V
	 EpP6EKim/3ZLew2OnpmrOkv0iqFQINNzSe227ceUBAbfVCdv/CLcBDD755SkPnFke3
	 Gc+CakO2YUmMxjyZJ9flMGGtvlZ6fHnoiKMB8d8i4THmfV8iunfxIqrfTmvXEVy9x7
	 ROFthd8tsF5pRXUo7FTXaCf0k9iLRG6XwNDE3gCc4ibf5rkbYCLuf+opj4pl5u2OHl
	 51Ko30gosvJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95146C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104839360.23335.14257658392001901187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aefd746865a3096cf831d7e5e50c136d395534f8b334af0f5db36cc725405d6
Date: Fri, 27 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751048393
