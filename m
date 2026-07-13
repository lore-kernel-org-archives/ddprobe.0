Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF8E353A8E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783969114; cv=none; b=ODad9mn97RLuKCKrxTMhDv3kZk2KzwnPmw9D5ymxKnqPGIHvA/fbYImhdULxagIUNkfM08Aal3kqKLzeb1eKRMGb/cvpWxsk9uE/ROfe4rCefiNTDP+yoruXSkGUO/MopzHHnoNIEzLtUVmpZk53GoUrwniOic/HcnPw1mWTtZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783969114; c=relaxed/simple;
	bh=Xx9tmAfziYIkzqX5EUI4VB14eehtTm2r7/4RS9WCTcI=;
	h=To:Subject:From:Message-Id:Date; b=Gj2Ly8yTfcY48kHU8knvKfQq1xAsNWEsN/oX/NZAhZoDH/im1FhNklRk+TeIutJgcGcuKDjOhvCcspqSKxD0TqS/uEiN86G41nw/B6J4jPR8wlu/QdNt733Ugukz2b+52b4ZGZcgLOHrNcDrfBH3sV8nBYKMWBku69VSfADYVTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeMfLnH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeMfLnH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDABEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783969113;
	bh=Xx9tmAfziYIkzqX5EUI4VB14eehtTm2r7/4RS9WCTcI=;
	h=To:Subject:From:Date:From;
	b=LeMfLnH9ZXZjSIKVnrTLNdSFb9DjCcVqGFMaIrVcfhvvZfkhTMeJcYw9sKFl/iYrR
	 ja1R03fdBdOAGEHTrYGcp/hIBgDXGwfn1rYeB38ipZQRGpbIYYDjwhN2K8gDzQDRH8
	 jS0GENh1R6TwL1pJhP0mQgVrnWIZhpg6+6Hr//NM/A7ZIqexEGy2VwdJJ+RRrCvnia
	 Vi3V4wL6nsfwwq1sk060fO1lSuI9FrsbjvxohPycICLaZ9wQ/bnbGaRbZjF5/F15un
	 BKxKyeUYqJW+jiRg50kZSbpMJIqbM0mIeHPrePVjFK8AkEx7jjvnDI+wZlRq34eqxU
	 zp67i9iZ3tDtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC425C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396911368.24739.3819672178904547838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24565603143ec4ac2a2663b6e9a4a36daecfe246eb0a9a08d594d25185e29ff5
Date: Mon, 13 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783969113
