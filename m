Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BFE45517E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785339634; cv=none; b=Q2JjjmygwagSr2cINxUbBIqSxp35j+AU+EbMFcKwPn4EZ+5IfbDewbxGixHwVZyTMnUumAhXIKtf7vVkT0c6s/KgXkYSROE6LJ02kyR22wtiGfLUbPqA98eIAf2MuE59xPi+KUp1nYgWKH3p1sW5MX2Omqa+67QbOcv4hskUQUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785339634; c=relaxed/simple;
	bh=muzM3youxH0CGlStIUFAYBMAXhUjk6IC2+B7sIOt9c8=;
	h=To:Subject:From:Message-Id:Date; b=rFHDV3v/u3tStGiCQGrCJJlznOstnB5K3vrPoHr9Q3lQEwDrO3YvOfCHW2huvr5n1Wf0tkpONGuODU5v2vSk4R6OoR6qHXpVXGrdyWq2+4RK/3tA+Hl2+sfUBN/OfwfG1qhKu7LWpzt44V9Ffq/Xp1btaQISMhsiHEj/u26Mbgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/Ig7KSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/Ig7KSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF43FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785339633;
	bh=muzM3youxH0CGlStIUFAYBMAXhUjk6IC2+B7sIOt9c8=;
	h=To:Subject:From:Date:From;
	b=h/Ig7KSsm4SKAG6HwzgSJkwo+lgWz3xzHLyHEFAzhsctzne9WY0vxIDuj90Aktrww
	 c4ND+2FsdM5rkpymtnGgZXHuCvKELjj3drgrtu9d5mOJDHLslqPd8MCq50Rzx9tO6H
	 gapZRtz0eQOJEjFCvjenYAN4McnuVVr208Sso4PUeEou+XFC+iBJ77fkVLCHun7879
	 SEFLuq52p/z3VxOoIsUnaFK5wr7Of51/C+lUK3LUk6s/U1Qzw7S6QiuIQsa9vyQVV7
	 ElycVLvW+CVZMOB+Ye0PanWmSlDdYPvmShw0bl0ynHL/oXgpPa+MsMyJWSOwfwZJ+1
	 xhm8sQIVEB15A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F6C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533963369.7145.3134123902516891173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b243635a6c7faf0a3258f81559a8b119928564f74a07e0be67f439a9c1c4e24a
Date: Wed, 29 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785339633
