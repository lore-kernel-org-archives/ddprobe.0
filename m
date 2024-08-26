Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A4BE56C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724652954; cv=none; b=Z7MFlAgQltAlp/Fx6s/7IihSDbQi7450WtEaIO6/V6IKtchc0WWX/2XHgfAVwgwvmHaPQv9bab0mCUw/hceZ44j/KXLDZOXt19RK11hZFxgYNLvhCZMrk9DC9nwyu21Tmag21nImsjMuMtKdUJ2kAKAVeji+UHtWPT2T/r1IOoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724652954; c=relaxed/simple;
	bh=RVE0roh9TVyXwhGG4YA2t4cBnbUsi4jmqJP0CIsMVd8=;
	h=To:Subject:From:Message-Id:Date; b=ZbbwNIlXxTr2eSJsGI9qlbKxWhUwfFFolYgjBjLnpibYbuzcBephuEwsCOHCbVvD9l0MVQoloN45hLPnAdcqxEFBEIFJthyA3wgD+9J1/iIAKvVGVGftmTJ325A4fDYDTS2V43IOvqe9JpuZfJVDsv3eENVYP3jhMZc/C59s6yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APoE+zv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APoE+zv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D07C32786
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724652953;
	bh=RVE0roh9TVyXwhGG4YA2t4cBnbUsi4jmqJP0CIsMVd8=;
	h=To:Subject:From:Date:From;
	b=APoE+zv8dEhnb0OiRV1/jbf3M5FO3tBla4pPT/75RwDRgBDaHjTCdF/9mmNA2IijH
	 r8ipwCatomRHLd1GaO/rdVywMuPJwt5V5kv46chrRfLrsKGH1SL+Mh6al8EXvjlqiU
	 TdWwvJP8hfJ1sjwkU3llg5eqWU5pmdtDNv0HZ+GYf1p4UD6NPd9rLPIHAm8X+vJ0Do
	 QepbMUycs2uhtMLV0bBPl0jqhSXxeqgAw+GuttbSnPFfSPFfehG5iHY1/makpbpkW/
	 DqoIH/r7n23RttjlCv0xiB/GrMiz8W5rCn49FkzEIRMib578A83Ww4UrvdrKOlDeLf
	 mGZlYSdKGL0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C2C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172465295360.12099.11500974197785964731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ae9164cc574696e8221ac44ea7a3f9b4cb3626022fdef8dce019e1eaaff4a7
Date: Mon, 26 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724652953
