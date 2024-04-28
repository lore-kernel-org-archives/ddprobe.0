Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443AA4087F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714327343; cv=none; b=Y6XaGpTjoxX83XUtBujDCUNHs+seddcKQVVIcvjC/6QcRJxiUznKHw80heMxqVY9JhXebxfEdsEiYivnUnCMm8eNtrA9pTHGPqDku9lIvBdw7vvg+1A1qsnnuI8F8vPfFPt7NfuhnfgaYkUcCSP8vcMb2S8wMsRrN+DuyPj9Ekg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714327343; c=relaxed/simple;
	bh=BR+GaDS696D2XknFl7bgKtFyOx1t7HNxuARAt+NeUt4=;
	h=To:Subject:From:Message-Id:Date; b=b0MKhceC066g/LinO80t+Nxzn6KAZt/UZiIAP6507ZADALumvcMYxMMsEprXThRHVJG2HImOrqGojn3TqU57/+T3wRGn0mu6XBhgyzgu38Wyw27QfT/7qwAQnjTD0uPfpCHY0uS4pymyEQ6NY0+3KlJI8qomxk1YRov3PQOXtao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr9JN16/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr9JN16/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4963C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714327342;
	bh=BR+GaDS696D2XknFl7bgKtFyOx1t7HNxuARAt+NeUt4=;
	h=To:Subject:From:Date:From;
	b=mr9JN16/DCpJj4HnerzFsPzx8/5Cw2cIVn5fGl1eadePSUqoxQJqVaW6xL64Wj9uh
	 yQw1RgmtDO4VueQ/365g2JAHB7d3AnwnwypWuXivTIhDWHkL5U4xzDcc9fjQOgjHpx
	 Pnh0GeK8EnTFjcMm8OTZRFllHeKgMw5vEPtRFqEdc5/zr9gHC+genhg8sJJOhREdXU
	 lfEe+aB8gVCuKgYCqp4w2asCUlPWCTKZ8Aj2gXtAWlTSNdHGLE1zPayH9oOG55AK37
	 5upCUlG3AbovdFvhmT9PUNFFa3a6ORuO4CugXaFLrYnuxoAU3HdD7UKUjSiXAjYbWs
	 +fqSg1VgeFOcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A3CC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432734275.18729.7841659076534406602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb3e83e705ec1b53cf490764027ef3e22c2d3aafe5b2598d71874f862362696
Date: Sun, 28 Apr 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714327342
