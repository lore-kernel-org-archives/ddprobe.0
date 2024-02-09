Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE891366
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707442697; cv=none; b=gr3WDVgH12HZmr4OJX9iYvLcGWgnF2szHznLAxh1gE4a8n9dm9FRd7q6mPVJLLKq3ZYvN9gPqgClWkiAdB1bPAe5JHwN5qZctvLvAFS9tj4EyLyaTlmk/1f/HojGTBIyDVeeGwkMBmDyjFFxPxMrNr0TPhIugQG7tORpavF66n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707442697; c=relaxed/simple;
	bh=3E+jElOzw+nkkDrCvyC9BETEkJYOfIIp7OI90U+IzCg=;
	h=To:Subject:From:Message-Id:Date; b=DU1tg4iJfRZuxLg4n/WHnwVVeLMNFaAkPKmb/xlYNmDZ7vzXUfJ4xAU2X8+spgaAUW+TOC31ggyCBJG8GN3/VdFEwC7iZVqXQNzb5+ONTjob3qG0T7Dybtxk4tPgyQuKklp/EH77cHATWLRJscW1edTVVB2f017XSvxeaebQHa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YI8WXv67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YI8WXv67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8711AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707442696;
	bh=3E+jElOzw+nkkDrCvyC9BETEkJYOfIIp7OI90U+IzCg=;
	h=To:Subject:From:Date:From;
	b=YI8WXv67HAGelWGSjOYqy7OvGCTvHzfkFNvoJhJYYNTTkgMXje0La3CfdU1zbOHJ3
	 4xCZ7jxUt3YmCnpZXYeYpJV/faZqzoIaclGxiZi0G9JzxL0U1zCXlYW/NGmRvxMx4q
	 fhqAShnJ9AbCRtQeKDms7eN3hwBdP0pfubO9zybtouEuTmVpf6mhGjDXGDxxDCmxtk
	 2gbw+iHNExQ6BMvQTLRGpWMP798WkRVSx2h+6JFfLirmNG8nFYVV5w5j6Y5XLeHSfA
	 RSg+2GJO76S/M2qqdgq9OrHLbdE4m/TAnPtpTR80NxpYk0d6Qo3C6cI3BR3kejeGLS
	 2SqmeXtcVWLLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C199C48260
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170744269640.32404.2965229727639247782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646971ff2d580638d3589768d5cddd2ec550be6ab3eda7189702ca1f40ba80c1
Date: Fri, 09 Feb 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707442696
