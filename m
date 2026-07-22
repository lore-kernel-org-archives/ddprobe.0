Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272B63911CE
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784713114; cv=none; b=IHLoYNbpy9hrYPQ3BCw7h0zFFFs/qMSb1MWip3X97wUjOa7kM9fmgclxwnZG9lEmaN6UQ73EhG6mPOewQ+aLd5nTpBojt6RtitDzsr5uvxsVkV5+ah1foHil3CV4fV1B9RbnnDlauSI8098XsJyC1zgoSFoayu9A/YUHkYVctIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784713114; c=relaxed/simple;
	bh=IzNdXiADItv0YNzE7uHgTjyG8pcNR74C+JQ1A9ScGI0=;
	h=To:Subject:From:Message-Id:Date; b=Pr6m/0ggOWNuvSn6i/hN/Dd7FCFoWbJwIxAoNd/tMSL2HEJl2Di+aojssYUlBJeQfbBMutnRfKFQ2jV4qVFGVRyiHlJGe/zBQuLX5njiodBw/J8JSPWZ94J854doDR6RsvkXRSyGq0mTyE/xe3OC+AbWf8i0LElcNIIgcH89R0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7bIJ9sE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7bIJ9sE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE1BC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784713113;
	bh=IzNdXiADItv0YNzE7uHgTjyG8pcNR74C+JQ1A9ScGI0=;
	h=To:Subject:From:Date:From;
	b=q7bIJ9sEijcDe/ckE9LogCmOw/EZtizX6h8ZxdNAug4KLxyrZR9kaBMYTKV3MZg17
	 XtXjCcJSLCRDehco2t664pPwOnn/U/39WWDQ3O7vuTjrDb+guKmmplhbgdDTGV/J3u
	 TtDBWxQ43bvSuNE4QQyReCLYhJYY76MvMRjlraACpvqZyUoe4W/osgSmEar2hrvK/+
	 Sdr0C7AOzebj72xuDhFKJX1mTVc13k7NtY2Fvi673maOCkQ5z2dYDOjsVf3xXXt9qP
	 NvfA1YZYamVsw08he2Ctn15XkErHfrbYzmnh4AXVAutbTTFUryHXSfwSztLW8CCCNv
	 EPOSSxJtvy/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBEC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471311368.14849.15842920227454586370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73aff7e244f9e11b4b889a218b94c548cb6ed9c29636a9b00906af5a56aa86d
Date: Wed, 22 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784713113
