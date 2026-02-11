Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BBF28B4F0
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770778434; cv=none; b=mUZ77aVW+DKLBUozm9BqbTUPM4D6UKzZaxKYlOAUfQKF0zfaNw6njNYqE8Ctn7DEMrO8dGxMD8eMl53B24Bx4ANyiALXgVeP4o7vMqE0URI+jtyj+eVcWSwk2JatLc80CaHVPqQicSq08BQjJ4qG4/LHyS03CHAoLkLG5LDZ3VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770778434; c=relaxed/simple;
	bh=aH4mWx2BfzwVKwVmh8t5C42czdmqsJi/cTyFF8ZQesk=;
	h=To:Subject:From:Message-Id:Date; b=mEd/j3XmU+jm9HZZvCMJMbqCt/zNDzcjJg6wBnyboc1tLa6F5p8Ujse3agjEHuqwxNSOcCX9w/mR9e+YUjmFe4HB3niAZWwcxAyCS/hD63RXtNkJUCl5dxgkXNSqIxBRqeC6KigEANl6QEXFKjR5dtRElqGHbJCNofqqG5mHlsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKTLAHIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKTLAHIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05073C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770778434;
	bh=aH4mWx2BfzwVKwVmh8t5C42czdmqsJi/cTyFF8ZQesk=;
	h=To:Subject:From:Date:From;
	b=MKTLAHIQoRcajSpYsCkqQI2jKb1BpEJk6hbCYSEKODE0C7dPIrguXz3ZdUIGe6bnO
	 X0mo910pWGEZ31mgtyttG4GqPNJUjlObdj1YOy0TfAeJ6YW6C4g2fK2ix+LUkD4WzY
	 pDCqWeOtYymhEXR7DScGguIH2bvMyaP3oMyd8ufcHhKW82t13uGUCCf7UtB8gYxMH1
	 kgt9EclRjA3LoPGTGOXJmwZO27KpEzAGRSZu90zn6nSLoofycBekuOquMU8gc0Hwuo
	 B6ITxH93NHLySY4kH/eurXUK10kC2TyD+Mo8la/7sNoNL53ECfP8uK3Hhlm1/YZ/JC
	 rVKdiwUotbHZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29DAEB594E
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077843380.14927.2625971697208602805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36377817767fe3b94917189251cd30b22c86dd6a4b3c1abd58756fe20bc1b150
Date: Wed, 11 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770778433
