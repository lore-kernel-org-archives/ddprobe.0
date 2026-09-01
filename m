Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19026432304
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788276634; cv=none; b=WziTs10wS4Ru5UCVmKax1QXMVaZJe6Gs756u3WVIlAxL7WUUS+mkluRGBYqZD0Ar/5cK7T0nSLsrioiCHu1acbMh7sw/YxcXN4dxD2+rrWJgT6dGIp6oH373/mNFdxtcEjsAd85AClfNKh3LjboPpIneR7fKrBY10Fl4igaMxrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788276634; c=relaxed/simple;
	bh=SI1X+mOTdZPDGYw1Owpdeok1Bf7OCNpZcsyHDjWRgxo=;
	h=To:Subject:From:Message-Id:Date; b=Zq2zTHemp6Yu3Jm0FwXfr+GxD8AKYFEaKoXHGecr3ZC5Y+7czULqDThZ3zcxO2TXkOsoiJrZo2QsUyBMq5/6OKekXa8j7wRAuuSwdy05i9+lDQbTzSTYp+CiGgbf57MUs4c0vduMz0uERAEZfPSgNk9+QVugJfcirM/IHXnAOw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZQpTt4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZQpTt4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE57AC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788276633;
	bh=SI1X+mOTdZPDGYw1Owpdeok1Bf7OCNpZcsyHDjWRgxo=;
	h=To:Subject:From:Date:From;
	b=VZQpTt4LGZIgPN+QIwXP5We7U20VXyi0/K2KjLBChuifFNAZUtqqaOAPdvvpkfuZ0
	 7uLafrzEgy5jq4dgsafpzRS5shXq0dDOl2zAKIEwFwyjFRSXMsfddEsnTMR4jOjl/b
	 jMfQKCsMZNYXOmsRSRL1651qcQknv7Xb5SXN7MkFPRW5sgrxOFboP0uG/kFBvm+cxH
	 vHrkTWLmIjkQo4sFr8Mjbugk8tCrD579ET8bfkEXckImAuQahB8kj15dBTlKjxioST
	 aeHESk5V28ufZvo/yPPbuznYONU3e/sQdHc016oA6s3ovKbdZYI2MHoOn/NNSgarzc
	 nhrYKU184muzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA955C624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827663369.6775.9302977610517272959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2934379cc7ca57c1e909039ad31638cd36dae825d5d5364e43203d7c000835
Date: Tue, 01 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788276633
