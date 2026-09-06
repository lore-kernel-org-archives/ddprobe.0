Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E033E31A56D
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788666635; cv=none; b=YkVNCl4QxTbi9REBihVoS1IMqhq5sTj4RreTlw78i2IDNx89Jr16E0VximAtvsRVau6NpX2ghinU+uK+hc6LZuOeiylBSYgBjFW/o6mUIO575z/Y0WZq8tn/1oZGjySoBaIUbE4fStS+zEMmyFicRsGQexcdBIkoilmfbCvPThI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788666635; c=relaxed/simple;
	bh=BEDTXBTlAJ7xGMYskeIxUeAGQrV5CD3kjmPcU+1bQ/Y=;
	h=To:Subject:From:Message-Id:Date; b=SuU1lHM16wCduisOpvVVX3KoUY/Ub9f1xouCPcR1X6LqfG9tn19w1EHzgQHlsBFeY9cVUgbwssdAZW9P+w1IeNPpDmBL9G3jnxnqSzHx6TFHLt3Q1oVAf/SkFDAbgKUotEV3wOGNp7uNLvijGVRTuAtAApsBwId8w4pp6mJcBK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBbwmcn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBbwmcn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19A0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788666633;
	bh=BEDTXBTlAJ7xGMYskeIxUeAGQrV5CD3kjmPcU+1bQ/Y=;
	h=To:Subject:From:Date:From;
	b=pBbwmcn9BphDiELi33dXNUnExOjrw6wI1dQtMiJfPq6KMHGexXhBihRrw19fcL2CU
	 zYnavO3AdOYnZnAdxhk1AoviQI1JSj3qpkq6YRKMlkVdkahXgLxnMG28Suj+x0XPss
	 MrkoFQaRf4eILSrMZiqkWlUQplk6t7aU0EGI5D+dKSihDlhmTsMVWw9X1yxHgWbQ0X
	 sWpuyCit8PZm0VRlhL4Zn435QVzBl03OnkDZBhv/jVSMGPFYSXRLVCpt74AI6nJfoB
	 Zye+8O9mGcO+91LutfPgz1lGjk72sG57lDK+wD7dt5sEyIxfv9zzdj4GPRNwLJlX/V
	 WA+Cf7iaemWkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11B1C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866663368.19468.12150015849405367123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b03a1ed4bd4da4d4b5d62030bf6a829b8e21d52a36510463a11500153f97a9c
Date: Sun, 06 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788666633
