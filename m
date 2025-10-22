Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366F126A08C
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761169794; cv=none; b=WTMSvw23dRrHX4tH4XLK++xvbobPoTdK8fxrBew1YFLi6p1SmIhJvzHyY0mVUspIvNXIvYA2CdCZTWYTBRabXCdTr9e3nnRn4bEab6Ty3yKhmHUqyrWB71MH+AF9/akgE1zjvvMQIKMC/d/ekRTO3bQ5AjDDI8p0OWHbsJ/c9Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761169794; c=relaxed/simple;
	bh=lv7EgiOu5AVG0vcGhFes6rhGg4ktH1KeUFDZ1kDSTkc=;
	h=To:Subject:From:Message-Id:Date; b=ciBcHYKlLzrdfKXeDR62NnoLvePhWL3eCK8HWESJEMzCajW/dvUC4jhlzPvvz0IqJaQFBc97NjU44sJqOPcT5fweTCkTf/XwdttENSr22svrTxHWYJFR1uUcNKDcnKnvKOgBusrKfqB+U4Hm0sY30BzWc02si2ycDplsbraX0+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNEZU6vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNEZU6vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB09C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761169793;
	bh=lv7EgiOu5AVG0vcGhFes6rhGg4ktH1KeUFDZ1kDSTkc=;
	h=To:Subject:From:Date:From;
	b=tNEZU6vxrrXWHrlFc4fi4yyw+ItfMDwkkB74wD/vUCEU9X5Tuk+GLqqdJEhfYEppl
	 shY7bShhWi9I3MirgvSSf8vz6xYy2/ZaiTeFw4mpNIlv3sZBwNOmLUWCz/8peLtUZJ
	 oFJZnad3CB0G5uasoObZhHidtodSCMk2g33DEIt9khS5Y88MWbgC7y29tuoL8TcBzV
	 yu6ybJFKRUqvv17lacfpjuH/xMPKFxMzVuBxczSuIx0XokOPqYN2qRnQWUH7/EyPrd
	 4/SaX9JsojrHxXXmBSEz4obmBYt7E3d3WcfuvEh5NM3WXTRXud7fp+Y6nhqFnSnVSx
	 AyLmj+lxhVzIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991B1CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116979358.23921.11195085806527939102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d5e64472f63c5de3bfbacbc59cddcc345b8e45773da2006b3f68cdbabc452a
Date: Wed, 22 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761169793
