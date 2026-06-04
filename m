Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FCF3C9438
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780562074; cv=none; b=D68w5YWR3Maqqz7HbWiyXK2GHLrP197rfs0uPFzyIqho54DZQjzH+eI7BmBwVdsMDOG/TBMhqoIfUKZO/LmC0JJObCEZ3hGRRu0zyWdtcUwyQ01tvN/SunHTPueiW8WYp60pIzC+vMZkGAKVYUnfm2B/dEg2FY4f7Vh44Z/55fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780562074; c=relaxed/simple;
	bh=EdsAIlxxIpVZi/Wer4TpXZYzpzd8+YpPo1NjI9SilPg=;
	h=To:Subject:From:Message-Id:Date; b=bV0DkB0xohiqBjfPMbPnAAeKgXwU/tNOJCXaOJvYYdCzm8bm0HnBpn5gE9U2SSY14iHgtqK6ODwx8Vwflsi7OZxtUPFRBVDmXnQKu+RgVuEhTxVHuW4WCGr8JHlPdCZDz47ITbIGhVWCsB8exFb9A3yUGTyHIA9Y6V4UcZoFmSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uk7mYA0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uk7mYA0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFCCC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780562073;
	bh=EdsAIlxxIpVZi/Wer4TpXZYzpzd8+YpPo1NjI9SilPg=;
	h=To:Subject:From:Date:From;
	b=uk7mYA0Hv6V7US0PPQ47NwparAdENyHva78oRI6EtNTJmu2bx961bcXmh544/GhaH
	 fpLZoOPb58O+khOb/DqNsGSxfxt8GLujdpfeMvN7PcxNL+t37k0tZ4Pg8NVeOusuxo
	 c//Rp6F1w8j70a/TV168NMIRxYMvUIARLTUXLdfc53Ukw37odFt3GrBNYeCDMyUIcf
	 OjYf+Z+7Ri2xavXKY1jxaHv00xmD/dvp+a2zelnuSeo/DAzL0SK9dJqARlvl70/xLW
	 kvYwcIX+H9CDBEwpMgIkt6tAuYiMemAMOw2LJAZCHdRaJiRsqSg7gZCy2C6aJend/7
	 zY0YeFuzgAblw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54B9CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056207370.24196.8982220484564052006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c54a160368cc557a4ba185564f20ba32b77f66ef8dd51f2c690d3bbc674b6c
Date: Thu, 04 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780562073
