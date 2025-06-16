Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A9B1E9B08
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750109395; cv=none; b=RznXXdA7bji4w0ljHhrcKJdP6aoK/DrRz6ebEruqZ0xx88CpVFKKb15UvcQTBZxdEAAJhaoKoUaYlnkm7KcERBIqJdr8k6/oXR4sZc5/gu2FypfIZHJV9IcGYB5KRIn0FtmLFrZ2H2n2h6bXUt1ECNiCoquw9pYivr6fLp9jPoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750109395; c=relaxed/simple;
	bh=DD8ZBDxWZcrZMRrxmxX7JqhHx/ovwJc/i+SIzuH2Zos=;
	h=To:Subject:From:Message-Id:Date; b=lbOe+jRsewH28FAqAjso6RTLR8emreCWpaXm8z4Ve6wd3OyMl8APKiND8dBACZDD9NRQ3NfOG3RkdHx4IkNgUXWA6AwmkGIeh8z4kudbPuAZKjGIgRXYDH2zpHeygQ3Ww82ap4DZb3HErKWG32auy1zGzw39v+XH9IKh5JfBczs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hezhaRrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hezhaRrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97CCC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750109393;
	bh=DD8ZBDxWZcrZMRrxmxX7JqhHx/ovwJc/i+SIzuH2Zos=;
	h=To:Subject:From:Date:From;
	b=hezhaRrWgtl2XFYD/XCepy8A6P+XI8WoManC/fc9pZaOumutBgDyM3GlDW9WGnz4W
	 2XiSKIywtNGRlbl98ltQXku3ugXonBtTLKFqLWv2F1sEENndsDLjsOzn8/wxapuTFt
	 gYb6awpkRNjmkJQqevMBiRPSAyCx/5cmycRsaepy0ui1TSOY2nZAGRQ9DKjYlVVNyU
	 ELwe91FVefGKcPw8K53g5lFnN6eLbGGN8EK0zkpeANcWCsmBdIVMgvmaknwv3zb6Xl
	 X3D0DFkqh407UnUgrOmeswJG7zWzw5nUXQwMF7KE+mLex90/lToXD3QD1TGI96E+QA
	 R161QBjGjA8cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F745C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010939357.6365.782903528496238682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde40eeb9fb613eb8a858a42d50b002ab58d38d7b1da19d44c5863f47e7ae2c2
Date: Mon, 16 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750109393
