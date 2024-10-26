Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6531531F8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729982754; cv=none; b=WxGs4TvSdx8EWnDE2ZE5Z6OETNxpNK2Pc/PR06d6H2mKaTrFk0rpZjXYc3xT7oTujL9aEdmPVTCrjR1Qc3DIOsi/WZ4DWoymRxhTCqhDT2FNnAer1FMJ0TPNeFx+V+xfC5E+7g6vQwHJFd4QldZDXPGFnD4WPcF0UM29QXYuzBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729982754; c=relaxed/simple;
	bh=uo0qnXUhaiDkNbk6Kg7JRBhgQbejQV677LO+YxtpO4g=;
	h=To:Subject:From:Message-Id:Date; b=DX6mhk0Em+zEh/ZNnW9jVaJ1kzL2qGBPSvaruP07aKK/CSVpfVJwTYxQKmIDDK2s9aawVv9W18Rgc41E4XCeyFVInHZgZh8vztgLFHQXpb1X/Rqo0k1woJbbwQxp3Lc/l6o6Xrc+pLitaB2LYS5US+6Blnk5t3ZX3BEdZ4ZCKGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvWyWANu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvWyWANu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B429AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729982753;
	bh=uo0qnXUhaiDkNbk6Kg7JRBhgQbejQV677LO+YxtpO4g=;
	h=To:Subject:From:Date:From;
	b=jvWyWANuWHwkdaKMs3wSoGh8aiqRYoRAyJ+xVjzHlciV1bgdjOimEF/uVLvskSYfD
	 t+i4rr5MnpzIFyPx0K/ga1dhoh1BfTJP/MOKJWP8gK+bo56TO9seH5GY/VDjlVPy81
	 x7DnuDo/wvYAVNCyFfZSG+IpNsPfklwM2qBwBYe740wbjP+nQ1IIrxf/0+zsgj9R3X
	 7/zAvNoUzneQhZo7yi3fq4+Q9QTy1hnLBmxU9qLLqaCvDAHlLIXTtEsUOV6TpVsA7H
	 9DreXKrkSnKbMVrw8kJsWLPzNxzZJHxfKF5kLZpwh4Zw3Tdu7KAylr/dAYs/E7J5tv
	 xaGpjg83sVT/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94187D0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998275359.2484.5739037019423215916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247133bea4cc0dbbdb37a6253b29c9b5eef23ed262243c8419bea59e98e52e22
Date: Sat, 26 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729982753
