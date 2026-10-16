Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD404DDB48
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792168834; cv=none; b=CMoapaqU1PSlNcq/N8qg/TF+1ZucWQWvUWEtnKg9U4V8dM6yS+CzAgPVGBFJFaLcq6g0iEjApVn+MVI4Kxm99rzaZdP3z46lM+aDurAwPEBXPLhRNZ9IsSGjOp/Is3x3WFYKajqrRyTZ2ilxcgfyrDuTwxdWDKsGT+lx5sBQgp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792168834; c=relaxed/simple;
	bh=0Jzv7Vrg+51KRGJ2hbXKaiFj3shIcGTPZtQQS1UYUZQ=;
	h=To:Subject:From:Message-Id:Date; b=dV7NbxUzhHp8zt817sd92V3FDkudRpx1CRxTyK8bPhJw5oz0wAkMsczDV5PPgypUTTiTVm+L2c+jDZOJf1g9H1iC7Fh5g/IQD1K882bJegWHIQrsbMO5a16rRr4kMorX/P5yeWbhzP2xEXDuynhJNPQcT+NqZwNsKVwzH6Hip+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBDnwkRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBDnwkRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10E5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792168833;
	bh=0Jzv7Vrg+51KRGJ2hbXKaiFj3shIcGTPZtQQS1UYUZQ=;
	h=To:Subject:From:Date:From;
	b=jBDnwkRLak2L3nYAX/ZO22UJUvW9Be2/KoxwXxQQlup0PvO26T6r5nDvdXM/fb87m
	 RbM0C7YoyApoORIZM9mqAaRu70UUvDD0oTpsn0JKZnIu36EylMtvSe75rTls8uO91l
	 VaYOa7QzdejyxJT2HFCW79D+p1D/wzz0vMShFpME7gf+GIbzzvIr9w+jnG6+XXHVvs
	 5mRMBEjwSXAnhb+xU5exFxZyqpSOfMVk2NM9MXxb2HfR4HcNCn64A1chuB4f/dXdr5
	 F/lZeKtiQlQJkBrJewrUATB5D44b25M/3zAmdWy0NJCNeijbb23Xy147i2ut37jc48
	 wL2GWYGCSboLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8463CCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216883373.14751.11951633282580508994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c412246ab8e752199019feea93d38a446059cc637f5b70b5c45a2c92512af2f5
Date: Fri, 16 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792168833
