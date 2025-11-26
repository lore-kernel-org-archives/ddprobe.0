Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2880D2EA47C
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764152574; cv=none; b=ialAfod+5YF7NHX+57rJGA7bMFHiTjOa0cbNo9DGeB5c9lbniAPbMQH8C/KlsLkcc7eAFPi6jtOIeE5Xmia5NaYuz+2xtJRXJaj6XwmUiDJ0qFS98XwNKgR9rBBcTVCiX3DXdhXxHUycMi1+3bArV3Eotdh7Pl+AMMVfZRwEEjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764152574; c=relaxed/simple;
	bh=/EoXb0/qDyz+Hs4HQXkpV5NSXL8MYgePon+nRlXT0Cs=;
	h=To:Subject:From:Message-Id:Date; b=sDRxImZNRIyr69we0aj7dCxu6Drtai8/cd7IhXZraxKqLAK/WPROLgfJ/eHYtmVjAeHXbGp9i+4IqgOjl/9ssGxFvgTi5gNiYB32Cg7LiQ85ZmCsqIZvbomOSTLZypECRGzvQN0sWradBcMw78fe8WuAbz/qPRL+1Br4B+lagAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBeTI/cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBeTI/cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A321AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764152573;
	bh=/EoXb0/qDyz+Hs4HQXkpV5NSXL8MYgePon+nRlXT0Cs=;
	h=To:Subject:From:Date:From;
	b=pBeTI/cjCfJpwR7376+Dv6D8nachlSHQ/obzhEWWVlPbkuBwpOLXgKrbXt1kuMwfS
	 pJQOduk/2uHFY4FZpLw2roDMMZ9NYC0GjuNggHosSB46LHLNzySfADf6hyx1JVAmzJ
	 86WaCw3lkghbtOjnHB/tBgX14N0DNHCaLlnR5xQ98SOtvKQobfBtvghaejB77J5gfk
	 QTtqU/Yjp+XcU0k+/BrlXXlH8S0NhAsSLR7t0JT6/j8z4rnVNX0PmY9inM2kBgZgzA
	 gOUYA0WaqGpOFyOh16rW0tjNvicaOEOQKRXu8n+jgpoPyVvdAScsLl0mFuh9+SI7B4
	 bZ2OmXmBw1jJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923AAD1039D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415257359.27422.15013360835256615946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450ec8b5e4a59673cd8a212c456b5947976ac38c43573dd9d64fa39b85d9e5a5
Date: Wed, 26 Nov 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764152573
