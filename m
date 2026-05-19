Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3273121A453
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779166834; cv=none; b=ki3+dbe0pu5ph4DClZziZEDxb53CwRNsiCJ9atHT1+GnrfBLBBWhAuoOiWqm8TZeVVmNlS2zQNbWMBHgPAASAOZHB8GigdxiP1mF5XXWHZ+ww2VCiYKYcSeYYrUyZ+EWjMC30H/AiNMWqrmcGkRdjLT5eb0GT42h1FCTeCFXtYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779166834; c=relaxed/simple;
	bh=kbi5JHllnBeVTi/cc8KaBP5mAvg9+FOM3OyLLMw+GPU=;
	h=To:Subject:From:Message-Id:Date; b=udXz5NOpDKwWIPfmIA7KggD4bouh2GWafPf3A2v1KxIZwGHuha/CDC48DzMtPZeMvXKllbKGzjjUIxwNh2SJTz/SfyqDYnDO2T+lzRYWcGC8Ufgf6IvTFJ2fEfJkMKVO2avr+zz0CkBfpDEgrUvdANBqZIw57fvdArjTwF45qlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyThkQHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyThkQHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6B2C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779166833;
	bh=kbi5JHllnBeVTi/cc8KaBP5mAvg9+FOM3OyLLMw+GPU=;
	h=To:Subject:From:Date:From;
	b=TyThkQHN/r8n/xk3VJANd/23uB7/WhX30eug4dRhdb+ZDkNbdHje6mrOlgRpkZv0t
	 EciXZvZGdq46X6wtMBTdDBI6WfS5DehYxpElPjtApgCcHmyMCX2LxE742vXGy3EjdY
	 H9pSJLm5jbFV4572kh9X8SoU2qPvARtWBB221j+DknMx5npADqVJ8sgk/y0aKh+M2D
	 sAX/8MoyJfn9vvHeX/5CHmBp6migLyf5C1hABD2x6wY/rklg2dLLzFTpnJg0GBTNxi
	 TwqLLjWUQzT+d4mSLrMiUPgRBqQy8jpvwGMmDgX2faLRSRZeB2TGFAwW1H0fb2qbXD
	 7DoCZG5IQZ6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7992CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916683374.19005.998329934450899885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e89bfceb6a507dd7c72e1609f492973be21b51af177ed88a6106465202c298e
Date: Tue, 19 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779166833
