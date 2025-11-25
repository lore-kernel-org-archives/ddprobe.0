Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3623F157487
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764055974; cv=none; b=XtTm4LEbs1Qtg4/Vcnodb4bN798U0is7Tlo2IVBmhBk4+yp8LPoNnfICSNxttNSIgVhOmdyM5UdGP1FBFhU6w/wjTnYQGw623XKRmd5+UeBDxQkITAxBoT2yvyiH5Shmr1EBCnzZ2xliZXuRjDLd9A4eYNSBehbffT2w6uzMSeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764055974; c=relaxed/simple;
	bh=9T5YDy1JWIMMhhvm1nWnhjy7UGqfu/KHL50U4qVutB0=;
	h=To:Subject:From:Message-Id:Date; b=GAKFCjalEeucK5slBrYPKp+K3+R2KtjOfUJl6OgFQRVBR9p/WatkT3f24yAC6XUwViPiuZkty6bnuS7c70CWnKdeiyzpPv5FQRQ0f3b6l+mro3y0rzY5yCZO7l0q2XfvSwHD2iqqYis9j6yiAqWQPLcrTzka0v7/+SO6N2Pzo8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+JKTygd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+JKTygd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3A0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764055973;
	bh=9T5YDy1JWIMMhhvm1nWnhjy7UGqfu/KHL50U4qVutB0=;
	h=To:Subject:From:Date:From;
	b=b+JKTygdjQSoYu0JCv61+OxU8ddgjRGe/94eRrhrcvlp3T9TASsJytP+Y/Lr45L+B
	 CX9uhF7h+/om1x0qg+v7zIDPgvMkvNVyjGWLDNDVTdfQtEuOuegdwKI6lqko4RmSKV
	 MhBhpHkC8i7BcJFidoXnT7eGlV4cCFx2jB2c7kfVZfvomFMvfW5Eu0QH4aQVWFXjuU
	 aEaXAP/meCoBuKEUs4O4+1nEV+uu+6cQbRvSxwGUOfb1kKDZ8XxeUvIkLeW1UoOvJn
	 9AGvFoEZk08757EAkezmMP0B7odAE6yA34bAznMrISgnDz7PwgYz39mqdMER+DRbOT
	 RK19sLGy/6uwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991F2CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176405597360.24769.7514726127812274175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7775455b7fc562e4cf0060b2a160de96b87eb0a05f1f05657b24b053af6c6978
Date: Tue, 25 Nov 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764055973
