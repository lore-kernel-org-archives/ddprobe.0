Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCF539B97B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789119034; cv=none; b=DLv7Ult3iRe65Dr4JKXybJ6fuASR3nAQ5VXkymZPsOROQKvLnglqI3z9wb5bwmMOIeRPdPzDas5s5kilJKJx1w9sxvqjHgBi90gYy6iFT//T8kHfF7KGI4n49tJnYeve8k9nj0Bl6mxHUgj1hJPuyQpQGq4rmgYGsUKoZEnvlvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789119034; c=relaxed/simple;
	bh=FMlueVQYkZ0V+aph/Tb8KYr/FFuV3UmZR/B9dkyGwrs=;
	h=To:Subject:From:Message-Id:Date; b=froRui/t7kPeS3GC0Iek3vFRORV8thjy0Xn/XXVX2pFYs38V7H8r+9CLtmmKh6U3WCIA4QKuNanKpZ09fRs2k2PrjDbVdqasLwDlH8EDSsNWRedBsvEaZCH4sdAHUESoAZLMHfh41avafijwLla604gKSsoSjUklkl82Wa02J+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QgTC9xSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgTC9xSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB279C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789119033;
	bh=FMlueVQYkZ0V+aph/Tb8KYr/FFuV3UmZR/B9dkyGwrs=;
	h=To:Subject:From:Date:From;
	b=QgTC9xSPgIXWdN5FRhxI1jG7c/kpKevznoagNT+NKv59TbDw4BKzY25uJa4HvaBZ8
	 CZhIlsfsR3CnWoyPRrkjgMg4oz8/scnm7lq0+oyiYWROIaZSkhVrfDqzbnnFX/a+VG
	 J0BXOOMlOmi3CtMoLA7C052+srvCmC5uuZU6gg9dfh1m8UgsnZPwQD78snaa3T/L82
	 Ct/c0CkBr67WRB1BUxGih6Grc5yW4Bi2B4MRlOeP6dR15uwALVivNxwcQMHKWkO2i1
	 DQAUH90xsS+E5hAKEq01jyYB9f+vs/EbcTIQIJTagfLXz+8+gnMU4zTI1OO5/rjmjj
	 pfWZAxhoV9DDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7638C88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911903374.6326.6380618687242831056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e097e0b90fa1829a4e319f8e1817977b8cfcf7084d574b81c44467e076bbc2
Date: Fri, 11 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789119033
