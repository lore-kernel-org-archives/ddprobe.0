Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D916F30B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722093954; cv=none; b=FpTBPM36gX1hguVkyE7NE0vmPiofbGk5m6YiP+dKhmz884wiNhSyNvZLiE3wWbRWsA3dl5P8QSR++rMljP5gBiMyS5CTpwJ0dYNMtOu2KzyyRRvX0cuZ1Iej+ndY6/xyFaTuW2Y+4IA9XpcioseWFx8qOQDjyOcR8z35feRbyEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722093954; c=relaxed/simple;
	bh=1DXBArOf/hfeExtLkkArzEVwhRufbaj7sjTeoJLfJqg=;
	h=To:Subject:From:Message-Id:Date; b=bw8AO8c9zlX1+EAr5utbgxMTuh++CmaAAYNzOxBkVFf2oRAXL5MIE9pEhfP3x/aJ3WJ1DPe7CbMyLE7Sfb0hdcUZhbDru2iHGePEnPsn3ih2wG5kisUQ8HhJ466hBUsViKSa/2mO5XjXpQmb8QBKBs+LhgHBSRQthISL3ErVyZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqYxRPIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqYxRPIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA685C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722093953;
	bh=1DXBArOf/hfeExtLkkArzEVwhRufbaj7sjTeoJLfJqg=;
	h=To:Subject:From:Date:From;
	b=jqYxRPIAhHUcuAA2MRwTWIFSEjqY6KkU+zAkDJKh95dkHiXOydD/3vYSwoyE9IVQF
	 0p3cWY4PNnoA0KaLxnNLsbs/Fu3ef/IymPUAyl6AFZ+5zOxccdB6MotMfRBym8ZL5k
	 HiXqqfcdwB+7wFa79KlTKuKZ3pU0RQXHTWEHHs/Vbp2Givglro40kO5UsrJAnBeAbs
	 QhFbHs8oIoV9ogKzYUVmOQR/wMSvCZMH4ACBa8sScwpRsJpdlMv98jy8LlLTDJF00H
	 cSg9sn0PAhymEylO3vU6C7YYTMYV/IDXpDd2Go28lHuwlIAo43trpCXJWf9YJRl34B
	 s0EQ2lrAf3Z/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3021C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209395362.26170.17167293524801939926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78fc6f1335b2f516381fee814cd9930e80484687d250d689d39d5afa3eb48965
Date: Sat, 27 Jul 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722093953
