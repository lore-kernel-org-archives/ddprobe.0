Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5813BB57
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789359634; cv=none; b=OHHxEnLVmFOO2s+mLLEmXXGzlTToFrHYKwY3Dwp/qZaBalPJVUh1z4hSYiss1C4VkfIwCb5/o8whAAQwd/NgQYEkC049Tl9f3UCoWY06jeWYkUF2CbxMTUBW+jD0O9iMqhlsz9BLRtkZnSRdtR3Fnn7AO2TMGMGxNg0yabQigGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789359634; c=relaxed/simple;
	bh=r9p5HKEM2tyK2Q62wnUyg3kp5+m0g4geIoqnpTG9kME=;
	h=To:Subject:From:Message-Id:Date; b=kpaaUZWiydLMGY80didtaGcjmY9HKCROtOOdJv998S262YbLV0Nrm+cgkkQJZoyqEZV1QvzNyd0mGVH1lNw/vOD0y/5rfK2hl62ThL0Jyxk4xqZHKkJC7U66PA8wFTISYgJFLbyVinYEas1dcmnJFNMnpMhGYymdez0nnKHN4Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fkfg4U9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fkfg4U9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDCCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789359633;
	bh=r9p5HKEM2tyK2Q62wnUyg3kp5+m0g4geIoqnpTG9kME=;
	h=To:Subject:From:Date:From;
	b=Fkfg4U9+ElxIYHKDrRuB4K/tZjaihPLKBDK+lj3/0KZg4G6SNF9fFXYrrdxgiGQmk
	 Wax254M0quNIhuT7r7wUOMQmhnIfQD6YsXdgn4+jkbz1FtcTJhjqLlsmfA+E6HCqlt
	 yv3+7mAciTaOiQdXPMKgIfABcuWzk3m19PQ59xEwcOHVf3gVWA9L0w3Q7FKu4GQAqq
	 r4B6jh+Emjm/b6yY3mcnAKjpZPWD0V02i7wMBAO7nHDfaoPofZ9nF8WoXbOGxtMEcr
	 j5jsMGgk6kmYrgeXrUjcdOF6+TrKIqCpKUSBuW/4KEeAb+kEDv9FfjA5kNtPAb6vrU
	 tZtOAwY843tcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F36C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935963370.32708.15529436901907976947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9dd18c63fedd4a29a772c7cdd889974f555176ffe2f00e43af295a220e210e
Date: Mon, 14 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789359633
