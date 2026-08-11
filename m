Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8D225B090
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786422634; cv=none; b=SGPnImRsp/LU9JpJMyarng3mg02lbmyvn4IN61zZ8azYMH7hy9kbUtXvMJ6K4rhE9mpE7yAKhfTZ9uALiO+5tYglZ/YB2rZO0z5HSaob3cU0TY8BeB0V/Y0RUOXQwsxhp50QleJhXP1AnR7hw4076YAFnWg6Pto6hK+fYpS24y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786422634; c=relaxed/simple;
	bh=y93+27TdjPECNDvfrI7NlRO2P6eKerDBFLm0AIOw0x0=;
	h=To:Subject:From:Message-Id:Date; b=opypp+rrP5YoVkyYNRtdNCJ5h2J84VvTw88CP8vdtJDSA/w/+ZS/F5FlvTwdRZ1iA0uOKJIge4nUKdrvn4HUnA2oBc6/zxvYWUZd7B5ccb9iPxKd4mGxl8/wFAwdohiI7TpYATnySDG9ulZcZrJ/DsZh2h8OUpPvHw6aDRhnGeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPcpmTcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPcpmTcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4845C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786422633;
	bh=y93+27TdjPECNDvfrI7NlRO2P6eKerDBFLm0AIOw0x0=;
	h=To:Subject:From:Date:From;
	b=IPcpmTcIqwxO5UfXd7LYk4xZqw8IrIFDZ/eIOQ79MzdkYOMvH8Iz9g1si87uHF+aM
	 G24P4i8J16TNDsun2hd3nNmmjmiIvggbf5k4XyrB33PIMyD+ey9/WyudDHz3VzRiZn
	 wrm20+ne68xrtMnTh+y5XEigXCe75R9Ovmrj1G5quVLuf1g+cTvU0DLpEHoLAgIXc2
	 UMt8lBcKWErsHdeMJXE/+AJDDJ6hUU2Vn32Aiwzgh+Uy4/7wlPRF3z7ijBokXSfulZ
	 +y8gb4Qxx0Hb5Qj5BWHYd5U4feEmFMfJ7WhhovLsEw/35FMy0oRPXDhEJi0btir+70
	 ES5Osxv8qV6+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA88C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642263368.5353.6634655374923359862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dcf1ff8d24a35ea69cad17717e5af1032e899270c07a17bbe16f4c5f2fb7a80
Date: Tue, 11 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786422633
