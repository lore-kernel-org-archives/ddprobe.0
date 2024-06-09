Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCB026AF3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717966643; cv=none; b=e/89kZoD8jTwZWVsJ0MFYnB1xkbDh7soN6Iy7FCLQWJUSsg/bGNIyHbZD/d8UQ4ChcVPJVKpCaABhhDGIxWJ7bH1EiYXdLBSLqxt+LKo6dsRICGGmgbSiB7/OozlioE5qSQ2MM8kmgPUD/2TLdSF9F2NRKoavYE/FkbVaHO03qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717966643; c=relaxed/simple;
	bh=nKsWuKjwqAJlah3WE4ItZB2kJh6Obg5u32k1OIly6Jg=;
	h=To:Subject:From:Message-Id:Date; b=U1qDJepdcbLnZiWxYVKZPoNS4S37IYg8QyAr0aLSOw66IfhcHXhlryDiui5xjYbmAu8QC9SFDtQdcEQeB71XyyQE8baL8KJv8mlypvjutTcAJn/beac0Gei6657r/d+1nZUrLLqV7Iyd571LtS6aHPMZgaPruBgLS9oUbzbZhTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGwGHBmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGwGHBmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25B3C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717966642;
	bh=nKsWuKjwqAJlah3WE4ItZB2kJh6Obg5u32k1OIly6Jg=;
	h=To:Subject:From:Date:From;
	b=kGwGHBmoZj6PwA4BglZDN84pyXuPnXXaiDtcO+7eCx8Le/LP4o2EmkFpeWows6tzV
	 ODDWf6xIqxtpMtrqA9B1IO4YThPVA04WH0GuRdxwSa2uGcUoxuQ/N8K1j8tFgjKpvS
	 Se/Hc1NKDVsQf2L0BcUTWWKYUmATKEcA0qtf9sz48yyR1/ZaC4yWdKq7qBKAJA+aC4
	 jtAP8cY7J1I2Yf4yRri80qP6+ADclTXo5VmY8+JjfFeRBym6oEw/FPtiCriEBq5rEA
	 0qmqOoLBfKPdWz5gsTj+wFdXPowZpaDB0FNIdG8+aHLyE3KvNZndLntv4dRF5HO09U
	 VNMw2qQaeu0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C154CC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 20:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796664276.20586.14752407995629546898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87feaca0b0062b26e6e785996eecc560b1323692c11f97a80ea3bf0d89cede7
Date: Sun, 09 Jun 2024 20:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717966642
