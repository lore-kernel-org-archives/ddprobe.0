Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7AC188CC9
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766955834; cv=none; b=LZmv1FentR95zzIh3cB8tIuo5sV1wBPnCXkRaMQk94y3IBeTrerQF21jlqY497ZAVOdDLcFaWlfCx5V4GjdshF88QxvYw/G9Wg95FE7BgbvNl/lLODo+iB5qNcrHv8DmCJzAbpVeuK5rzNF8vOV4zSF38mLyLvGME8E3yCrULMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766955834; c=relaxed/simple;
	bh=/UXPMui5a090LrVnoIXzAVndW23FFoim58om9uFnvv8=;
	h=To:Subject:From:Message-Id:Date; b=jwJKLhkHT1YUbCY/vRr9LgZDW7QZ+I4wnCl4dFwabG121DJQz12jygwoyM/MhJs4Lgdxn/6HorfH5HFWw169h0oS0XL+4dYST/GyzsMLZSzgyOp9fVHrTsQ53qW0qxqTNeS1yCJbCU6m5/oIotA/yLgCJf3eAYUWVRFzC4htHZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p75G75z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p75G75z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F11C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766955833;
	bh=/UXPMui5a090LrVnoIXzAVndW23FFoim58om9uFnvv8=;
	h=To:Subject:From:Date:From;
	b=p75G75z4Rwst9N8IuwCJFeVS5ejsjxrzNoneEcN2BvsGiwcEdrmaNQUSyya+5ZdP1
	 HW9RCEJ50imcmNo4S1gUGXXAm3NCcoa0NpuVIXxIiCpzZYldSH7+rV8Pebr+u6M1wu
	 Ceb+itu1mQt7l/MwwaN4fECzJXD24ILmLNLHxKV2A7PE+4lnwiBhI7AlzuDy/seaJi
	 DphA9v583fzIH2Q46m8/b7wzkgBGK/EFS5+aaixMeL7iGq33JYA4aQoGhdRnnY3mWs
	 SSR7qK7xexhbCzg5mYWkj10M/Sia8HQu9rCm7lB91loQzx2i0KlFIuVMBV9DgSG8LN
	 jLm2cMGSaas/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BD1E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695583381.10133.3084557091282454361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ff17ec5da8c7d56a3cdf156f297aab33237290b143284e2c185f974a3294cb
Date: Sun, 28 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766955833
