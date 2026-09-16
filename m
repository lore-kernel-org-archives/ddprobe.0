Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A51C3FBB4D
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789542635; cv=none; b=JuTVvLIML2d/pO0cZ/++FK/dvIm7he8JydadF8Pt3nfxkcKd+8J0YZK2YMCM0ag44kPIAjOk4UC+U6PaBiVf5XN1YXwPMGng/+VLBlIg4ObTB3Og85hY6PmH4AFZqlw44q7zkMka7L0aCCEgjhdYdSM7jQnyileo9fC0rlCxfb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789542635; c=relaxed/simple;
	bh=LaPifiqZYmrv6pkJZXV7v7Nsqh6SufVKOPKC0815n3M=;
	h=To:Subject:From:Message-Id:Date; b=t8ZK/aql0UvTcZGVjMova29NdFFdugRRQzGLBCLzue+1kqGpzi05vFZtbBrR43Hj8Hhv+Rw/m5lBE5oJKaliA+jGOQg6WmO5OIOiDAN4zu51JEOn7E9TXNW5fEFW+6sjSAZcXqeHTh0SzrTYweSy9YoXEwoQW1nnW5JtVwsM/jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHriHts7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHriHts7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E767EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789542633;
	bh=LaPifiqZYmrv6pkJZXV7v7Nsqh6SufVKOPKC0815n3M=;
	h=To:Subject:From:Date:From;
	b=pHriHts7AsxxoT5nhZdiTwxvUZyh/iIeuQgvCE7iI82V9Obm4HDihO4vKW75HJXw+
	 KGJiB52EEJIUV6AU0HIKlLOIHTEyigFRgiKh26h3dffsGzrS0MC8kVWXoMbAy/icKx
	 bw39l1WHdizdOZmLZXPkV+h56KSL/4YGh6vXbvtPlvq3//DmHNd3j+gqgSWAsv+OgR
	 dOuAnHLCW/FscNVRbZIWQezHTmUW2WKOSOUALACQytCeL1ifVod98Bl/NIpbSu3t/2
	 8oNw4KYCiOehch/JKoGb55+nM/N/mpIQCTd2woF5GyLW3z+h6zJ86CMbbtTtD2YKC7
	 nA2wHTJINhhLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA372C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954263368.14112.11412294382237251568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c367c27cbc71d96e3d553a1e1618338c7418306370d05e6b7130b6ac5444c6ad
Date: Wed, 16 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789542633
