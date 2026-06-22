Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BB23438BA
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782158794; cv=none; b=XrjLhj7+k/wPbUl3/hZhkknIvd7G+HOjOv2rHK3vE+Lsy/Bg6jVsDDyyfgdtyHfrZA4UgRIM3Wrhr4ajLQn8YDwmhX0E313K9Ob7qLi3wmAJEheOFkaewGnFBl836VrxgHU+/LTkdXbUAVOyvrAEWeBf+9YRhgz5PDXiHYKQDV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782158794; c=relaxed/simple;
	bh=9PKED1SsvTETGSyG66bLo1t6391B90RxRaLixwzoeNw=;
	h=To:Subject:From:Message-Id:Date; b=f8dt5lyFp0auBK7MQqT3aCE3Ml2o9q35ZBLtZK/Z144tK4ijeA5SSuGHmSpcup/wShgIcZ2WauKDm4o6R2CwmCeNlx3r4OcSZDgyyGjTsEXt9zGJj38PAc1A5LJ7v8wie+tV9rn6Q1zrrQnfPki3wwz2lkqZYIqmbHD2/Byvj8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRLyJ7LZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRLyJ7LZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF46EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782158793;
	bh=9PKED1SsvTETGSyG66bLo1t6391B90RxRaLixwzoeNw=;
	h=To:Subject:From:Date:From;
	b=PRLyJ7LZ8iFd0pDZCmCnL9dbeTuqLaqyai/x13Hjhi1YdC9rZS5NIswb+6pPQR1VA
	 fwoIFEo2LXtPnEAQwty/ZVb7m/j9QEHjOAafnX5/LsNg0KNpQpo1ukvhWdPuIMjT/q
	 Y4TrZwPaHgZZk0gswRrjZP8q7XjRzbAH8jXaZuokNg8W1f2nbiaS6q1xp9xXt5ZE3/
	 hzstFn3wV/X3NXDd1j+wzqbqcbbEjZL0P1SO8QJp4A9qXmgrqr21ZCE3m5Rq5bw9Vl
	 qR2QVZCRuHRJsGHvH/uqD+/ZXkqaMIQufrzvSpvWOhZoUcv1W3z2S7Wte9guEIdszK
	 /hKbx3/NVE+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF57CCDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215879368.25682.7670881122181150833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec88a86f6f0105076d79be6fdaf34607af2c8b8a4616f5a47292b4076139798
Date: Mon, 22 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782158793
