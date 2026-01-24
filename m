Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CFB1494C3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769237034; cv=none; b=uyOuwleQD028APJWnI5EmzRfGkyU77wIbjfncuq7PJZ/5UJij1Ign7DooecWUY1mJwZ+LTOLHQir4zkfDr60HazEeiGqqlT9+wDiTGc+7/5s0sFLg7fluu1mtDGweftPEw4iLTsJI9m2YmTvAS0YXqPQefZC7dmVffB7WIejRi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769237034; c=relaxed/simple;
	bh=EZbwMOWMELpkCQIzkuxqTKR8BpR5ErrUsn22yfCJ4pA=;
	h=To:Subject:From:Message-Id:Date; b=dubzWHzNh6SG9BYdT/fxn9pAaTTyeaikqoN4inuvn8iwgV09pS95/0GL/42F5glxfBQKlyKJWEZvOWV5pVnSt9xVSttTMgrpn71umuYNakw1HsHs225G/NblJm6aowQmmjB0gs4aDjVoalAgoPUYmFF8XOyTQDM73c8Bxt8nnLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eomYY2K+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eomYY2K+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F0EC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769237033;
	bh=EZbwMOWMELpkCQIzkuxqTKR8BpR5ErrUsn22yfCJ4pA=;
	h=To:Subject:From:Date:From;
	b=eomYY2K+scUBTidJ+vX1kLKGuVlY220mm7jN3HHN/+2ecNa/wDs3Pv2VMjUgHPCyr
	 0aj1EIAeVCaRjg38M573hdylMEawwUggUYNyceyqPxwd6Zb2p4jNlFpsf/tSY16dYq
	 VDFcqM1/cWFgVwPbVpmINc/iu3XwvQ0mn01A/bI3F3SG2o9q5zNL2Rla3pAaMJ1fAH
	 Tc5NONwcT6fJXJRzUF1TVdAYvCFD0xYOGBN2A1VBnDRcr6FpJEplrn3ehcOKZqY25K
	 ZPEPffH2v94WHaHpRVVKMuD/j+jtelXblo7Z+lDQ7rLfxWL91cN/JC1Vl5s9r9BYvX
	 YOS5OVcVQuUnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D40D715D5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923703357.969.11339467533220783572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1d938f959bd081f206b405b50b06ea8e8c824e4960a27657a6f62d611845e6
Date: Sat, 24 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769237033
