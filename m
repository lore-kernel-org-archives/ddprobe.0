Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9DD15EFAB
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716817463; cv=none; b=bPch3NSOUC35dp/7uNHPiFzLIbiwne1w0BgKC7qDRsVE9Aj8OrP9XzSQ/NodB9NRmlDCVcETfac2yK/rKLfHbm7Ycnc0qokVOA/XZ+l38CK0iktDo5rlC9VLkAHyzNmuN2oUM2r/oVMFJDXIimuwMaJCWmMVRlE8NkuSesxpTWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716817463; c=relaxed/simple;
	bh=y0Wi6+7u/YFXP3ETx6ozg8y/38A3BoEupVEhUcvp91A=;
	h=To:Subject:From:Message-Id:Date; b=ncl2jH4HCka2vhGIdTxr23gZ5vcFvffo0kVTmJHYfNE3NFOZmfjMb/e5ZZD0OxSCvpJ1DrBB/Wh0trX2w9mHW3uj+FoQZCiMFoyqoIBKFH+vy11DD5Y/LsirWux6N/iq/yS09BnhmvlZMk0um0+Go/kHGqI6bVGE18tMuCS9OnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6Fo6z9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6Fo6z9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D948DC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716817462;
	bh=y0Wi6+7u/YFXP3ETx6ozg8y/38A3BoEupVEhUcvp91A=;
	h=To:Subject:From:Date:From;
	b=F6Fo6z9ixonD0duZ3/ZhA0AW9ym8GoXOco3ejDrJ6B0dDOYGR3Ua186GHem4LCa9D
	 OOnSuxR3YKblhUMndz9jxgEmEFXvBWkJCj2bMvDFpxaTfmoTqtbuMgywWXk66jbmBS
	 /Nr6DgWNH0FzVhfRHn2cKEj2ux5Y+TFYzCUub6W0Et1NujpENWIq1T7OSOujFTykoT
	 B4N42+qI189RChlEMkduBBBssBLOhr8eWzyrsxQVE5mcwBM3PdyPHIv3fOJ4vCdC87
	 aCXawYh7f+jCsM4qHyvadjZWaCQ3ntQzZplhFVUVUE3SPaGQJWmeK43zanBKwcIqg5
	 Op+GPoz+HelpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20CCC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681746278.26913.611697986737223059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5826b371fac75ea3192879c3f89ed810b249de9e9d138bb3c8ee2da5252799
Date: Mon, 27 May 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716817462
