Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA1750261
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717094063; cv=none; b=utfkuE/2TAs7JIDuxpQGKQcKiYHP0sWt7JiOb+stQ7M9TrcWAeCtMeSA+m/gvKQ+B1yQrL9xpri3iCVhT4ZJlkbXqSpRRju9tMFaaQ6cUiHW4A9I/iIIprbNukyHHA/qNU9PVhAMMLrYI8aSWkV76zmyg6StqxtCPshN9duOdcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717094063; c=relaxed/simple;
	bh=dHMiav24Kzh+inJWCqinEDUvhKyVm3sjqr0yYb0DYAw=;
	h=To:Subject:From:Message-Id:Date; b=OpedXaZmZRnJItbsiNnszLLwh3vwFjY88Yx8IS4RBwh+1AM9uKx0CUMfu2UZpjzIWuR5V0081KYmZdlFK+s7NMIzgECUaULzF8Pdw8pv007atZGzcqEr7Am0XxMtDg2kaGNzjJPINd2fgbONmtwtzalYzTHWIGDjRWDjLiVdJJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS6lagcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS6lagcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD943C32782
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717094062;
	bh=dHMiav24Kzh+inJWCqinEDUvhKyVm3sjqr0yYb0DYAw=;
	h=To:Subject:From:Date:From;
	b=jS6lagczLLLvU7Ha3Sq53IX6dA/u707uC/a8ZnLUEH96U/5lx15S08NB+fHAl5edg
	 pWLNzTXUQrLh75wQiCn5GfwuoiT0ILTfXZTRtSZRrvC4anqdg70NCYDp5PCjtHJ1DG
	 LpVWTgM5j3+xDux1hbhlmzrtANSI7lCG4hFYDyZpeAz8W9HLXCeCAYou23ZKSDMNzl
	 PP4FukybyTMcSIk9u3YQLFQ0s6mfl8kHEJuwSFMjRtXNMAUBOFg9hj81h5fcaNU6Co
	 5qzfZIqsov+DuOqQdxUPGjPQwdL6zTu4tDfNhvf6K2PtWyp3dqh8lIwQKLtbGeePwz
	 oKYrlgi4Uy76g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC83C25B7E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 18:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709406276.994.2512649192162021160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564ac161d3b98de33bc2167ab43e220336db070eb1b47d9b16f429cdf239f757
Date: Thu, 30 May 2024 18:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717094062
