Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD421E0E00
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753163395; cv=none; b=LVKRYXHZWaJjGgj7Fdq06eD8H7J2r9IkYz0K3/L02xuGho3d/VtI8LPPG1TU+xp2wfCTr9PLd9/QJrSUwl5CmZzVc+/vic0Y6Xx/a9axFDLEz7mctVrixz9KM6+sek6DFmbRbSAoT5mAodwgf394pNZ9XF5UMaLzlyNa5u6EJOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753163395; c=relaxed/simple;
	bh=BGHPX0/zsCuTWx14uwsv0vTcoNh1IF3VZtfmMW1emoI=;
	h=To:Subject:From:Message-Id:Date; b=u5lv0OZ3O/f77mKhsgiVw9kCcWgMx4YrktS3EEm8C9PxcSaxIR6e2gMs1mjVd17anr/9Am7IhFWo3C41JIhz3x0V3KjIbmV0zc5QOl6vIlCWEaK4rmwydsa1oa7zd473q9lN/DMggdxCdEj58U4p7sE2lnMx7+mzpHThLjwEfG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEsae0xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEsae0xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48CAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753163393;
	bh=BGHPX0/zsCuTWx14uwsv0vTcoNh1IF3VZtfmMW1emoI=;
	h=To:Subject:From:Date:From;
	b=BEsae0xttA9b6WhptrNWC8Zakk1CdNeD/Tic9m4BERGda/Zjw/aC+wi4fVwPoCZLH
	 XpRbzRKHdMFV27uqXEPvM+dkFxZlDNWTsZV0HN2jYphIhB3cvHcB7/B9OmRlgsFSUp
	 RPaiEZzGGAOP/HMTqPkur6z3Dv6CP29gglzVO+89LctiXH9dlfp4DhaKy1pAUKi5TO
	 gAuaV1/GDLd3xYljsc7iCBuSxqWGgz7I8w9JMJ9nPjd3LdIAo4IqTgXcfrhCW+cuBY
	 +zm4VhrmV8euDSM32/ffezFswmJTqdD6GRVQj81y3xnvdtK1KRNt27ArvwqGSAPjtR
	 Dpn4/b0CSbTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FECDC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175316339358.24712.5885705892188936815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92af37b90c42f1f42dd12029e99d039a9614e93f9f6702f17b2b8b5f4ebd3b4a
Date: Tue, 22 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753163393
