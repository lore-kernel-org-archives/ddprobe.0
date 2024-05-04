Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5853723BE
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714804943; cv=none; b=DRK4mSBPbCxvZvxYYbHLqTLdfgJUCXmzCOGNLqXfSpAV6QM+cxH/N7bFXv1pOKungM6uffLoDkBLvyJQS4obXHBPlVzbgleRmpoIGVnrh2JzFUxGfqZcUtISUQfPwMg1Z8lS/3vFXqrLRHXWqs5YnCA9g1X+9+wOSs+ea3onl4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714804943; c=relaxed/simple;
	bh=gjLEu4omOSmfL4AdvKBZvgKeyr0USHMriwbgiHv8pSg=;
	h=To:Subject:From:Message-Id:Date; b=MrrMXHBw2PNNqFkqCl1gHd6Vr6uU/CIK7ln5o/QHTJ2E9CTqcwMpAb9QqG88/V79HgD+dA7KkaoJnA/Pf8L/6ExJYq7dmjsMhKV36Qvks3YjK6/nQZM+6d+O+hBQcNCRT93eM3OSKCcJIf7Gyat14IF+d2DmKI1+YCv1EKKFWPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzBfT7ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzBfT7ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D2BC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714804942;
	bh=gjLEu4omOSmfL4AdvKBZvgKeyr0USHMriwbgiHv8pSg=;
	h=To:Subject:From:Date:From;
	b=bzBfT7caRMoVgDZZQH1HUMdhkM55sxN5+0eVJQYdJALWiZWjuJBOgC7TmymiCfz1S
	 SgroqvbTF+PwLRjpOtF8F3FJDqu91iCU1oTHvZckol5qXTL8XvaAF5pcYM6y3AWTDM
	 QEHWHDCaNu6uBgjryTbhCCND4DTuJwc1CMDtRQNKYyic4x60Moyz1DxyrEp/xlrwzf
	 jXfgrh1vekgSFoRMDP4BhULieU4pHzR2mJvyzsMzIDwR6RZAxuWLBJqU329DP7ZDfp
	 1EvQNLFK1wFGNw/UcvTX+XkVLqFgSitWhE7UOOL756J3DE8A75YrKgPm45rEibqxAt
	 nXoi6xd5sYOTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A64C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480494276.4758.17798367339325367707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74f78127a8bf23296beeb23a1b91c33113b684526e77d07429307ad1f08fd7e
Date: Sat, 04 May 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714804942
