Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6E8DF76
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760201994; cv=none; b=UaOzICXsEBkmBnhX2dd29hkYdw1qiCGQeCfNYoTnhVgu95ylzKhFAoR9TMmsggd/lL8gFgNCkRfOi29sir4QvKpJvDFQWrZkSvmTn7+0r4xDk9qghN9GXLN/VCSr9uCHx3GLTzf5Q8B1SxBUrIRyX8PIRGDOfNYYxSc2EWNV4Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760201994; c=relaxed/simple;
	bh=kcLGChS8DAGj8U/Dd2MW+ZvGAVSLuagWY7mkpYtHWlo=;
	h=To:Subject:From:Message-Id:Date; b=JH8ZHg5U7C8OMy+62v5qwYEJuy/r4i3MR/aR9F4l2rzZdupuvgPGh3Mug8s/HLyb4kn80M+3nQ+a6q0EaONYRqrZ3Uwc4/P6FPlPh2bZ5TBecfJVaIpOumJElHyxYBvpbC/mcnjhL3/FgEeA2FtkMDvuwIRUWVUVGJTeYYUze+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHBHgnCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHBHgnCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B95C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760201993;
	bh=kcLGChS8DAGj8U/Dd2MW+ZvGAVSLuagWY7mkpYtHWlo=;
	h=To:Subject:From:Date:From;
	b=BHBHgnCjTaCP5YUXBZ8Lh1ubDi3QGy55C5mESEXOUoAnaG0+J9VaxTBHW+zaf3d6Y
	 A7BsZu5urwGhznN7vA3p1x6GAMQeIeHnAYbdtdZr/aMpKSGVErDtuircnUVRQUuk9a
	 LUITnffiGmc2+NkkgO8Zp7e4hhNrWnO5FV6u/bYsJTus5YSIkATVQtL1zLPnRp/Csf
	 GIjJADK9W20EM9Zz3cGeLYn6Y+4P5brJ8URiDv7mQ/vrik6nvgBm+kAOQ6zgSBDq2d
	 iEKdDbdaL5LgYk9EgNrXzEOxs2IPV1JlJp/4WR8m5HKKoH+GRgLAN5oyNWlH6t6OSI
	 eZRyfaDyCaCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B6CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020199357.5237.2443216993128698600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03bdc3e100acb947652fb511a02b6d25ec8e101c3771eb4d7a0186557a0585d
Date: Sat, 11 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760201993
