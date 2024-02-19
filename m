Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032411F18D
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708376297; cv=none; b=Nz9ABo5j6u8pd8kcjX/lsjOx6uyeu+LwbzWqhw9pBQtA30G4ZdrkvuKHZ8ZDv0ROgC4JMg6Xwwr7uvqISiA3k+06s7HjzSFiy6xsgI8/KFXduVm0LovJMvhw4Q8uEd4sUqFWlVOzZkuQoWypsc3ZRyw/RFJ3po4HGh7QEcLb4x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708376297; c=relaxed/simple;
	bh=vODKIkDavfZJh97HrsdCHbxZRp812LTVxLT8Va9CdI8=;
	h=To:Subject:From:Message-Id:Date; b=coXy21KRjlZwvu1Y7murvZ80UiIwkhx062Te3fq8Qr+zrOO2k9GZmDBdiIO8WWP0Bmo1nqu5YB24cvmJF3QdFAAdnbcmN4ONo7lrPRL2HioKYEa7duX0POOyyBqw/WQxBMV4GKxDRgs937y26pGGLeEL7zertdRBerjokn/lquI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFZiC3Xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFZiC3Xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782ACC433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708376296;
	bh=vODKIkDavfZJh97HrsdCHbxZRp812LTVxLT8Va9CdI8=;
	h=To:Subject:From:Date:From;
	b=dFZiC3XcgnRvYUTpVjgmwTr13E93qkoQWm5BgiOI7v011LO0OFzPvRSwg0mGgbSV3
	 FgLm2YI1OnzdElN14DuN2wfPUXUSUM7wm4bLwawsHc04BnN4EyV1zN2v8D1EvzZpLf
	 4sc52vd33YsjWKRtI/ttZDmtkfZO2PeArcdY4jCWhrFqDk8k/eRIDX5sUndILWK4bm
	 gNkgmVadv4u8A60zKc/ItQgVcnciw4kN0nSm2q+62zumq2UO/4CA13NuVGg3ozFCJ4
	 YZ/y5o/39pDG0VqWKRgBI8gYZzxhg4HEkAknD8n06/CRhxUcRuTZs9KKQH3IFt08Vc
	 J/dnNyZ/vTZaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624D5C48BF8
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170837629637.26405.13685314717896406408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14a7d9b195c50c11cb351ec4d0ec32ab5cadd2074448c572511027365df3f7d
Date: Mon, 19 Feb 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708376296
