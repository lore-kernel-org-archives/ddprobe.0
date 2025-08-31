Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A390224AFA
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756669194; cv=none; b=eM5BuW1AMikrxuQyJHpyj43T4U4yTiXim4jt3JLMpHwC+PwXlQL0x9XB2FyNI2oHHUjpqvbGHBteYBvxImn4e+ckJZ63nSipGB0HfSdm2DBttExGMoONAKnA+Gy2B55Y8P5b4/rfhdk7dTI4h1AmFLRBgD3jN/ZWbRmST/yQwro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756669194; c=relaxed/simple;
	bh=POZrdbcb/hHH0cZht317V9mABx4cQ12BnRXJ/oebY6I=;
	h=To:Subject:From:Message-Id:Date; b=GxSr7bs0tGZc/2xN3SG+AQclJHX0wdDrnVxyWTNds3udCgs/qM4Lt5wqwLyOgNhrPGRorgut+K9UuSvdaydg7kYLiniateTZcizrcopodXGXusxJtMYxAMGI/XbOMx9v7rClJ0mU9Ym6jCFQcDkdscI0gIVfwJGpJE5IZw/kp6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QphOjwzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QphOjwzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA2C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756669193;
	bh=POZrdbcb/hHH0cZht317V9mABx4cQ12BnRXJ/oebY6I=;
	h=To:Subject:From:Date:From;
	b=QphOjwzDr0Qo38yfqOjvC7/AmVshN2L0O2aaWJ6UQNC35YNf4nuM/6QUC76RmwruL
	 TAsisvGR2K//TL5ExyNCvQy7MspN6AM2hDyljMD6C0UQ5YN2vMSDSzhPC1LttrJQpj
	 +e4QSxam27gRcdKefUasxx4X7uCqm7XVPdP2YQcvWW3ax94ytgsUFj+MIiv65nKJOt
	 iYYsbuoR99tSjr4gPmcS55onDvl/LOSZGrFBoJ48kPnlGhzQkbjwi0y8Q+eI6Kiqc4
	 KUN6LUF4VsRBkA4QkcB7Q1xuBOQ0f89tllhW/lApiqUPrIeUSpaSGnVzHWzVoasIR5
	 QBWc5DxJF2Y0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B33CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666919357.7240.3200936667304799017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c286040b71c094e41e67ecde71d83aed04dfdfe8edc798e9cad4766dcb375aae
Date: Sun, 31 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756669193
