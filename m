Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3462DA759
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787205034; cv=none; b=jEFJN9+oKnvN23glZoxUNMnk2qb37qmEsp3RC9S1s194jP0yFcBMTWHJezv06+2OP9lnuLztxuaXOL5SIWrvvEpV9/F3FfaxITKqmbIDzYX28gmmcMVarg19SWIwf2TWeGk5x5MXBAS7GzcuRqhuC8pr+kwjgmL8CwN1cVeJ6oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787205034; c=relaxed/simple;
	bh=1TNIVvZHx04ymx2cdnJSr1cw2CzjJQ01I1X5SPoFxdw=;
	h=To:Subject:From:Message-Id:Date; b=GB0V2oiWRCWLhhG+U5aBRBmF6sn80OaombpI0PdIUs0ehY48bFjVa0M78oDcVJ7eLLzcvlP8xhZsGRpRr+NbGp0nTHxW00Gl7wGPl6wxYi0Vup3ifDMQaDgxZLdCcGeXpsvXEzThIAep05j5bR+HI5dzT1yZdUPedPBi6ukRPIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOf4ddRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOf4ddRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA47FC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787205033;
	bh=1TNIVvZHx04ymx2cdnJSr1cw2CzjJQ01I1X5SPoFxdw=;
	h=To:Subject:From:Date:From;
	b=MOf4ddROhXC7upy5aHnvrWL8tTxalrq+kDdMdN/xHDK526NBHVsyScr/UfMNBOXo+
	 UCqX00VEgUd2YPsVU2jU3AmSww6VaOERPZoNpdQ8CBD6K1cMwgjq9TL7036VTByNzS
	 /OWrV5sATwB7Vf1/tlqzphGo/6pBYoxwNHdtF7jPirGGewuEU+UFqmZUk6ypFNVpem
	 IA3NxFAb4np/beHfHp0Y4d8QYLwaQtdDj+1AJ5Z2A4hiJlGSq8sWSpehgDJpAV6pbF
	 FNo53tgiYKS2VQEPcXyEXujCfasX1BORn8UWVShXnxhgNwQVJdPm/pvqNE+5A7ZSjd
	 7oRn4IF352ZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53E1C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720503370.23929.15987902250805016476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efa0ac50f9560fa5077cd7ae3b0ea09585a80360c6145f3322bc4da6bd9af8b
Date: Thu, 20 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787205033
