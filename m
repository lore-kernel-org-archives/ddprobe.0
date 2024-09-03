Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0C81CF29C
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725345954; cv=none; b=qqWy4o3yHqepPoTwjWGWi7aRONB2BggoThUDUqRgHh/OpozPPmT7Bh9jdkofTKn3bPHEk/AnU/YUyulIlC+JYCuUuy8/21q+yrGCZnL94NpvDw+fPaFhSXT/XW7WwblTLrQ0V50C8W3KMgeeX8AVaNZH8mX/4SdSIJ9xJAK8m+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725345954; c=relaxed/simple;
	bh=YyxbFrG85/xtmcs6RlkMyzWUBMVjpE+0GEuOf3bSeFk=;
	h=To:Subject:From:Message-Id:Date; b=YPabTYqOZXtABscPBTyZVDBwbdOCH0FRQmWMjw+frSSa9td5ElRkDc7THyq5o1wfg6RMUE1uA6LGMOfqijW05/i9cfFP+UEKfU1DBIselDzK8RORqOBggMCnevmn0pdSwVwaSIzOi2ePG47xFhrWu0xv2rXevAxwm7115j7yyfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMJTIY/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMJTIY/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B335BC4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725345953;
	bh=YyxbFrG85/xtmcs6RlkMyzWUBMVjpE+0GEuOf3bSeFk=;
	h=To:Subject:From:Date:From;
	b=OMJTIY/FUiQBOQUHkbfvGs7m3GXHc1W/gC8YZXpmIkCoLForTVFHBNxxH/PTN9ErZ
	 Ur2bDpTISwujHNh9uNfFucpR3K9mVBIvMPb3WG6QnVEoma2Mv+/+qgZ64d2hACMQu6
	 tPsMXTmAsQJurd1ZVrQJ03T0Pyx4v4N4nEzYcU05V8tJXBncn8krYl59f7/RHd1Say
	 TA+w3ZJkdYjfUqildHxr2j4gVQPbOuDNkfhcvBLbwfFnU49AuzWTXd2A5yU9MeHgbT
	 KkGXlywlHR3gwCC993u1ywTuVIqLLd1C82iCZKYu7AVoB38ZuAr02eNf3FwJIEL72U
	 GUnYOGGpIb3WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A372CCA101E
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172534595366.8651.10090993130023014813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021485f41fcdaaab9590d437fa74e9e512cc64364399a58434fe7290bc7d3078
Date: Tue, 03 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725345953
