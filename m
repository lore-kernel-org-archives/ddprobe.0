Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244031B0F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729762554; cv=none; b=Ww2ty/Ojsh515YR0V9QfygQid0jkWu+aLsCkBPSgTy7eWAxcB9lD9W0qitZqEviTmTkivPhk6JJOuVfHLnLz+eOLHNrh/3YLlp/F6NObNyruSsPjEEn+SPiG009yDP2LBqrAoulM1wcfw/FBLeoingp1Ec6IK8BqdGIfil8VdRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729762554; c=relaxed/simple;
	bh=2xct+oVimRL0h1RND6b9hXNriiHIt8DexV0QcVsDRUA=;
	h=To:Subject:From:Message-Id:Date; b=tdruS2Pt+mOnWKmLqkOtu7h4y8G8+AswTYjJQu+LX8wOYCMslp2rf3g0Yjtdq4xsZ+/UuMLi8iXjqTVop8cF3TTnhO9fvwZEGv2Q6jRh9kKkDvo5snhygsXBmaiz85CX7ABbrVLB91tpG2AwiNHPzlCHOAXnLWc6NCeqD93TMDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqbxAmh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqbxAmh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F43C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729762553;
	bh=2xct+oVimRL0h1RND6b9hXNriiHIt8DexV0QcVsDRUA=;
	h=To:Subject:From:Date:From;
	b=RqbxAmh9a+FCSTBf09EjRzqVfyilbNz/XnivA4CvOvSQSHNXFTrI7Dz7sZe+1oAJl
	 +rzGkgp5y/vgyf1/TJigKW9pOVYy/uqG3z90MpwI3MZqsvb+ZEPdlCqsraTzpMpSpG
	 O+OxUrI5tHmwFsOw23pkia0WLz7pc6IEU78CAA3m5eznxtXIfoa6lFsG65WNhBFHY+
	 LJaAgSWHI8DvgnKiSX4as1DbnbtbuRROfNT48IRMNS9+GZIqUNd5fI1N7AZZmE43e2
	 nBNVEKANAFkH4ogb0wzNT1fOKjVBpaYz1G/2qYnkNWkyMu1YHisQBuf2KapLkG7759
	 wER3JiGU481GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C27D0BB7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172976255365.14184.6484891457646843587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b4c49a7c3f8e299ea4e3e74cf2f1beff73d9ca97db043cccd75ded5f769708
Date: Thu, 24 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729762553
