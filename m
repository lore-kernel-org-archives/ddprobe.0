Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8D83E92B6
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774032294; cv=none; b=Y35h13/x0HDrId/l5Fae/KvvFa47Vy4EMBbqCSMSA8XYscntl5c1mTH4uCeyuhPirVxCaDdy9f0ujTUuUcw02MQ4VOJcd0Md4jSi2XEOtmEvsjyg3SHxvDBIMi1aMkA7DtEPhOnUg/i79zfoeELkiTJZs/GoXae5ddUuiEb4o2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774032294; c=relaxed/simple;
	bh=hNavk3pbr377YySRV2Hztp5lxT/PzhpOqbYcmYcP35k=;
	h=To:Subject:From:Message-Id:Date; b=D/bfDyJXEqeYU5zxCwdS0Jljfrp8zxxU2R1+eoiyAwKKTENlCxihB6mBBfdqRUpzYp/2vASoym7uVBrvXUM/9ecVMJxgG5D2JLBhpUi8RVAZsrwMiHso6IfZfIsyK0JoSmtBH/01dLEFXDM0Y+Bl4fdIbxgOmSIQrfKqHORuCNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAujFy8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAujFy8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3367C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774032293;
	bh=hNavk3pbr377YySRV2Hztp5lxT/PzhpOqbYcmYcP35k=;
	h=To:Subject:From:Date:From;
	b=oAujFy8XiE2VmzCqnctWHd/eMIy+yxKnhaCOyxAym7NKofieshHARQGZuLuRN+/7Z
	 aboIA6iTOgBE/96k7kVWNvYeLsfRyCbx0rIBCqHd2f39yW3tTrBhuLi1AA+JmlWT8K
	 j0hfuH5atkuSSXGWoxtS2MuyFs8LqQxCEWVeJAy07uMy71PWDbO7fyWFuSOWpxU6Cy
	 2Mknrw9S0xcK+yo//yJIPG9SBcsr1muz1yMxZTc2UrXXbr/lfyBzT4HqbIFiDzuHqj
	 Fflyq7PvdYE7RvklRycisKGMGB1LZ3h3maR9O67Hur1L3NF/kTmZNifDSFI5NJDj6w
	 TELGjRtCuNmMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9634F1099B32
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403229358.11115.8443288633591636466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68da8839a5d3fde1143a7191b25ca5f6b3e7f30de221bfe5a5608615c8705b9d
Date: Fri, 20 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774032293
