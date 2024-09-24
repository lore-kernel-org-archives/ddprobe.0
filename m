Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A54519F13A
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727189154; cv=none; b=KcFW41UbBq8QMbbgm5f3POHBofyqYiLdPQ4A8FVKblfJvJcAVPxMYGXDgRszW8J/0hK3Vhrxld9FHRYs6rKw9C0iweSuYuAVXO2v59G9b33d/uCurFdW+vEoKW23xhBk4gQHLD/nYck01n9SepORbeXfPTAju35fCH324G2mwdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727189154; c=relaxed/simple;
	bh=InGOB6GyUaYdSb7UIoQCHcPGpoVqhmVFKo9Xwgtc/yY=;
	h=To:Subject:From:Message-Id:Date; b=sEX61BRU/uBSUL/ple9KGLOkAmMBOL2IbydVe2SZZOwUktvaksEzWM17/PRBvRYfkKkERRMmFM3dOEBD9LHPPvJhp9hvgQxt9/l8wxPOPTzH3P08JEPDqUX+tNpwWd9K4FhyvXD4Lg/EhBdJ21pCaKNmuWEUP6NQnlQsFql7qhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ux1FhE+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ux1FhE+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054CC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727189153;
	bh=InGOB6GyUaYdSb7UIoQCHcPGpoVqhmVFKo9Xwgtc/yY=;
	h=To:Subject:From:Date:From;
	b=Ux1FhE+eWtmpQDmHR8GTONZ0rxz3kRebERgoFKygz8YnglmgPFrNEzCu9wVNZL1RK
	 ZKdoZd0x0MWu22JGa9fnJ4tzQCj8elDesWXzGo6l4+OHEY7VH/bX7eejj89ktlLNIz
	 w3cjDxpUArdbWNbPMDCsVaJYXnPJeBfU32rpt8s8z2TRJziqQxueAw0jLg2jGE9Ei9
	 5QBs8OZIlaKglPB1b+a2b+pcqx4+nDPSiTRCqwPpye8qyYYV2TyPBJh2gzmiYsSyB0
	 oD1mvkbPelrwXRsGWbyHRjh7MRMrKr6JY6izbsQKYUdYqL0D4rPBzj1O4V/px2bdzV
	 vdo/Uj8DwUHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92316CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172718915359.27012.11435650586478158030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d78ef4329c5457437cc1392c41eed7de99bdca243f34340c2049e2a800d4ad7
Date: Tue, 24 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727189153
