Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25280219E8C
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764473574; cv=none; b=VINwB99QkXeCrELW1/HikpTT9pY/valCriOn5I8/TdExBej8sefE2C9hum3wEW4SeFqeheODV4030euPGjDEAZJPQAZVWuBhdx5a0ymzs0TU9rfVKzV1s+8aYs1OV81ucVY4SNkCR3S1N6f9EDD6kGQBdYtMMjsf4tdXV7Tm6+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764473574; c=relaxed/simple;
	bh=ufmTYXPaSTQj6iVveqV3Yj66qs/KKt9AzvHfYA3WlCQ=;
	h=To:Subject:From:Message-Id:Date; b=ERjkce3pX5pMguoJqso9TfnBcegZBjBgiF8rvFcNTzsc8Rabd4HgGrHrrssf7c4B1NyJ6Ga7XpWTPRLJFmEbBZ8dLHU+tX+24UhHa/4h1JotFt35ty3ufizXUX/UKdvEi9rHVrNyxMk81D6z/SYb5NjOujK3KFJYzuRqt/T/zk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGONn0Kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGONn0Kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB6C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764473573;
	bh=ufmTYXPaSTQj6iVveqV3Yj66qs/KKt9AzvHfYA3WlCQ=;
	h=To:Subject:From:Date:From;
	b=lGONn0KcBnpKUUL9zA6QNxp9t/tGp2zGPKdrheHTYrcK0IiVbMwXSPgi5q7PgtS7b
	 Cj7Dnd3ZD53GNvuiJ6tYcezfZkalwg27ZRZ6l4xsKB3Y3cBAdcLo4iAJaoCeZLpABV
	 FSm2LyXbaLHM2Gqqp3EtwBVThJDAFAg8yc9AX4GUcjmTPqreKG5m3OUPWkFiZkWNhZ
	 bUmmD0GH7fgRV+NGTNOfGMDsved31IOO6rcvG3QS3wEjg6NLScxRq9LFyzeK00CaP3
	 oMhBizg2cSz99bpdLaMJAsw1Cav7lGv9dqljftgJ61+DktS7c7B5DluH9TCuep4i0q
	 JH9Bti3YpxRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90719D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447357358.6404.832184991973843454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956386700c20f3eabdfe4dcce2d2d7cd0901aaaffe1e42f60e11cc3c1f6ceaae
Date: Sun, 30 Nov 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764473573
