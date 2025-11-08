Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8EF1D6187
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762563594; cv=none; b=ZTnTVONldgOvpTe6qu9qej01PHODB2huWIhCRAXQ3TdaiLFqdGAdkZmimHgRbTuw7sMmoA2QNtH4bMftHxf7PSINI8UbudlOS+5LeGS8Omw1MAXWIiYlW21dsi801iPCwBagoIelEUb+sqIL1pkoQb0MenQlGSHzcsSU/WJ9XE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762563594; c=relaxed/simple;
	bh=x5RAI0Bm2MoSG4h81r43lI2S74kU7QyIW0Hr4UDpcf8=;
	h=To:Subject:From:Message-Id:Date; b=NKrU7UDGBpUj45V3p9jBgEU4MCpqAIcLmR+8UCzj9CQAsEbrW56aOhHTzcfRjA3YNtIPqjqH2WWmpwXpm6iCkELkm20X1IjFRHdoK7Y849WmFR3yI62JTCo5bY79fu1LnH0v5/iZfUbgoOJRXzIcX+KNKF9r7LP3fQkrR2Z1u3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC81Npe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC81Npe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0749C19424
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762563593;
	bh=x5RAI0Bm2MoSG4h81r43lI2S74kU7QyIW0Hr4UDpcf8=;
	h=To:Subject:From:Date:From;
	b=eC81Npe71uEu43l9yWPvWZB4XnQY6VesOjAheMO8yKLkhu6GYc+EFD6U/ZjF3ErSN
	 gNG7SEzqf4Kz3jorq2yc3puyRQC87zwmj/tiISpXeM04AzRq7nqc3l4qHH0vtmfPTl
	 Jmu8q9AYqWT5Ju9Omu2puIuKpWAzjDCqDbVLGybGz5hs/5UvKVJUejJm8RlmpjCixM
	 94U6CyW+KD2BZd9DGm1CkI5L2CEuVD8J9/fkXBp2nfJN+fwKyBNTYbSpwSbYYsG0dF
	 7BJySM+kAE8n+RlANdDYrAspFJA34AsVWPdYEo7ZSCJxOblVljmEJmsf1nlRalgQR0
	 QzIE1n0BhmYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CECCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256359358.3137.4325025703773638340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43acd4b548851897c84d642dbe50383f3f1eb73823ecbba6c0cbdbab3a0b64f4
Date: Sat, 08 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762563593
