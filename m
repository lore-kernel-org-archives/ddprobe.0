Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF48277C9F
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755775194; cv=none; b=fmO2/hlGniI11FCxub+cn9ANx+BuP37HaSvt4HicNgUmnloybY7KCg+GPA4OPUBOWHV3kaPVcjbdM/zlCw51JNxrL5GgX8i5FXeZIw/Mi9/3m/kylIdOxviUyJ0XCk7DacVOEQ4NlqtmQG8vJ/9963FWEUOIQfWfvQ1B2zXi/rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755775194; c=relaxed/simple;
	bh=kKBcey/VWK5e+I31pzJIVWnMM+IS1UDEbE4UBSAWh4s=;
	h=To:Subject:From:Message-Id:Date; b=Oqxxpf5eE8eJc5oVwZSRAIcaeJTTcfc9QW7VnaYmFr4FROj1rDorsKwRysax188CVUJ7thLFzjEgJNR2MJQc0JIL01E1g3OUTHhpqmGj4sxt916KRGPXeH/kNLm4Y+sLFxFnn0g4GCCuzmuqvXs6PlVqaetwDX2MjRUUKrPgHjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqaWrP4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqaWrP4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4986C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755775193;
	bh=kKBcey/VWK5e+I31pzJIVWnMM+IS1UDEbE4UBSAWh4s=;
	h=To:Subject:From:Date:From;
	b=MqaWrP4w2CBkbnEGWmDFMTA0rzcucmgsOIv5og1yH0jajhaN1G7bbZTMG7bms7nZg
	 a9tLHtEZen6XyB78EmaIE+Pnr5tH52RnrnI7lf56oye47kCzsQXrgMN2Qo6revUukD
	 JaHAHnXGLMauL9kjS+pkcklns9c6v+YBg/bVgctbzWUqbsTmpKIC7SAooRphhqngnk
	 RQDyxTNcpSJ+v8DyaGySyWlZG0Jch9bOn7sAOO71peeyJ+SpHxYdv3sRDnyAuFYKr0
	 m3d/If5gywNPQYNqve5wI/dx5pgYIt6tmU5lhLVurJ2u8gZNi4I8Fjyw9FDpw9Wm5X
	 MItScKJaegfUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A361DCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577519365.31744.1664659198257901237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8fd5b459232aae03c00b90d3e05af28889ca3a337be8d06569f9c4e5fcdddfc
Date: Thu, 21 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755775193
