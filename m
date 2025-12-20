Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066643A1E7F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766250234; cv=none; b=cW8ojJdRZ8Ub0ZFYH5Sb7BVmMHtn/S04gmXa6uYBloKYM9PNLiqe4YJ+NjMPKAP4ufpXuqbkuQty2kGz4IsUamLEK1fIVtGKK92skjQD1mICl53Qrka6H4MPmM/s0n4kXhS2e3zJCc70vMh7HElATL5vo2GABCTxWKTL15NkS9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766250234; c=relaxed/simple;
	bh=5DUyLFbiuzchKgWdNtTs/KL7DQtBgS1psGRITjnCGVM=;
	h=To:Subject:From:Message-Id:Date; b=RN445BiYGzZOUIP2UJ2uMkY/4uTOgS2yZGeptjKaT7Cwqz4gjnDLl5O7jO4Vw3SZOhK6FI8pZnTV3oaBInpGEpFZRsoH1KE52lN3dv+opomPhswtAD6V04FOpe+DI86g7BbkzmDOjNJ67eYCnjPEVPnDHLVlC1Boc+S3eaz9Qeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUWFuCgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUWFuCgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6375C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766250233;
	bh=5DUyLFbiuzchKgWdNtTs/KL7DQtBgS1psGRITjnCGVM=;
	h=To:Subject:From:Date:From;
	b=QUWFuCgZm84g70jyJTlfHaZqJxagpQ47uS7YHk5WGqa5I+0I92RkWVZvCuWr5tU0d
	 ixJkqPyqPPAeByYCjZ/HFDS9En8rJLLjvanWlQQrh6NJThkAowXE2wMZ6XSVRNlXz/
	 EIZVyAReU0PPPUHtV/nGzGtGq9ZVLTk4VOciTTSoPIRoRFCe5434L4x1HquUU8sXY+
	 5qRS+zaVIob7SEtj0hoEbgSCafvAvm2JqIIK3e1qAhCsRMfCPx1uccpoBv0HXKQYxm
	 ygLIlIe7Jic830s1d8sNXgQTNHiiweB3tnpDjXZgGSaPMamrlseRd38dbdm7LGIaSA
	 epCutF9VSSx3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93071E668B3
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625023359.21444.12020801256379081921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b4a3e67165094f229d47d05b2a12855afa93039f17087fc012219cf99c4665
Date: Sat, 20 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766250233
