Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 888F03D3D14
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790229034; cv=none; b=RbxsebbXSxb4Zl1YMH0RuI7MOzjaW1Z6CpRCTJ3AIh+Wuo5Ys4T55czRIScSG/VsraUZR+EVg/bIZYIOIvNIeKuBy5TvQx3P8tt1Zqsb/6or4ZQ2/fNORH9LSmxOAIL2rjVPDsZto3saHlQrx6FbhNiQK3a4fwk6kVo4n154VlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790229034; c=relaxed/simple;
	bh=UBPvRtwj0SbsSA/xgwex20tMQw66dYVkruUdNhFLQn0=;
	h=To:Subject:From:Message-Id:Date; b=cTcGJdPj7qMgw6/ibyY+Tl+xHiadoRlBEaSOr91WAiwWsLAiR9rf5NzHkmTbvMLFqNiQMWaeOFGYtre1/YCkK3MfS4RI0IImyUSg6PDTo1v8Yy4+BMF6Vch9hQJl8UJIJFPa6cqEqOrpdB55lPOX7eJYscdDlIUVl1kVZ4o/YFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzBuSQ5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzBuSQ5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A9C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790229033;
	bh=UBPvRtwj0SbsSA/xgwex20tMQw66dYVkruUdNhFLQn0=;
	h=To:Subject:From:Date:From;
	b=BzBuSQ5aZB859NCKU+l71l9ioSKfV9jUdRt47Ky8yEiXlbj2+5TNNAwxNYVrsBobr
	 hcUvAfM8hMVGwF85ro8jOI/vuQ3vcizWrX3dreXsaQsTqs0MHvnrfUa/L6KNqQTtdC
	 /f4FWGGktDWMCa47HpFJ2tq30Y/H+htQzSm8SgNQxm/mHvxe0XfgIxjwIKRdZ5r+sp
	 VbAA99NYQsIIPPfwl/XpVPExgClosS7kycIOBdP6y8Xqpr/3c4HbG3CT2zj3OA21ey
	 AsIShJSx44016IcNEfA9XAi08qaCPui3YPAWQrPKAkX0eu79E//G0VSIwjctrGk2An
	 5etgw1WA8CtNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB54EC98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022903369.6274.12208708076140505506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f313b4130d597bb81dcc34a3b8a19e60958f34247a3af0421e49dd5fee6e59
Date: Thu, 24 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790229033
