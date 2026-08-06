Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D1D38F94C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785999034; cv=none; b=Wc0Eyewh5YiKsNe/Eo+rYnmwqQt4MfRFoS6HncuFLtYMBd788koWi5vj2fxqz5bbddPS5ReyL00wuuWBQA03FuCRrvQ7gtgkKCFGz2WvHOKPqdOo+9HjVGTZCtnA5Wq/JH9BQl8B4uVrRVTBHdUxBQT75ErhiFWyOp14enWKBD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785999034; c=relaxed/simple;
	bh=2Amwr6UjmTKshWrS0HaUybhDSIUlBya+iLO++Q6Gm2w=;
	h=To:Subject:From:Message-Id:Date; b=s6ak97qOf3abxSiqjVCvVDBnmsbQrGE5+FrsC3E6ErMHTMC4e2kt4pvxz0/AGgHRs/qn5i1sMGQpPVCa2VCCZnXLXk2jtq3rleCuXTT6FneF7he6u4jy3CM+7RwOygJX+InbsSwPG08c7Iu08ySmO9W8BAjXuGjpdMdJvZufS5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYoBBmZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYoBBmZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EEDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785999033;
	bh=2Amwr6UjmTKshWrS0HaUybhDSIUlBya+iLO++Q6Gm2w=;
	h=To:Subject:From:Date:From;
	b=rYoBBmZxe+hAbSczzYM3Fowb05o9do4ns5cEUGJqbl+Ho5THnB3Rf27fzD0a1nzVm
	 yeo2Ksjdrw22/f46yOCuQYYqlrm77dkig/pjZcm3n+MQV4qu4h0Q1SXWukPPl2PdrE
	 oGElWOXiwIi3hX5br1ofs1HcNmBTX8hUbjH752rTSbndCFZQS16iVyQ3fcX8w2qVD+
	 ZGwWQZxsiXp1NXyEaxn4j9dceu37YBckiYrPJkyJOopsmrBBinHvSvA6pxTxCX0lyq
	 h2U2UHZ+f4DHmmHYiCF0ivEvC8VIjpJXrFRLsDgJT7WRO6/Ywg5D3tC64X5158iVD5
	 RxfhVxfELizcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED6BC55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599903370.19992.5975061565322253318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e906c891e8906f35da2ee2b68b8f1cf936aaaed99cdf74b44157a39f3c206164
Date: Thu, 06 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785999033
