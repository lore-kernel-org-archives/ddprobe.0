Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A5D76025
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782159394; cv=none; b=OZHFp9wn2u/T6wNdSVGDA3hPcwarakm/AeN2mbzsW5M0zYNwViQCCFT1t9zwY389vgwgv334ddWxHX5lnWTxtx0IM8XKB6TqVKTTgBup9EEfAsg+541MbDvqfuGFBZBaq6tuQBMALmrDp908k4Pl02+DjRjjyBvqZExtnP0SfFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782159394; c=relaxed/simple;
	bh=xG0lDcnsFVuHWIf4NwBf9/yTHFafYCi4HnAOj3pVjLE=;
	h=To:Subject:From:Message-Id:Date; b=aCxau5TeJdN/6NuKCZ67FHg7inTaVSyyggICLY86Opg83ZumJ4a7fzyJ6/oVEZTkZT/r3vkZ5j+4YZQ4En/wVkPx2IVXsHWBKKCe8JFo5R9y5BSVRRcVxBWp1H6OtiJp+jZ5NVL+SnK0Miipe7sBFwZq8WIPwtp/J5QPHdVZtXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikHDOGd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikHDOGd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACE4C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782159393;
	bh=xG0lDcnsFVuHWIf4NwBf9/yTHFafYCi4HnAOj3pVjLE=;
	h=To:Subject:From:Date:From;
	b=ikHDOGd/19N5LYjCEADyyaixkMGDqK9kWumK2FPHgRrrBBvSWD5LgrBQM7F29BTjU
	 U1c/6Gue1iDoFu1q2uNWZoiyiTuQgEET6EZ8+Kdama/k4K/2NCInl4bWWon+0f5q8V
	 RmjznaRf9Go2eKRpwCKtSmCGfiyu3BoUmxc9wwS7Qh1HHAmnh4NYyZSVkoCQoRYIS7
	 gl++HqBNocuDQQXKLvmmoD30xnESTHTNo4WyChjWehDdHBPSFmM4KWvtSwwVOKjZ8M
	 UjP1JG1Xeh7Nv21odnTeKV6nQdOLVAcGJ2jGncnCIImu8VUEnP85ItWMjrfwDQj6Qh
	 sE8H3Uyoc9rIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AD9CDB475
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215939368.24859.2829721570610192661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d864113f135acc8c07a252b534825a2d9625fe3d6b6f11729f3b127789c1a2c6
Date: Mon, 22 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782159393
