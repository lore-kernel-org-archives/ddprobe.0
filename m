Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BF410957
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752871194; cv=none; b=DNmQWWeVhsRjK3pQQJ13egqhJ4TGHNLzbhqQmVOfZKeKd1epuGdnTtb8Y7Xt/qYdg1WJOIh+sOfjHfTa2Mf2cdITVvb5jz8lhQG5JJuJrN/ChYCOa+c0aYM+gMRwodTvyiqO39/f3JEtOMWtn95tEuTwK2um4P52p8NaJ24DoHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752871194; c=relaxed/simple;
	bh=HE5l0f4/cse6rjGxGkEohazffJIF2WOx3Z05A5dclRk=;
	h=To:Subject:From:Message-Id:Date; b=hRDgPxxKASMByVGwd8zmtZvNWS1Y39aoFG/LxWz//QCoN58KjfbBV/5lThKbEiqwAPzEMS5tYVU88k1cuTOPA7TsJXDOZaGQsAg66nm3X1DB3/ZGwd3VeEwLAaern66tFKyadzQMvwbgv1vcvTAewLvy/lWa4GwmL9gUATt3heo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaYy72YR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaYy72YR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BEC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752871193;
	bh=HE5l0f4/cse6rjGxGkEohazffJIF2WOx3Z05A5dclRk=;
	h=To:Subject:From:Date:From;
	b=FaYy72YRC1uaqyITR6tZDQJ6Bpp9dLM8mYYZ375grGX8ejH5I9hx4Vyk9IOaN/88V
	 sAwLYYUtu1N6RNGs4iLIrIIgmzwD9eYDJ9uUVG7dqJYPWd4FUsLWSwJ/K6kKJ9bo5f
	 BPzvm7FMdzAHBRY6OdocrrJAmvPP3sm/TYf62hDxrQ4WWnfkTXAOk3KxjttC2mfCBZ
	 lb1/vZb0LLRHXyyxQCo2Fa3O2SXmeUgsLinc2KaPhABUBgEtIjAcp5EZBgtA+GQT0C
	 PaRx+CCpLenFP8Tsr8WWO/lWolO8ljB84+50ddZD2z8sghRth8zF2o1Ez9TGNOT4HP
	 k4vd0E1Q1U8Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90782C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287119358.20767.894036727113808884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e89443715674f873e47533794699bde0ecbb678bab21a71c38d0afad69767aec
Date: Fri, 18 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752871193
