Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277D63D88FA
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783418914; cv=none; b=Lf2Y2qJprFVO6pk5pmRSF+cD911oJC6t6GtxvTD5h2a/wgoiAuYRMCvbfjKzsU24+OCBGf2IJ3gYr4D/zosKtGo0zfl9n/TlpLMy+2ZfZlltTBR0xUaEGNyTLfp3QOKRWYi+2k1Nf4rTnvSXqgefbyOrIqkoyScidm8rk0UGpWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783418914; c=relaxed/simple;
	bh=fUiEqrWeOevq0cfp/Ur+5zQ1scgwCQBcPNUDGmo4uIk=;
	h=To:Subject:From:Message-Id:Date; b=UbMiAE6tSRmg5LJgDIVyCJiYrMtYVVQHYyW5zaKlubO0JpnX2Y2QslZocZEYkU3lyQrYblPvRkHCRBk92TuqDdqEU0/ZlaWxljF0btcA3GlpFtFVzNNAKzEbR47YkNImfhTnJKRLsCxDOgC+lDBQo3A3ZrWp+dVtHAlkqJq4Yg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1PZEZgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1PZEZgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC69C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783418913;
	bh=fUiEqrWeOevq0cfp/Ur+5zQ1scgwCQBcPNUDGmo4uIk=;
	h=To:Subject:From:Date:From;
	b=I1PZEZgSZyKC6YV+PIjQMCOtTLxf4UqJBDZ2HR/bLMtlBUWIS0lYJrvp5ymDzR9Cw
	 mOHQY3zngCXXJNRujyyDFpjvINaC2Qy53EIE2BmZSGH9Zz9TfaF4vVABp3Yrcj1NL/
	 x30rSe+YUDsc8PX640dVtlIlduUG/2JRzapZrpaTTkcFCkEFTLPOaZMLwogHt6OdbC
	 9eScmL+SLGgUW+hCBigj6nDc/ONA8D2DXnGg5uqycc5JHo0NtctZF3bXDNNNwuxym/
	 ZHB0J6OYv2QDs1oh6PRXimdEZ+blrTtTLoso8mECIn0c1M9Pz7aL21qdttGXNAzmPL
	 WDxs86Yt+Tnag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90E8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341891368.29442.11243939908361418416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc842a2a2681051bd081c4e944879ef52ee087afa93bcd40fdc18c3668fb9b75
Date: Tue, 07 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783418913
