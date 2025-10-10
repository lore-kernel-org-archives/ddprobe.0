Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355C5DDC5
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760059794; cv=none; b=LEO5ScJ4QFjU2ym3lyqHVc30RiDCuQPqTfrE9OS8VN/M8aYjxwsDskUzD+OBAX0G9F+h0z/qlj0TgzcwzXE9O2u+dmBz7aMTlFi6IYvz+zke52o2LLOkVDflQFD2CLTdfe2iJNdAN+afxahV5QwPFaC54R5FJK2ol2bXJLB0DNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760059794; c=relaxed/simple;
	bh=jBv/Aibe9Z4eznJYC3rtGx0fVcdb0EHXNpIuyu58fho=;
	h=To:Subject:From:Message-Id:Date; b=EDEstiLuSPJGtdnMint3/uya3zEDFP8hmRu1n0aYFb0C4fxcpEAuhCNpUPEXzDeFHEZ1N/EFx1+EDOkBmeUgn6NgPEUeI2Q24z2bfooxRPYttzuIsp5e51OEysX6GVQmK44PmCn3oC9Hzs4CRM2PyM+2PxXAGjDcFLIrH49udfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKdAevcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKdAevcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1997C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760059793;
	bh=jBv/Aibe9Z4eznJYC3rtGx0fVcdb0EHXNpIuyu58fho=;
	h=To:Subject:From:Date:From;
	b=BKdAevcD+iwd/1C06GyDQCT+/tDHoVWQE+/vexXALCV7n/aXUzPzLSDn1IwQJprLP
	 eyZl8knUpzIR/Hv9IAl+k6/uXyRy6xc9W4uH+IyKVAHYhvTfmsFHgMsuPsGp64z6CH
	 tPCmbQxsuo8myFC1eLM67qCeCu9CT+/Bs0D6MwVOJTVsxFF5jxju/RYdhd0jn6/eIO
	 oGv8Tgk7y1lUgeFyQUuVA1YTUewIC3GgcBhbAWuuFStOLEZjoZz0iJStTji8ML8AJb
	 duXedWHhQeMQR1liiLVl5EXr84r7khLpWzDh697V1EtMQ0Ik2OnZwm8P0oaQLO8WVL
	 +3ELpL25jCi5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90924CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005979358.15428.10665692754177393323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f6163a3107a6abca82ac967a0fdef298ba1ca1b3f63a9236ffd5f01cca9287
Date: Fri, 10 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760059793
