Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F7E283FCE
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778167054; cv=none; b=UdEGx24RaY62CSg13WOWdMqcdFPL8Tuma7SC9TddckNw+F/nhDcDQxMnL47zcumbSlVh1R3JXJXXXvVfSm2TPRBwd5FqFHnxQXuSAqQchJXjOq7Bvz39OXLveCcNoQNyPqqlH4MmPf0PwBH1vCmNsCPI3NsO0RECGEBe35596Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778167054; c=relaxed/simple;
	bh=UZA+N+HYTeB33SU05iX5/xrT3BwLoH4g/N4aAG2He2E=;
	h=To:Subject:From:Message-Id:Date; b=Am4U+LvDwIAWCUZ9mL3tY7IrkgXJO+dKZrNm0A0zlAabjW0skXbYlwZcza3nuW/CT9bSIWHFp4q5h3EyMESSmEeaVq3dCqW8gWwU1GTiU9kNYPmUxbrGC5SgrjG/b5EiIGJCMQduvhor/IHwIQdCQ6ZDzKJuws4ftTCbP7ALIoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSDQEbVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSDQEbVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF52EC2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778167053;
	bh=UZA+N+HYTeB33SU05iX5/xrT3BwLoH4g/N4aAG2He2E=;
	h=To:Subject:From:Date:From;
	b=oSDQEbVQoYBB5zV/9OcUY3rqrlAGTl5q5mcw25TPUyfWhlVDFNwMd9bWKW28S/AXQ
	 /ZeNhFnAID8N+3mRyDztSuWDlS7U13UkgPBJuRt/dWzJ6kUVlrhzMfW4AG3kgqOljy
	 RpuQEphPQg2AjyvKvvwIk68EtOL0Ock0iDjB6FyitMwyGZ4wlhVvJ/TjEuUqwdIf1u
	 yJmp7SGT4g2v9K4BMOjdLMM9ZQF9GuByf65noJ+NiIKhaxjQngDHYK/HIo9L894/l3
	 KbW8yFLbV9DnBGu7RDrKAMGalAIFy6dDS4RhtAQsyrVQQDSLJc8pKyyXK2ok0OkATp
	 aO2b6v1W0OmUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B3CCD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816705368.32323.13708211440490331989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8883add5c67de2fbfd56262eee1cc7548f1c6608bb3e5790ae661aa0c2963f71
Date: Thu, 07 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778167053
