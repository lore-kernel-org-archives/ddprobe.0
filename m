Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076952C326F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773250494; cv=none; b=f4uUkhVylcYOOPsqoroRpv93qZbV3U3yiKoV3zokegvyjH9gDbWlebhjE1N4YR25H6LB+72O3sJTT23Nq1406RW3iHoqjd8aeQRguCRXzdNsYXrsZzt7VJZ/uRIOxvZzhtyMDG9SqTFSvc5UTH+hcu1CaqNKZfYISikVCKaYn2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773250494; c=relaxed/simple;
	bh=Q05+s93BVb+/FujjYgJcK98X1dJWwMONGDgMgwZ1pU0=;
	h=To:Subject:From:Message-Id:Date; b=efrSnbCjg1Da9Bpdgk3ntnXlFq0z8/pY/uSHCiF7a7UQy7FTTkzo1Wes0Tvx0WtvE4nMUgG1K3Lb5lBYDhiXb9RdJWH1mAc5nyg5BbtDHruNASFBvO1NcIv30b0hG/37oD00M9eWF6SPnyMoDSSKQKNOHVRofOSFS8jYYq3QiiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmsCagse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmsCagse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D25C19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773250493;
	bh=Q05+s93BVb+/FujjYgJcK98X1dJWwMONGDgMgwZ1pU0=;
	h=To:Subject:From:Date:From;
	b=QmsCagse3PzIZtA2e+yZMlAaURYGU3p3txi3LMZO2lY1hwTWlrcOb9GbkQu2D+Nc1
	 AMcYmWyKX5GXFZCoBqqdlHlNBZdVm3vtfyRTVKGibznu6vEWO9Uf8SIM1sFG5y4lOy
	 HmN8mYGkcsm3oabBAN9nvYn681+R5p+HYM0YTgP/A6yuYAbmrlYPoEL6Itb9KfnYEO
	 9LEE96Ckq2okSd0P6J46gdwWZSO2KNxFE585RQUo68Osyw7miiD0eRD+0SKXJ0F1KG
	 DOfIMiKNZ/8mpiyx24cTzG33jO48xrW3eIWMxXQ9yX3Vb3or0sdn/wzXpV5VK2T5iq
	 GMwGr7BNgmuIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F16F1125859
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325049363.4912.842160961968263273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd544cef451cd88ee8f79da29f8d0e15b1be3167777766bd92e72d9a1047eb7
Date: Wed, 11 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773250493
