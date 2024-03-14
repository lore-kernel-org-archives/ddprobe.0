Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D4460ED0
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710416897; cv=none; b=OMZQ380SSZ0ek6gHSoCqprt5lY1HOcC+C86PQtngP90gs8iePeb4aCeqhK+h2F2CVDVYT3n/IAZCw9hl7jQ/ztUBcmNEyyrQj8ml37aQCzyGK9/zcFEsgEcE/Xn0VGehCIBNPoGM+Bre4KpEntTl6Q/KE/0qXAXgKhjVWf821AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710416897; c=relaxed/simple;
	bh=8vsmwba7tpwo7RFPk53qei7FFdqmINl1S8YrjXZ8+qA=;
	h=To:Subject:From:Message-Id:Date; b=dFDKejjs2H4DD1JGDZqe5xXjtNrJIvf/kvzYbtVkDj8NFxts3McDB8dLnqjwMKUG3gXJP+9tK+mJOdcGr2tqMMgS6MWuysCtlTioC9iNgfecf5lUjTXvxdt/waEepUTwrPAIRMP3rYbpkwoiAANpf834D1ft9das/TdG1yjLXFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHajyKHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHajyKHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E129C433F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710416896;
	bh=8vsmwba7tpwo7RFPk53qei7FFdqmINl1S8YrjXZ8+qA=;
	h=To:Subject:From:Date:From;
	b=gHajyKHB/MMIPMljIVLjjO3Ji4+izEMT52h35U3i9etCRYtj8Q0LpBEFQQewJPCYw
	 +mkQFwopcje178co8eMKe3RZ3rMrnCVqdr2ttLX/bs6ohR35b+CugK24ShxbediPR5
	 axKyfwser/W36hEoBHsRpvKh0pqy8edODAXfC/QSLXyt6SDvNItnME9U36mF992LzA
	 9jnWxT3h58ZEvdoqPPfi1sHccaDJ8wAldFOd81MvQOaj4HFf1jB5yZ0fDH3C+tGYQA
	 e479/D1HuXRaaPKy0vp4CaVngRrdnnCaTQtglSfiqKfXmOJQSzisgrBZOD4TEtLuMg
	 vjcdPJwm2QFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C53FC5475B
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171041689637.30929.152079309704985460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad27edc90cdd1cc64bc3caad6581f181372925374c43c00bf7affe7306126a71
Date: Thu, 14 Mar 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710416896
