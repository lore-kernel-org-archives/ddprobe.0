Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4720E25B1CE
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753253395; cv=none; b=gABalqZh7xXOtcPWfFUeg1/LNB56/2+3a5z2QkvuBDqrD1vzpiJLx+xbyFTKJmAUNFUp3RetvqsDRSnKl6xDNll142usRnvn/ialdeh/YujZMDb1jnXEO1mQVQrlGSOOGFeION9TR9OhLBfcpxepbW2JirGvXnPId0RciUl2GNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753253395; c=relaxed/simple;
	bh=io/VMrq71YMX21RyPYGgKfhzW/OdngY00Ss5iuWZnOA=;
	h=To:Subject:From:Message-Id:Date; b=r07RjjmVbcyDX35ZGBH4TptqOuYHXX0DUS+7SvauBZ7bJvpb7jM9ez/eqMVphBZZhVHgAbIoKv1+YFeiSjbBt/cwsdKMMBAYpWZY5PE+bQ0isqASl5Q4U3eLZSYQpEPDX561Q74MrmnusAHihdNHKw5JafFHlx861cLrTJeOB2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5MnNGUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5MnNGUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FF8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753253393;
	bh=io/VMrq71YMX21RyPYGgKfhzW/OdngY00Ss5iuWZnOA=;
	h=To:Subject:From:Date:From;
	b=D5MnNGUz1DSkuE82RSbOv5OB8+4P8V5blFQ5N9j8s2+8F0gCbFEhIBZukyoLOgkCV
	 iUfxPDg1YWiKf7WZhFbhciFTvwcj4bpPZuyJmfcR+bpC6UW6REHUrRqqIP6X3gf+fH
	 Sf3UdtofKmsb/IpgTX+u3ntyCJ9YSQDWk4RP6Cdk5I0z3DLZ/3xdwTJCchW8VdiW2E
	 4nKilvsTI///Cx1rraZldRhmeWYB97ZSi2ufUvRUvl+/L/VNDrVs5ZexbuAs5WWX8b
	 fazqfUEV2xqvUKL9SXViJdZekARPQmOyCKooAaxoZANyM1tLRaISLeFKryv/luZ3BV
	 0OXBWMRMuXJ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB66C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325339358.2466.344318223863212267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7647a410d92a39a14530307aa9c5fdcf0640c684ba5f406ff2c2e35e7ed345da
Date: Wed, 23 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753253393
