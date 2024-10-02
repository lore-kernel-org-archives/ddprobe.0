Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277571D0E39
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727884554; cv=none; b=iQcHNn8sc/xmoj/3cTUxiA0fY+bQl4u2LyCQwBIvaorLbznMchoQyR6d+njlRJS67BxcBfUjtEQNR6y17NV47V4i82uNquWjA6uGDbTlyBIfEQUzMgcrf+CXezk5cJWxgXsik89In5ksPlJ8HIhuAPRmrtopX/6zqOKpo+mPDu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727884554; c=relaxed/simple;
	bh=nREv24owugcYlyz1usgs9q2pil5lij9cQaIXaxJOw1k=;
	h=To:Subject:From:Message-Id:Date; b=fvpLZ7YNlKNr9bgT04VWNIzs/Qic2UF/ROWUqQw08A/eSe1Zi8vxKLmWp1n73m/mOeZRRLfkTiwl2j+W15oNoT96h+qwagY7nmbm77P/4aLhga4gIC1WIkSUvuY+NidDtA3ZZAbI+Ps8hy7KLNPVr23qrNGFOnM0xwmYASZvFlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AovC5k3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AovC5k3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA300C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727884553;
	bh=nREv24owugcYlyz1usgs9q2pil5lij9cQaIXaxJOw1k=;
	h=To:Subject:From:Date:From;
	b=AovC5k3/RgFu0jLSHmj5E+NuWAxOPuQ92unuv5SZTOSsLEzw4K6outD8YfuXMdYFH
	 aRrbVj58lTzPvzAGLPH6Z7h/FPH9kdQLGVsDogyoyIpZtYoJLsqoVfMPIJEnQwa0Yl
	 abBG0dPNF808o0aPEfxhPqlbfNInsEaG/JLKIWF/8Tm97c+Kt4+OrViMbCZde6IRjM
	 ZhBPCz1rXP9SehTHXhZ2KChKY46tccA3hzgrzt/dEmjaieDAWOUWYSULxII7blSo6u
	 v6/dBfHc6+mrQPoVCW7XMdTpftF3PjJ5BOA2/y0gs+45kTaXnxQAuvoenMuptUt3Zh
	 ewNL8OwfzjjGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9577CCF6D3B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788455360.21929.12836521556286585293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1302ac202566064fbdc27c8f2234d4a42e9115924677a6e47321316df3874135
Date: Wed, 02 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727884553
