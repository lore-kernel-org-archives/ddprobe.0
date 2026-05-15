Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0395E3CFF44
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778862634; cv=none; b=NnuqEnr0nusSFlUWCWWMuKiF9frRiLs4XqlVxvNgW0pCVlBC7eLt8XF0shviDSw4AiHKIeaa3a8uK8XQcCZWuZyOUbRYGKwqvNFz8uSAkTOP0DPoeXCG8obS0ulZ5Mzfx5Nl1HJklzNUc2Lhdl5LwdkZQi/Xfe8J3qysL+8lUkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778862634; c=relaxed/simple;
	bh=xI3EsNKaHhOmGy2AwphTK46ra2c/2d2w0U8pnN6emSo=;
	h=To:Subject:From:Message-Id:Date; b=NFR7Xa7O2uW+oJI5qY0+8ZZacoIpU9TVNMZh22/Ojn+IGcqBLYO3u1xUDQQMqq0pR7t0JbDiHtK5V6okOYvUINfV3RheUgsvC90eqrWtoN7tPhrKCE/jisR1B2KTEeZYZnud8qHhLFf3xNvkQXGNbGkyWUyIkv1IFMmT4i02O+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTSLnaKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTSLnaKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A44C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778862633;
	bh=xI3EsNKaHhOmGy2AwphTK46ra2c/2d2w0U8pnN6emSo=;
	h=To:Subject:From:Date:From;
	b=tTSLnaKp7KtQJhx6LeOgLj+75LDKyyyQjHRpF7S1KyqdC0kAgESUyYGRiFVSHXZrt
	 9cYlYs8KtRv8j0F2O/V/EqotO0uXnoEzhObIkkppFNS+2z245a+51LNABlL0umVVLT
	 CWBhKI4cjYMxmsi8Yzm7WGl4jnSNMo8/IEvYfyWHMgkAaQ80aDzqMTk7rRT0bwek4f
	 sCJ517Gyb38mkrwKgPWa4jw8S3GhcZTP3hm28+qUr9SrJFXWGtysghTffdGolAUOjQ
	 86XOhGAb1QoLlvXFYORO7m33HNK93crOpilYIKJAkOKk38Xa6HoN1R5zzD0Wbt/Hb9
	 AMA37cydlNR0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C7FCD4F47
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886263372.29124.14496535822294276855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de606a07fd6f32e8d39310a27555dd342666f34828207a67ab45fa2880d8bc0d
Date: Fri, 15 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778862633
