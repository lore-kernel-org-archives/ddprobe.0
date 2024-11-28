Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E8214E2C0
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732830354; cv=none; b=GfTyIe6Oyc3G9te5h+w7RPQOveuUnvKmEgA4ga6f1nauv0AKYtWNTkoES0BF0W95ODDxyE8ROFNzv996IYOJEDuWFUlgx+lY5johIulXRRMeGHRcI9b4bmUq4y31OHKrMKpAh3bRDtlKUTSfVcQ/nRtn9VIQFcMkQ0T2peRKPWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732830354; c=relaxed/simple;
	bh=JZPPU2pFVEVoVJm88tEI5UgzGT1DrUOV0tM0+mIWV8U=;
	h=To:Subject:From:Message-Id:Date; b=ZjDINMmMKIx/sel70isHeRat7vS0O56v7+UuJSoqseXtndcwe29XWUEzSqcYqiOK3/yX7Y/aUZQUQs8jzjakCfm5kZR7OK/O4qMacI0iEr4J3fV3S1JPZSZ2IOeg4MbDc43Jd5y4mtpPbm3svX/vzy+amms2NJdg/ivyT3wdRkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swSUQE5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swSUQE5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB7C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732830353;
	bh=JZPPU2pFVEVoVJm88tEI5UgzGT1DrUOV0tM0+mIWV8U=;
	h=To:Subject:From:Date:From;
	b=swSUQE5xdEwCN91nmbXBZKt2p3q9a36d/oIgr1jnsXD8NTWU3v+MFCpUHmZ5yOOFM
	 pf2Sq1LYF70+9dZRiq6AqSxaMvRqtWBBWU8ZZ7yK3n/fOnHfJrk1dxbwhr2AgtqlYY
	 92YtDJozj8AMEUS4qAJzwcdZR4EhintRlZ5U7oSHaotYmuZ03rMNxopuPWfWvRarIu
	 PCQkV9LT9qtBpCq3k7ZLiJzL4lTF89ha4P2rsKhFZ0Y10wwALVwknz5WVCt8SFXcWk
	 1+zg+KKONNit0TlzTarr1i+aw+NvCbHp+jEbbrIQDEpsvnfB7PgxVBWGzXYrs21IB4
	 iMn+PHeoAEYHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B6ED70DF1
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283035359.18657.7954975815893500496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a6cd9b6a6f218fd16e7336de35a9e5a8f4a0af29172859d374862e5eca9126
Date: Thu, 28 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732830353
