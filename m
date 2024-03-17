Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119E318036
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710673097; cv=none; b=YUVSLXwL7qNdX8SvgrB7K1qObIjU4exj6RmZFrx6Lau7JI1K1pE9P8IX5pAJUVST1nzGDEE/ci/jJLHZbuJcAia/oGJRGnQD8Pj6OpcEsr4SMBYkDOIpbq0i2RcgHbFg1rp2mXhJGN9dzkyKpIGcKtnOndRgkf3ibhSitjDXN38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710673097; c=relaxed/simple;
	bh=/GVWDj1TzrL6mS3b0nweWNHISuvTMoQNS9pRDANjv60=;
	h=To:Subject:From:Message-Id:Date; b=EfR2W6r8AxC/XWJnl7bNS/I5Yx1g9XE3CF99MIHHQ5dMQZap4c21jdavOzIL1/MU5DiK4zR/xvdyXHRP0fnvOJlFwaQCFKyZWu6yUnEizeH7bD/x70Id7JmfUkawdB2PCcyMkCx6p1KTqY53hup4fFH2oilMEoqqxJiYgi3/Ib8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnBlcus1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnBlcus1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CC9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710673096;
	bh=/GVWDj1TzrL6mS3b0nweWNHISuvTMoQNS9pRDANjv60=;
	h=To:Subject:From:Date:From;
	b=tnBlcus1TQ33u8HAfksYiWX/WpFNkeuToh+B/cCux45tbMgOgzaLs5JcsUQITE61c
	 ewWTsp3guxVBmSWXqulatn0u9YpwxzhfNl80EwpZNyIff3Pn4rzgsH9sEQZhQteq72
	 5ncTEXR/akO9u24nRjKJ2gw8lWmPCYlrsIBy0gYP13BnFxzkX/Bx5uOQVGitqLbmrh
	 kao7Pay3fu1sPRg2QXdXex0YJ97IdWwOzkYTtdZXUX6nIk++fJoM2ZCzcoOWUk6ZV4
	 t8TZf/LQMTv/BHQ0VH2b+Kq0E9s6mUvS2Mvfg1FvtIXn9C+qzFv8wirVK2HmQUZ4Xe
	 rvufmSCk/cZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F078C54E67
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171067309637.28873.10096726784879659434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7989741777270c30040a638b3478de6ba7cb29860fe39bd806eb7f7af6494b3
Date: Sun, 17 Mar 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710673096
