Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB711C68F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780446274; cv=none; b=gTyibsCjmVt37FfdbJiaGbHS5FxxsuDzbfK7A+JQ/leoZxwwez5t+/7zl/3sQdSrHCUmfYut+jWThX11BIfYOrKBkwdkDxWn3mnjkhuEMX7mN690Wv20uQ8Db9xsmC/mpPAnMvHLIjps9q31zeuPwDQo8vd+zr5lsRyHd2V0wb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780446274; c=relaxed/simple;
	bh=jGuoiDQ32FBec93HY7PuiV2XYsaqcfFttzytK3TtPO0=;
	h=To:Subject:From:Message-Id:Date; b=OSFDKXlsXZZVirHyUbEUJ8vWx6ImZSUmjeX5MAJmwC24W8B+JTC35C8wdTjZ/EOyvfdtq5vxfOF/6aJ2VJZqNWr7pidFvf2Sy6qFq7PSnZQqC2Jz9a9sW2Jra2LcfuxkmCKTPCCp2bf8SSWeRM29prH95I+4es/b8kTZQ2SU+rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDFYV1/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDFYV1/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C540FC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780446273;
	bh=jGuoiDQ32FBec93HY7PuiV2XYsaqcfFttzytK3TtPO0=;
	h=To:Subject:From:Date:From;
	b=UDFYV1/kc5jN9swczuokZKIxq/+QEfxM7jn+GYQhiiZ6d/ujSW/iVda7iDHz+Gpem
	 NSYBuQ1uINe25ILJgZMm0oO25+IFWgctrP0kHsdMgx/m2Hso+gNnWZ1tjmPJsvyb4G
	 RlDWiUV0cqaXf5/ID+SpeoQozeVhVTpM545dduRGGXvbuk8Hbpqc9ME5ituCeGTi7s
	 yMJRq8RehmyaV5xG7fJUeAhdydNYWAjQgcgSFuu1hBT7BYRnkhirh9huN3d7rEKOQe
	 O8aAnLJjY8sHeJ7wsbDSLc2yDXWXSA3xDIZZpZEgIuzrxD8+uDz61DgcOCPVilmFUt
	 ODt5CYitH0VHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB249CD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044627369.22304.6424236711024316115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c4a5784343a81b97b3aecf81eca0825946ce71434dfaf69dcdd21933c6de73
Date: Wed, 03 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780446273
