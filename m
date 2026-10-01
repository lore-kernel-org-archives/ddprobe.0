Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EC22DC357
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790820634; cv=none; b=m0+SwT5y7LhA2o6COWiHzCMuvaJNXAJv7nrGA3J4Vz0SPe52c/anJjDhaFDUqznCAFDjnj9ZZLA4XNK7jecqq6QjB1K8cF3jXl57MVqt3LeLqPvAczxAAYmH5b/H2blSOaSjvqzFUg/1nzZrxPIXtnWzgcWLGA6xSK4vVEe6qQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790820634; c=relaxed/simple;
	bh=gK4kL+SIBEo4xsjjlioPbgCUTZYyomKuMILM1/7Ub3A=;
	h=To:Subject:From:Message-Id:Date; b=M+AByROf4Wr2k9QiCIOND/zPNx/AQtpSSQrJTZ5pVkAE00CD5LolZdBUZMjsmeiiGUhQzccFrrSJqOcg8HcU30OPogBTIr0bzQ/7J1nQe1KotA2Yq0sGLBJX8ne/jNNsH3950oUK6z080QO4kf1C0oBwlWg1aJwt89HhIW88O+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kh0E+UyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kh0E+UyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F79C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790820633;
	bh=gK4kL+SIBEo4xsjjlioPbgCUTZYyomKuMILM1/7Ub3A=;
	h=To:Subject:From:Date:From;
	b=Kh0E+UyZ7SoRz6wXc2epJErd3IbdkD50F7hMdVD5YnV8Uuq37YMIn7eSedeNYZbQO
	 UMTzZCOqt2gWhIdBf39mYPOGKQQNuPdVuMYLhj1Un7oYpdE9I8kfWExNLOvtmAz66z
	 XA5ayURgkYmRZCAqi6aA2v1rkhoIAmvf8QsSi2emUNfIdf5a7dOYywz0TtddthzLIe
	 yoThi4noBeAICXtT2dUgBuV1perFDxqV4ReImKnyKXbw6XqrKihzpeUlCLTCqA76k+
	 +zYMSsb1qdFNBp489neYc9du+BaPikjgf60ZTNG8auEF7atW45OM8YdbckQRurEDCm
	 LHHjYMtxYvZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98CBCA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082063368.3348.4193983074563202276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48af49675a7083325f25ed9d456c61b17f4911ba1ecd7f161d75e4ee1ac6285a
Date: Thu, 01 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790820633
