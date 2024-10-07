Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D911D89E9
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728330354; cv=none; b=YZvZDokHDY0Y0Nk01vm0aeuyfPS+6uaeWLyua56QdoqwwUnAR9WuBS0yPVoqF/3TiV7HYu55IgLqyfFmPinhwWmm5eUPKDbJvyOojyE8j6vuos9B8vTnZiPXZP9gEuCal7jbF+swKxCL61e67g8lNH95qc/HZE+x/DgkVLZBI0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728330354; c=relaxed/simple;
	bh=LSD2kucukK4cOF/TGWM2h48l1rffwb19MI5SHgE3fL8=;
	h=To:Subject:From:Message-Id:Date; b=EWVBaijh/jXWvH+EGhkhKWIYn/97m2Q7005gm27Qdjss35+EkrU0hmelObXdy5rQpvBcBHMAkhcunU+CqDIcVmiFwRUsoundli2/dpbVs4HNUyGJHlJPCsCRJwiWl9eq/XhFKVqnrJZ02UFTJr+oc/eLCYmTkjQzQw6tFAdPklQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvXQ+0Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvXQ+0Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92D5C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728330353;
	bh=LSD2kucukK4cOF/TGWM2h48l1rffwb19MI5SHgE3fL8=;
	h=To:Subject:From:Date:From;
	b=lvXQ+0Jm7zYNzOYfg2ssE/ODCWr6TblOEnmjHsxfOIexYOHjBFvhPN6l3OIfHAcJH
	 ajDMAobPlO/ZYDfRGsNyPUYt03mcFYYcELWqX3t7A4GeO2genOeAn8m0gNP5e3frtL
	 zPNES3gHKIvVKODsfCTi32rxTGCMGsWE0rOMuAtRDhrEP4UfoYVIDoctfm65yWzR/5
	 DPR/sNSM/pksGUn31wLnVHFrZAvQlyvTYRZe6YMwVSCoB4Zi2eOdzQ3FUy6WBTL8OS
	 GH0SsZMIaq59D8x+D2wfYwqJH+PIB+pkY4pKeizMkMdJaYDkcZa9E5xoNcwa51yY6B
	 snxQyGQ1W7GsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B73FCFB456
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833035362.25473.16504841965215535918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dfd71b57b8b45736549e97ae0216837524212509fcb46c03425a408f080bd53
Date: Mon, 07 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728330353
