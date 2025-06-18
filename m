Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3127D27D773
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750287596; cv=none; b=ZzR8HK1f63mBt2E4Cd8qkKZcY0uQXpGcWWRf81qnPGAYYGIyeLLlqMcBof3lzAWesIqIWBZdinucJNYAztdixOUKWUz+ycDeSf5Xkt6klYv0apiWVnQMdKnn6wTDLFBEoyAayesDAeV05kX1V7AF3NZ8ZAvw9rdCrecsNHdheVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750287596; c=relaxed/simple;
	bh=sDnKAfcGbg9ACXEA5gIoWRlUkJv/zoiZvcrzqDrob64=;
	h=To:Subject:From:Message-Id:Date; b=DocqS2BOBpRut2jCsJYbmjbNtfAuyERjN776SMezg0R23ZvcL/atpAAVAxvaeXiG8PYOJHQ0yLza3b9oMxabmGRBIGNwVV/GNi3JuMWaJYhZIh77Xypm3Jez9nSzIPI7WfNXFd0ib7QE4+eCbOrD3vSApheYWUsPvcEoiYv/dPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lagBx8iK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lagBx8iK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750287593;
	bh=sDnKAfcGbg9ACXEA5gIoWRlUkJv/zoiZvcrzqDrob64=;
	h=To:Subject:From:Date:From;
	b=lagBx8iK1v+M026CbQ2teqxiAPsx/hFljdKG7NdbNI2/EIC5AOZTsS5235VJqxTxf
	 AUDtM9JT2OZ+jbXVAwHZtDi5Xo+D9KPvudxNM9jFQE/NoytqB//UWTjoG+uJBDi3Tk
	 ej/+mLwhoFUjyAAwoU6NnP9AxQUEb6JrflANRaD8LaossBHb+4e5biBLdtEEwLu2H3
	 cOMNetWg8k1Ojb0ZV1hdawTMdKainVXQhDXb5YAp/5fHswMR35uzqTwr3bhRFaKLVr
	 AkDv5wPBeIELdIKurkQSJnxG3TQFAWFS4H/bXzPSHVETO7Ag6lWkQvelOMYZBf7pQJ
	 iOAp3rSJkcwTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72FC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028759357.3674.18319251318027315063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c428359ad12900bf10ba96b1297a959a835a234d5728d4788dbde004ff64ec9
Date: Wed, 18 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750287593
