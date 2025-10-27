Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F12242D6E
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761572394; cv=none; b=n5rOSMko7gbE2TGIu+UDS+HdB/QbeTWgbCMazGsiBOhnCkVZd1D7x1erv+5TV8P2OXJcOBKB5IAm6tCzsd9b74FDTPms4qRcZNzobCllqRXk55LKwdFVx9NxFJCCwr4Wn9imA/NEpjGTbvnTZHeYbeOsWmb2JPvY3gDQzGA1mEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761572394; c=relaxed/simple;
	bh=Sl8EjtQq2MTXg3MY0NNuGviOnajVSMqdy34LhHabATI=;
	h=To:Subject:From:Message-Id:Date; b=bta1IwYFbM0hUSjcsUo93gHnbQc19Uvw+xVp25tN3WP/wbw9DaZM/M+KVCczv3WpVEiPZTSpN13KNJTTr3nz6s4fqaGzV2a5m83djkh/ZqDcSucVHFaMP3oM+5SdSdImLB6aaaXP01sysPx0wD6O86puxSedChxsv2rjohbm/S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk5c3T6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk5c3T6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2535C4CEFF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761572393;
	bh=Sl8EjtQq2MTXg3MY0NNuGviOnajVSMqdy34LhHabATI=;
	h=To:Subject:From:Date:From;
	b=Tk5c3T6breOm8D8Kn/EKUW0AVYDcEKSfy7rBzw017fCsLqTTgC6yLi2QzAW+CTElK
	 miL1hMsoqre/YN6+avVC0AUb9ChZuF4PVXj7rGGilkrhIIMxSaVFC9XI5LGkt9VnBL
	 QuV81SSizrkxNlTQpfSpY2+eAX1RNFsyLZ7kMu9rPtucn4Ep3sCkETItH99nGM1E7p
	 X2ekjSpOF7Lse+1KmYmY0gyFMqvHxQgyKFU5+emirjyvFJy1IKBeWMvnX5uSnqMdAK
	 Bhaifoktwx8RxWz2NngTal5OtG3E90IPNeZVk4OE5K/BFlq+1c9UCNRF1QbEYaIG+l
	 WUGTsUG3YP33w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB69CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157239363.30806.4937315267001408512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d914fd43f2d684bc363cfc112c0f0b9cb1f4a137af6220b0b1263eb7b2dc845
Date: Mon, 27 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761572393
