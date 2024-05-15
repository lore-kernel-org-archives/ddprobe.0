Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023A83BBE8
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715753543; cv=none; b=BBK5dgf3jNy9DEtrBLG3ETuTfZZvnXst0Jec2NJn1Iprgr55S/32pUiNXnh738FX666Ftnzrj76zHhxkJTyArJAVIU5qzI7E8E8NB54qt96F2i9b+DpopTazs9g8Xd6MH3uNH1REojlXuQiigwx1sZNMG26HgVUpOW1ANgVendo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715753543; c=relaxed/simple;
	bh=hFkBWEn0+wo3dk7/qqp5NiCa7QpkMLmAS4bTlOWXa5E=;
	h=To:Subject:From:Message-Id:Date; b=mlK1G3WGOxR5lRn7lqwzzSks1laMZ8Wk9a03NUxWxhYPN685MEdu1jltuC0gp2QozJNjTrrRtNI7LcmAhQM6q3P7i6uu24jg9U3RGzVIqSBxoHC8CV930YqRB5QVAy8QwnWebKkD1M+ciK9QUiBoVtDL5xCnWvWmmSRWKP+Kak4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv+7bLOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv+7bLOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9486C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715753542;
	bh=hFkBWEn0+wo3dk7/qqp5NiCa7QpkMLmAS4bTlOWXa5E=;
	h=To:Subject:From:Date:From;
	b=Fv+7bLOnRpLJptSStcDB0XynivWCb/ZD73D+gQTiVKiBl/SyPcrH22yPf3QTqToIw
	 ixF+p3TRVNm/hgktXHf63XFrpuztFk4ShJQIzU63dp6eciI5HBJsAmNml3LRLxozlm
	 TZX0LirXzAdDkf9IZEVoEEB0u1VFBQYGiOayqlGAHoItIAWaOZr+0vkQj1aI+qno/4
	 mfy/iAm+kMHlZ6O2Hl5CW1Kov1m2nTaCv9IjFMdpzJecObZw8teO5XbT1JfwrcVBZP
	 MN4LrpVYSoWzLZmi4A+5VUaCMOC8+Pqu3XP7aXyoQ7ZYA/9fpUwxLdcz8ztbNkA1l6
	 zC5drJPNn31/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB943C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171575354275.24841.13388175857791170635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d0f2fd8cfcbb4cec19efa6cfe28623bf46bd277bbe83d3f2ad67d3ac4b3bf7
Date: Wed, 15 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715753542
