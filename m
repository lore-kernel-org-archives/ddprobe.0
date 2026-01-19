Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F621DF73A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768797834; cv=none; b=Ur6vInnm9czKNMqJasokYa9PdDUSd6wzqAEE8q3vY2AaQrhr/uHlWivxJwVdruymDi3Emy0G/YqR4rEGLmeLXKUF7gc4qKGpRKjiIPMx3wRvpmgYKDHGsSLLoVi7iWx0iO8QzjBZQIfvjYJ0Pjue/RxDVaxm6UMRihvpLKrR2I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768797834; c=relaxed/simple;
	bh=bWHG8DT3v2wZVFZmmsnAuUT0Fxlt04vuOsTw9/VjDRo=;
	h=To:Subject:From:Message-Id:Date; b=BV7e8jypsDDDUYVbHvSJRUD5TJan0dsclhHWMMIrOEFWYtiB4yT8+d2bsp5MGlmZsgFmwNLJt/69xXiO8b0A/OAAL5n6lBYOS7h/xLWGDDFv/DJYX87FCDQuxvsfJetQH4ZIF6lj5SDwXhy9W5udLqLyS6g3Mof64W2kFLuVeQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIkc9be7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIkc9be7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C68C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768797833;
	bh=bWHG8DT3v2wZVFZmmsnAuUT0Fxlt04vuOsTw9/VjDRo=;
	h=To:Subject:From:Date:From;
	b=hIkc9be7izLHgYsWIMT/7DG1luM/xn3RXpB+IUnGNR6aZO1sFchcq0i+9lvB8GVcY
	 MCH0f299efJq2bE72NBRZRz5kg4cHACtOaGlz398obxWvHpxUiO6aEFpCm6XY8yLop
	 mSYGG+YZLQW0RsegFv+f9Uqk7dahjyP4jM+U1+fUiWJr6HwiQuaeQDmxyQ2BfYU7hg
	 vEiSxuwpF00Zzy1Ju9svSGMurJfxeSw9fmVAmvFlfALpMCtftXkQ5jlRMKIar3WdrV
	 PAXToX12QnOKrcoZiSIrnGhOrFBPIpIaRQM7uEegdvn+TbH18XQ5p+jowRZ6kZ9Z3E
	 n/GOQ2WErrZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F5D4A5EB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879783358.24828.18415422286941983684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9fa52971d1f3e64fa3e4f68747db61099db2b01c819a7a1efe0b98f3b47c48
Date: Mon, 19 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768797833
