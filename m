Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D3A1304B6
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715252543; cv=none; b=ow8aaYYTAdQRnDGitOScshGe62lA20rq4KkY5syyBg3b9r96O1itnRR7BlQwcJgQV1GgCmD35Fln4QF4rjSFZBr8u7plK7+I+o1JQHmsE15uMNB60dz+SHFO3xugUaTDMESOO4hfIbLdvIOdXZezNi8W0KPhPqb+9so4VlB0kpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715252543; c=relaxed/simple;
	bh=kRaij/hNLpP7vLo5ckOf4/Ss12dV1aFONxxTS+7/Lt4=;
	h=To:Subject:From:Message-Id:Date; b=OguxfuEHNGfSa+EDcW0afQAOmukFoj3I99ThzhHCLqDmOeku3/c85bnnUxHuuUzgKzTHKJndMx3t72clnjFJDCuZqYmKbmB0FxAeopq49uRaeg851sLxiiMvBwwwBJ8xSbx+AN+yh4/idN71ZdHdJQ/EWeoO5MbNqJlcaWdVQvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQyLrC52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQyLrC52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09B12C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715252543;
	bh=kRaij/hNLpP7vLo5ckOf4/Ss12dV1aFONxxTS+7/Lt4=;
	h=To:Subject:From:Date:From;
	b=lQyLrC52X8M8KMFNuMeBw9FwwNnI0un2N30gLhIkcMKgbv83ZZizfNHRIyFI5zr4E
	 NoonPf/LfRRJyXnQsgZx6tKxbyFOVezCdv0fxUufGDwCN2t4AzcvMTYW9zGl1MVoQJ
	 qrRA89bYTy50qBT+/8L3cSeo9yz40V22quEq5U99Sc3TZhetEhD3HNGnO9ABXXgSnt
	 ZtUq9c4ZX5iML5M5MBXFWXRIIY+x4zNMAc1HF2Eeae7kRiu2Ag5iGQCw592HzsEU5v
	 1NJux+O7xPlQ7e+e4MF27sqFPaeMxME9bdu+2zV/jnmB8ocOdaIS5OS7JZ6Y3/4QyY
	 beX0JdTj3lIvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4F6FC25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171525254290.17303.5098673446793598244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368b58c74fd46ef7401ac218ed0aae1955bc79e9fee3ead983f2da7007b38e85
Date: Thu, 09 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715252542
