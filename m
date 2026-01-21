Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3A6376BDD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769019833; cv=none; b=j5+pKImCQPJfFUzPk8QJsqBaRN7gip371uDLSu/BLvX0GvJXbKMqnX01ASlv9UOPZYgJPa6pHoYjGPAnb/h2CBlbSe52mVVHQ8ERYQ0uaVPH8pFXy4TnTVi3fcW1RCpzmHDYfzIuK9GARU/fWhHMMUw81PZkZ+6AJAHvqzkRboQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769019833; c=relaxed/simple;
	bh=IVzvFIh4ehTBfePpuh8LPmkv1Xu7iSGlVd7vaySGcJw=;
	h=To:Subject:From:Message-Id:Date; b=XYdCHZgVnOFhG0YR2fTEoog3saR0SR5mqR8YCz6qFR0Pw0+DTnKJOCNgU3yyfRgnMAFx1FKlDB6iT0tlfs5iAOADmD0t9HvpqwLeaM9eyHhVcksKGuJJPLFbKaF/7c+pnBae+5mIsvvE4WpDoGsi09asgVpWehRuInVEAaC05AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9ujJb6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9ujJb6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0952C19422
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769019833;
	bh=IVzvFIh4ehTBfePpuh8LPmkv1Xu7iSGlVd7vaySGcJw=;
	h=To:Subject:From:Date:From;
	b=h9ujJb6k6J3UrXJPoge668MqZKyv/4bYRZput1d3SC0bSed3lvemzkQSn0s2qar9+
	 e7WmScPCTY60Wq1d5gNa5LMG2A3KZUz6ZH9hKGzlgI1+uG2OHI5l+4zp0tE33cwpeK
	 Wk2l2dTbLjkZb2+eeW13tVzavUpGfm/tSOVp7wNh/ayeZjX7peChV32MqqJU1XnxHD
	 JaDkwxEgBWC8J9iBkWC6TyVQlqv9EA2YosBSkjdIlbUHY7CLBPqJodIR68tfPAFBi8
	 b607eciQYCG3TbDk8r+ea+5zTczWFN6kOLALyUTzHnkGH4bFvYgXHjHvHBs591hiz+
	 Eh5kiPlPhcpzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92329C44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901983358.21206.10305820061706241481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5912af4eaebee9228d54fb4eefead91a403d03f1b39f539f0e3e94077262c56b
Date: Wed, 21 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769019833
