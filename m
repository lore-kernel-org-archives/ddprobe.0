Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FC71632DD
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784432314; cv=none; b=Ge8VeiPSS1RTiSYMoqH3ImDEX6piCCZ/AHvWGDW9Wo07l7Mq81OKmLw7Vyw9SnLG78G1AoBOy8/9wgohPwo+80bPIi6YDSOTnERygnimKqyOBc9h5V1t1+7UGMz9kktrNVg4CamaK/CYvz8ZQ5SL0yLqOl5u+yFwoK24kGk4kZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784432314; c=relaxed/simple;
	bh=hawWePxaa7eyeWRqyg9/UFYwI9jO+sumcW9JQmmM/60=;
	h=To:Subject:From:Message-Id:Date; b=tZa6MNGfdMKoXKNtXT0Gszp6NQ15Lgs9+AUoDvBJX4yxmIvrmbcrLkPw/lzcp2q+q7p3Rs3lYuwkOvsGpfATT/ujMGQPfLbGL4uPwQzh2sGcm2OZO6BTN3553siXSUVgS4gtC0IsMK0/eBM1xZ8D5xLP7DlcCaD5AA+o1nEmIEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPVUUB7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPVUUB7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC82BC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784432313;
	bh=hawWePxaa7eyeWRqyg9/UFYwI9jO+sumcW9JQmmM/60=;
	h=To:Subject:From:Date:From;
	b=IPVUUB7XG1Rle1qrAz8k3tc0i+ucNYqvLyV0Z/cxtAvH1FjqX314XuVfp6C1W0ZPk
	 UM9gCMc2uyC82teWk6NHl0natBO8ntY7xPtB3g9yqttR4+6askYdg8Y9+0BFmc5S9i
	 LTlTqq7QxziT/vAEzc0XO2JelEoNDI6YQVClE5BHaM2QTq3swMr7F7aqVk2HsqwjcD
	 +716pIr+8WPRH7imZHL8XG8FDfTMGlw57tA1usHlm9rFOEcV+rnpcaAfS6YhRV5TuC
	 n2p4TUD4gVRxxphSIbVCZpcio1TlvwtmnD3YyQfL/fPbPAD/DlK401qylWdYg/6hMd
	 XDVkS4Piqjwrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAADDC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443231369.32268.9904333509257892654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e54b383200f22939164c8acddd2526b98ee2058f4f788d7fe9def82aa47185
Date: Sun, 19 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784432313
