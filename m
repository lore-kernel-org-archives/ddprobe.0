Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A5630C16E
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780113214; cv=none; b=qqwHI2EWJVx6AuzxF7HRvzvMwXuAsjxPfJnDa+kR2FU69TRn7hW7bFYWAmGgoS/4FjBHMr+m+z+ga7Wi82/t85qMe81ZlRJW0r8J5Kup0ght7tHzOK7IK7mLF6tu4EiC4WbbaZ/nxBY3pdb9SZvOgFwUwYaEQO8gQqddbKGlSH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780113214; c=relaxed/simple;
	bh=8dVWNb5b/rlCBpalD9EEsC3cdJE9gPqfKhcQK/7PC3g=;
	h=To:Subject:From:Message-Id:Date; b=lUAuaRYF938F4JDD2Fa9sRnJmIZHtTkd9UPqRpw6poTP5NPbNMS2qI3UxYQzPixTBzTQxz8eL7wcmWFT3TLjpGYdaM8ln37bTB9HDLWQ8480yTwIblIQW4B01ATJJL+STqi4s64LNFG+dkxZoM/YxSRKITsmTvKJFT9u+9T58RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNEmm2N/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNEmm2N/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5167C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780113213;
	bh=8dVWNb5b/rlCBpalD9EEsC3cdJE9gPqfKhcQK/7PC3g=;
	h=To:Subject:From:Date:From;
	b=pNEmm2N/Q36+vU2j4zpAuibzG6Ei8aaBFPRN8VBELZQtRkZ980LPh80WB4xpZ8SjY
	 UDHRPvStPu+vsg4Rl4dsDwAEsh5AjtvZ2EsSTymp6YHHdsxkMgAxDR4awWNwiIlssF
	 dpDkIDkNw+INhL0FTMaWHdiMrpyopqvWkjsOCa+JKWnGsezd1OCU9jSs5slu2ozbmj
	 NoOjUA/fFQALpyVvzhEr5AkrWuhE/ACqJRsGZZmUNfPoge0mq9FUuTO/4jj2hHcagL
	 OLSajJ5ZnpmOctFh0mMDvCknB0wRC1aCq0D7eFMTjX/0tXWhSZoJYkknsBS1x5bwx5
	 d3m8tjXeUjS7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7BFCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011321368.5994.3399664132577995513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb847ec4f93b5fe17d4cb64fc372995bbecdf9659fb3a992069b751bbe93522
Date: Sat, 30 May 2026 03:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780113213
