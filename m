Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C3D8635D
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786314634; cv=none; b=Mk9ns5aWAWvMNhprLn71nZGXtZk50Cy2MKieF6/YQ+iMXNdzyA670pvrFI1hb0rJp7ZGkSHFKRWdN6gO8NEQRMiaW2bLI21gON6/i7eMQwkNtInWMwgQ6xKGSpW2imKQDM4SR/6LkaTQsjV+WC1dGHIKmtDwyi3YB2f+cCo/2SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786314634; c=relaxed/simple;
	bh=iLFbfpY2mtaXJDVI4nxMjQIe3Da0qV3lb25edh7AaNs=;
	h=To:Subject:From:Message-Id:Date; b=jml0B8vN4BL+mTiPYgQYegneSFVKJe9aWQMaTA5Et4sq7g/eN+W8b9FgR7zcKAa1sSVmrWZU8Zoo4PeFVVePVxrE1Iafg1eFRDrLcqXMvmAGvW35LdaQt61Je+emLjl6bNzNVllgvBkv77VrI/SqF0I320w6APHyX6rkP7+Q1BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU2q1Fp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU2q1Fp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4977C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786314633;
	bh=iLFbfpY2mtaXJDVI4nxMjQIe3Da0qV3lb25edh7AaNs=;
	h=To:Subject:From:Date:From;
	b=tU2q1Fp8Jg7/2wkQ551XhvEd1pXMbi/NKFJuPEAeklz+bBYma2soVxJldY5VB5rO/
	 KI9oBv9kxxclo86blA0E1Do0BdLfWsqfTk5EvjA9DtmvU6QF5a9Tj1DprniAJsw/9r
	 1nCcuJ+yea6ZQpy9Wljo+/zCR+qwqqWTqw5l4ZTyh9/dhI8ewTdZt3DHh8g17ED/+B
	 MX5w/47mbeQXLZwTu+6jVQK5gYDM1FffVNmnGN30sx2uW9tM3LiYAl7BVUjvZBO8Zc
	 NyDH5qOGXIBjEkXQTUCeSClXU5azwzE77mX95d3QMv3QaWY6S/B9JAntNxvXaGb4xK
	 js2SmgmBHpmcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10D6C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631463369.18352.13516506662193173659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f751a51ea07156dc8f9d6ed87674c6430a08d56a914ddf99d17a19b82e9376ac
Date: Sun, 09 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786314633
