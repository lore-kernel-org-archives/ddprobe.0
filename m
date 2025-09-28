Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404EE259CA7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759032594; cv=none; b=J4nW2h83QpgA0mCDKxPcgp1CmS6jzqbKncpc0DxbT+wkd4RT8qNes+fLlqyqj0dHWwwVnOXpYrhZ0FGXTkv3AAp2vewfwtgY8Oalvh+vaRWjRQgrJgowY8sRecLcuj99fxwuztXdQcOvneCPpv0S03n5Y1HH/fVPNad7J+L6DHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759032594; c=relaxed/simple;
	bh=ezary9haoGgFsxoZeEftf1G9C5TYRpZPW2DUbnljb9U=;
	h=To:Subject:From:Message-Id:Date; b=ipQGzojMGaoZHZR+DVUISvPEjQR9MlTjCgP/xqyQUVE3HX560TJH2l0VZ1z/bGWO1VPGLClipd957UMygPOMUJQ7Uu6ZtMPFLI9Nj0SRiFWubLD3b7ft5vu4VRXaJZQLli4vyrINNtIZgmgVtq2egjqk/CM+aEZwfy9YmNIlgzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWVLRoRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWVLRoRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88DBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759032593;
	bh=ezary9haoGgFsxoZeEftf1G9C5TYRpZPW2DUbnljb9U=;
	h=To:Subject:From:Date:From;
	b=XWVLRoRJfUyRLk9APgMEAgrTttyPv2TRNjdxrweA9Pyk5w0JV1KUh88IJIKfTsqZJ
	 VKiNJn3ymAucCnjvcoDWjZJ9Xh9vcCs+qtdZuGQvdn+HjZqFlBxZhELc3n60FLHhzT
	 SzdkepM4EmS3KG49XpZZtlc/r1uG0b2ecfgZGMtBezcVpboy4mC05ttUXieffoT1AW
	 Cx6XWVm9ym6WQxgUN1bVCKiQnnFma7uMXDM3A/gkdnII4VKTwS+7Sb6jwZB7K8siEg
	 7LQ7V8GzazNaAHhtSpI18DXt8xoSAJLah91r0zSsXeg2+VTetSA1UzdlNEzb4Q9O9E
	 vMWAV0AkTlzQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9625ECAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903259358.2983.7980379089487657937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7220ada1d912e4d5f1fd1bcaae89f6224e00501cb5f2d4478ac2bb00d246ecde
Date: Sun, 28 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759032593
