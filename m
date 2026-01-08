Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323714E6E11
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767876834; cv=none; b=RWE/S44X64Yd10tO9Ex2/DQr4h1poCwH1YLbrt7nhy1ksvxPQZVwB0FGbPsiTbA9KSOJ6awWoXSefbIJsge/0HpIsVv6hzW9XIW+3sUkY2A+nDIbs6l9Fsf8hli9MIbEWOSyzj4lhO6j2rtQadiCrf2ANtrHSrTR1K7Om0mU5JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767876834; c=relaxed/simple;
	bh=l85ljUcR+R5z81ANqi5AcxmF9DJE+Bd56djAYEcDQOA=;
	h=To:Subject:From:Message-Id:Date; b=C7of/fnRFwHfz7OkDG8shfQQy1ahEvBfU+/2hwsTudTrczUwqeu7+yOehASrVYE+a6dyK0xKCI54XUmlrEPbBtQnAq8HX+bnt1olzb3qmjMg2S7vP9PcLnA5FW1UjyFJ7Qeom/kFvYqYu6yOkwvlax78bJERLUr66BBC6dKSv4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZjVCb80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZjVCb80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE31C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767876833;
	bh=l85ljUcR+R5z81ANqi5AcxmF9DJE+Bd56djAYEcDQOA=;
	h=To:Subject:From:Date:From;
	b=lZjVCb80GfKlEsZ51lRwrmOOuAV9Y4Qca6ymZMMcWHCDyQ00ccpTQ7hMg+iNE6Xfy
	 y94TFkoquTy+mVokpc9dDycf7ea+JR5lClANlgTL4E0Ia5DQXwWuvOgepDXYBJIxWM
	 5xW5g+65ztDFLiHxt1WvLjXietWyMGBaqbgxOPENSsZJxpcFdBNGqu4h1UCkPw4Yf8
	 mOOxR0hmX4PebJ/ML1PsiUfqAGqa2NP10EJsurBOFPfPwgUx3m2I9W0mewGHE84BzV
	 Nibd5xRW/HOpN8FK4l6XLvHQw2Rw2Azhpn+gPsbTJm3Am24OOfPa29kEax0NR7q80j
	 1Ml+/ZT8ZEPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F576D185EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787683357.23996.11328738918437991166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10cf6fe1fe787be79d657fa5937c3fe054194d0dfba58f853661cdb02f3c1521
Date: Thu, 08 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767876833
