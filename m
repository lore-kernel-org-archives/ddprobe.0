Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408507E792
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786551034; cv=none; b=d9Sr6gkYmcoz3vqlxZgBkPI1ZudefTqENdcwZsGY3gVhnXIAnX6qx8NG00GKDv68fv0ApCGVQ2pP0a6GpX+KFqwHVSXnurp+IeLNA9T5aOXwDlQqZHydmVEe0/muC5xYPPon7mwTfLXSx8PuqCFWRRvx7EYPzdqOm2ntwzp4Wr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786551034; c=relaxed/simple;
	bh=SPszZsnnDzPgqm6dhiFzWm0XJEiwUiE2OonMdOF7W3k=;
	h=To:Subject:From:Message-Id:Date; b=Ns/GTiS53MhgH2MM+ceqhvzLwPC3iGjm3A43ZPyo88HppZS/IGD9oypeRTOOATgvD4eKgTpXKR4GIiF9Hd5NYahz81hBRwuihogthoUdRdPKF7tfTcJS/67TCXVlnhCUxt/9tT/2OgVonFxm1+4rE+icSLEDAUMOF59y2MxOh/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btMuvsoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btMuvsoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11A4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786551033;
	bh=SPszZsnnDzPgqm6dhiFzWm0XJEiwUiE2OonMdOF7W3k=;
	h=To:Subject:From:Date:From;
	b=btMuvsoBbWjcJzvxzRa3/uwasFlC7nYEfwzCyFtGnCUAj4tsus4NYY/4qvmdxSlnT
	 nTjdyjQ/BJn6trVAuBMjuJxn+9ouhxUnsnkDQMrH7ZeXN61B2L7S1h2PCjXAB2T87l
	 A/YR9SXDJgrYucsVYnCGzWwLQrancR9RT03AOLRflitYVYiWUVcrPA327KHQt1TtKg
	 uY47AsFa/0g802Y9psE/U7wAGW4l1DDPRHsLMBEQQpZql2akMrBuHbOy0VXIHa/cOT
	 BwC2/OGYQSyl017ndt7y9TSn7Pb8RClLn7swxuj7RwJsOpZGxj+55nmsrIBOBKmXgA
	 m72IkhSY5YCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC866C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655103369.28250.17239865794747966171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146d5fccc4cacb2fb5c4c521da8a2812824df01a18f4afdc0010dc243f1d7a3f
Date: Wed, 12 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786551033
