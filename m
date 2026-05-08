Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219A83A1A55
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778281054; cv=none; b=dQ3ujuKPTnaA7Zx1YGeDD76yIlF+828Wn8uWzdXXaZanOEIo4/Q/GzRTtSpJjlLHJIIrtzom+xiXVvpN8CpDOiVYh+G9PTXn52cF3xHY5ONOX3JlltNRVeE1VAchp/w5iUwWzJQ/P4tao83sQGcx69JRokHEiVKaEdhIJ/Toy6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778281054; c=relaxed/simple;
	bh=BGkCoy0i8wI54NmsTcedsMhMknnwFVYR33kxlEA/PXI=;
	h=To:Subject:From:Message-Id:Date; b=XsUqg9nyVJaN4aHtYRW1vBL+KFTjbu6rA1AYCSJQOzC8ij92F8oGk6AbtqOi5jxkT9BnkR3hDoSa4iGiamq/tK1ySEQY2htkxZu5bnOG/H4/cVfQUCDI7AzznU9C6x/Hs9agZ4ZeRLO+nDKVKFalYKrBAaywxBUANdHDKpnzlOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKIzwiff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKIzwiff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE30EC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778281053;
	bh=BGkCoy0i8wI54NmsTcedsMhMknnwFVYR33kxlEA/PXI=;
	h=To:Subject:From:Date:From;
	b=kKIzwiffpSGLXC6tglbMJQMzmEdz+SNpE2EdItDQ2m7lPXH5YXR+CEDkhyjx35z2R
	 pG7oQTaFLdsKwfRBjMZ/O3XHK+jC5w+pmYGcBQAFmI5xRfzjnsu/KexUHd8Tmg7Rze
	 g1lUeFImpki2GT3cUAge2ix7MDGWXz+jv8XuYSmhKYr0KT7Bmt+dH61FgwoU45KiBO
	 JyIImKxoNWZd2raRW+P/+cRPhiafF2PotitZRDf/gcBsmaSS2sLWrLM4vWJjcaX0tD
	 gpghcpKEEEwiQQAgAb59pnnzg/Vm69Cil0WPqeiL/0f3oIBta4mRsfMLfoeYSXm1w1
	 txXg7MUJe6wyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF758CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177828105369.10739.17876436251301569881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002eeaef76bbed49409983cb7ffbb23d71f650ced10acca0763d4c212649b7d8
Date: Fri, 08 May 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778281053
