Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3284C2D1F44
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777607254; cv=none; b=A9/ECsrQcFJb8hSjExNMxDDoFLi8HWA6x/hLeBxve5dnzddH48kxh6uXQ5im8xmlPXl1SNqeyjg6fjub7Bbjp6OUgJqUKXPnA2qYDLcs+4Vqh45Xqs001vQ87BsD9u9kPn34FzlufjBT26IO3BB+DQT06dF8JrUWJYY94EjNAnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777607254; c=relaxed/simple;
	bh=6uMaQVf8kb6G6rxKUpR38fcPOV7HZge8azs9k1xDn2Q=;
	h=To:Subject:From:Message-Id:Date; b=XxC9WwsAWxTHGGnvi9khzSIwUnSNYqySFRFtfaLybO1JeJxlVMfR75TBLy2tAv4jI4he4I4ushj3R/AhG0o7FcxiI8IOHcyijm2l3vayUXJkDKh6+IgalDIRNZHiE8rM7ZqR+5/zbwvKvsiylLm7cjsLq3/MtOtMn2l8EciO+ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyoVpQv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyoVpQv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C334EC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777607253;
	bh=6uMaQVf8kb6G6rxKUpR38fcPOV7HZge8azs9k1xDn2Q=;
	h=To:Subject:From:Date:From;
	b=UyoVpQv7zwg7UFlOBhaoRM2zcHeFpwHni44lv62BiRwbKIR7XEjX3B6Vz9KkhhEG2
	 JGfz2Zfk9D1Ys2VsIFI/rb7ym/w8+i0gc3vb1Jc0WeYQjkekjsm5LF3PNH4Rldqv4F
	 1YsvkynrwXlD+dkiaUCUMorlpKj3Vrvb7GbDILFX50lr1P3LAlGb21GlyyFpYk9wcU
	 eVTrhNs8B2of70BY3iKEymoaryveNZTVE4ZSAZ7c7fxSupk3NwIAmfLR7QpiNcbD8V
	 sjWbcrbh21W6RWH5EfZ3dnVt3edzy40jp4wuQFgw7kb190B3GWqRaMIFiGH40zxWYP
	 2ii2ywV6NdKAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEC0FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760725368.11260.14235729170539691640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43a5e321e289e07f73be147d15d5559459a0a0a123e98cc0d76ce0c841b5f49
Date: Fri, 01 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777607253
