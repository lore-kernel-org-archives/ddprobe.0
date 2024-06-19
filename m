Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4403013D242
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718798363; cv=none; b=J5mMEsXZkXkxJ7h/AEITBJzkxn2y2Z1Za3uk6AroJY4ZILglm/9xVsWXc9A9h0e6C2xJJVLMUU+UmYCQE+bXZ9WD5CdxaCsEY6WY6LIxuZdrVYjvTs3Bo4y1GAy13cEhysMjm/8Y3mm1tWtmFMgG/eYrn1jss7OFs9MBq4Zz/Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718798363; c=relaxed/simple;
	bh=f6/2Z6kcKPE64cqxJW+DAasZrEnA+oGATNqQWHXapLA=;
	h=To:Subject:From:Message-Id:Date; b=lUV9XD8V8kW2PQnzyZOSFxNvpw7NygD6yhoT1A5kr52Fgr57boNd+VnGiT/nXzY5HMp2hOqTSUMmkm2Nlg7Td6WR+S8acuntd0A3JdCmflxStO4LMhzDvT6kRV3PSA2e5iSWIOIBP1xDJ7hkynQzEMIbM4me14HpVI4n2NkhMyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGx0x9sV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGx0x9sV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8354C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718798362;
	bh=f6/2Z6kcKPE64cqxJW+DAasZrEnA+oGATNqQWHXapLA=;
	h=To:Subject:From:Date:From;
	b=RGx0x9sV89cXL8YQBoWJntrA1m2UrZypy1Bni8xqA0iStQIuBcepq2YkOqPohrGot
	 2T2hxVBdzBg/LDyKKNFZnXuxJJ2oCMn+8aco7Lw6BdDdtQarBIzC/Yi6V7+ZlvBLPK
	 HlvGSur24TEhZ3QlkfLDocf2fRDuY9EkqSVpEUXpdl//1dEyTVHZ3JbJMD5CEGLd/k
	 SwyzC4fBJKoxdcqYLcoEHvwRFEf/WOCW1+mMIUB/ZsPgNuiWkOjDNhIHD7DaPbtJeu
	 c9JWXXi2r8IhcCfpTnacBlUPm1yCyjm6ogUBGwjV0T8FQCuDuBKoQ4dTrhrJFFiceH
	 N0zsj37AU8ncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F4BC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879836280.11431.2744671094978497714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f0b2806c4b644671f68fc5a63dadcfefa87fac9ed4d879e1628865f00d4477
Date: Wed, 19 Jun 2024 11:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718798362
