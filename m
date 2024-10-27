Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2388B17B433
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730061954; cv=none; b=u4nlKgYMSCfesHH1yZvEVIiZbhdm7BD5IKMglH00421cYM7DIbJQCO77NNgFKxnD7GZb8C9qOqYmNr2YWewE/xEbV+of7Ncb0fYSOQxz+2UjdX0ot+aRYIrmjQ29Y3okSRa4p+xD24FAV56QS1sUN0w10LHE7hAjWLGOlzdCzWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730061954; c=relaxed/simple;
	bh=0gIQNcZs2lXiCEL7wKGBjGVeacT9VWyuiHDbmWTIPD4=;
	h=To:Subject:From:Message-Id:Date; b=EDv7GDHkvf4l36RxK3C0jRG5oNzPNXdblwWYNlsbupk3LXRR1he7wVF4rBzJIcfQ9hRCsWn1hpyxNUtcZciRTlOx9LGpDt7axZtGbAyxVVwOJ9EYQR07w3zh0CmcAbqFL2BHzGXCwaZaRABiXc4wEIhka5APU5sQjzha8p045fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcUWnIPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcUWnIPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE329C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730061953;
	bh=0gIQNcZs2lXiCEL7wKGBjGVeacT9VWyuiHDbmWTIPD4=;
	h=To:Subject:From:Date:From;
	b=PcUWnIPk58O5QF/9oDWujfYas1gTsV8TTwlaZlcOSr4PNHQVkzjCtc388l4meBNdO
	 6i625AVGcFZMBIr1z969tDGL/an0jBMmIhvhURmBn7sN78nXQcICTL0HN/988bdRbD
	 9glssUBk6Per0G9z8ZBduFfHEMVQgSHlSspcZhXKsEMKyjsKsGhKmL7JYHpTGYBP17
	 lf1WwQ8eYfMA9a5MD+j1Yc93ZsCXiP13wJDaSqEBNSvT8ahNTM7CaK5UgmqLgYc/Hi
	 WgIW3FE5LAFRvsQBySTgn2lAKKvBOaA/R1y1uTXG7roNINMri77pbWhv/8RMyEkDCa
	 OAIU8BCxM3DCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB78D13586
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173006195362.23564.18380580463307160951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962923ee6e3f81c1231e59d2c42d0660c95146fe2de2564f2ddd37cfdf1ca97c
Date: Sun, 27 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730061953
