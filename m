Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C49272E4E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757742594; cv=none; b=sVlgoCnnuxwqRWXrYrmXDruD8cJ9mUfCROTogzzhEKCticWdfPH//w1FHUc8wYSCVyMkBEqkTJycCVaseEslXoFqaz+U3UZEr155LQC8Oj/b4+UqvQ620Xzn52MiTa+m31OkIjsNKDMSpVfRM0X4tFTmx1qHAUayrKPZABnkodw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757742594; c=relaxed/simple;
	bh=z+gaUHPYK5qsZh242GYrzAcocKJH7kIk1T2IxkMvqmI=;
	h=To:Subject:From:Message-Id:Date; b=eb39TSwFyTjQJOIIQ9IWtkKSkNtogMhQpCPgRRej0CEb07Sc3XOR2+d6EccqFpe6oHkZfDcWtafWZjU6X6S2x68NHg1KWpGrAeNWcPcx6NI6pelJ0pPQUg+5hRk3jvCagPPOh6KPSOjbOhCk58fJpi6j3M8daHfO1WeHBLjaclo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juGC/JhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juGC/JhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D50C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757742593;
	bh=z+gaUHPYK5qsZh242GYrzAcocKJH7kIk1T2IxkMvqmI=;
	h=To:Subject:From:Date:From;
	b=juGC/JhMlu/S+Z/rpz2NAm/FXGVE4V3wQDckTWWE0EP2WrWsGeFzwy8+lqEmX5vZ0
	 0umakOmc4l//oOUGthM6/E7NZ1cguXJa/Il27or7znmm1OMTl+Dt6WFUHiVTJ2UjVL
	 hr7wjKsrxFLf8+h0EGvzyc6AyJwSUf7lQN7tkX4qbt0nKpKjueqRues64hf6gr1Hb9
	 3AO2PcAIQhbiM2OzbJ5aGWujeMJDSuEwjBLlWvm5ce7mxn6oV1tlruXlCmSmOOU5Mu
	 3MQG6LnBqaVfKZng3iKwle+q2qNgEQa2xo7args2rXIFZi1DDLSjw/6MTcEku/yS19
	 VbWj4PHMc3nWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D9CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774259357.28145.17357098592545866167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60961c61a1dac0123ca388c3487743d857619ec4157cc48677c26167e0188b4
Date: Sat, 13 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757742593
