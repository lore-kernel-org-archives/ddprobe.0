Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6851BC3C
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722452154; cv=none; b=EhvdRgXow8vdaX4wYMADCnFt2OxoW2VlEscrN5YXFT1Q6s50nXyZhr0QFqQY9/H01/UFYT9Gu8c/BXF/56MCVQDagkW4nkjfHOiOW41kXGCOmMm2td2rrHbiZwDPyXDTwHtdauMQiDTgcmtWsTH8oJFZBmpTlP4D2dU0yGYC2fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722452154; c=relaxed/simple;
	bh=PiK1aV4K66LpsQcplU6RxkZajVQB1hJLYQqvixs3HNo=;
	h=To:Subject:From:Message-Id:Date; b=LjIpo+OTb2a4XIwdgR0270+3bZMmRthmC5Ky3YhoheUjiG9GgTPZrgBBr1Mt9LEyivbIXIzg7iWgEWoZZ1/vmZVzk3CLzXCJPJkixfdva4vVwaLdpfDtpVQIdDxIJfTImDB0h5q4vkKowrIt/IFTSoVcPEHL3RbtE6t6vGCecDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ex0eWtfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ex0eWtfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DBDC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722452153;
	bh=PiK1aV4K66LpsQcplU6RxkZajVQB1hJLYQqvixs3HNo=;
	h=To:Subject:From:Date:From;
	b=Ex0eWtfKoVKJUfSkX4aZL4F9A+jgBNic5YOmmbTsY/kJZpde7+j4sorXjMu2ssHoZ
	 HbRa7v0pOXRJ1TmE0gd1sQvwRCcsIgoHYP5jLI+y320qoSZqNI4wZvRUUVGxOVii5p
	 ZGAUbLnlo6aN8AWWNzZO9xxzTzsi6b9i4YlZZkIdCFmhAaaTW57wczSa0tXgjTi22s
	 l9Baci6gbOU47PrmkkHFs+wvKZ/f20SkpiXrSziYDEH24snY8as2uVJ1OTc4IacJ8I
	 jiVYUEFseTW3UgP1ItoomYdDX9hv+XgUUp7TX0WDRXk5+5piKxq/uCQXDykDVERrZ9
	 1wTtmiGEPbcUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4823C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245215371.12617.571809281194083401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f9f2d4ba35f0852585ffe3fa786fc12714d3ca6dd0557bce57a21f1eebfdd9
Date: Wed, 31 Jul 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722452153
