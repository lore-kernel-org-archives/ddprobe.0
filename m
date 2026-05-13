Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268AD3AE704
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778651434; cv=none; b=DRWGneqljHFi2MiiuQyouFaxd5A8S8+ArOjxTNcIN4JE2cn2deZt2qf2Rw0RM4MByY4E9wFqJabF49xESwgS9Mf9xX5mxKLh5OcMmTZ/ShyFxFwmGikqBY+sSF9GJ9fgZRKLWU9Eazy/fyICj8XkGwNgsOQrzBjSwVyd1v8KLao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778651434; c=relaxed/simple;
	bh=oBOLBwh1d412YUJR8BSLVqkz4nd7YCKP2z4ZnH1oerU=;
	h=To:Subject:From:Message-Id:Date; b=r+iI0OoTcnvp+zH32dk+dNNQTxnlIGIdUjeUiEuZy8BbCaNtZiTNKcUWYp1c03PDECO5Pqu5xQJ2Om0mtbjwn0iU39DaJQhSEKER0/CL+lXFFd0PqXk0VjaUVa4PKnllSvgQAvvXgJWodC6T7HetdUWXsbJ9SPfxlpreO3eK3bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFYTC6x8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFYTC6x8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB85DC4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778651433;
	bh=oBOLBwh1d412YUJR8BSLVqkz4nd7YCKP2z4ZnH1oerU=;
	h=To:Subject:From:Date:From;
	b=kFYTC6x807wq1nwsWUZlykjXJdTPD9/zgEGAII1jYtXJRhODMS6KMqCoHlCle62lH
	 +LghfWx1LX98tXjjEuV9OVX79/wWaWufGi094bIYtAZ9xfrM5x/LI72/lA8dgnhIfY
	 uuNYTjk6n1mLGAYdnUg0TCuiRn6OVlDemGLpEhMCoLAoRPxIfx1yDYehOz9WLsjCFE
	 SFy8cbdMWIAiX3vXVOmzVa0abtVNks6pi1O49LyctNmoqKczadWaBMNVh4hzXQrpVm
	 bppCEiJYKrxdDdUB2M/4PkCiykMXTF8a+K38FImb8U7A3jBCtBguJdz9g9oRy1yQY9
	 amW4Km7q/c2pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE3CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865143369.24158.3533576717927544459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e10dfc39ad23b42fd5a30bb89353d4dbce1efc26b5174f3d8368069e9365bf8
Date: Wed, 13 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778651433
