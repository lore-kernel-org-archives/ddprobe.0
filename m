Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9445E385530
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786455034; cv=none; b=eLG2rJxCullZWaoLAwI13XgCvIoTWkgUF7ruwIp1jPj2YcEhL96xmKlLV3Fx58WyY9L2ooKqFoPPhEJOXjRsxT+tx7fZ/EPfH6OHWBI3NI2lWDm03SWNvJEnVi04sqK8S5Gkls1XVObT+8e+lyTcruIgVf/AAP4C1XF/FbHpals=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786455034; c=relaxed/simple;
	bh=Nbll9LR+BX2aj6X9g809/AfNpznfuFjcLSaPQQ8qhzo=;
	h=To:Subject:From:Message-Id:Date; b=lC82wImmBmlTyjjwACSiX3JcOldFiOcAAfmgMxxe0Ow39AmxlDGr5uKy/bwlVepLx7P0puXdyi7DhmSKPoA7+2CEgc/oZARh15rL4d44+BWeVRyb+l9a/sLdg8aZTNGUxECCZQAbzLovqsHdJc1VvRbTwjNVYRNwue/8uk+XEDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QglkKlqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QglkKlqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCE2C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786455033;
	bh=Nbll9LR+BX2aj6X9g809/AfNpznfuFjcLSaPQQ8qhzo=;
	h=To:Subject:From:Date:From;
	b=QglkKlqg4pLZLu5TRTCmLq2gOXG9E6U7UnkDLviPH+K0QDn6Cpzmcku6yt7llPfxL
	 bTrfj0UrsYVm/UloA9/IKSpSin9Z07o8LpZ9uGTUGCbYbhVVAQ2UTlo//eP/GKXtk3
	 GE+YGTp9Bt29ank89MD7gR6qrBgPI1I4oZ6CyRsfa0AWAC9/ZTfJ6Rl88JllliHjGE
	 R/5mPFLClyW1FyRdYU2DwzgyF59Kn1XahJBs8ucV/WqjHYFJTYbnExyOqt8oKUHqVL
	 QeA7ISrnEw4qhMV8pvosVrymq0t0NxGqXB61lZ2DJJgvzeLiQcctglRft57az657wy
	 GxvsVjkA4/ozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D0C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645503368.8219.13709406271919223886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0d723b3245d7d6733dc1fa95c54c3fe6e3266491775f54888a7f76c4b9f650
Date: Tue, 11 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786455033
