Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1123329CE1
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752393594; cv=none; b=R9b4YWDFn/lp57zxC7OvWzj6ryU0KprfPPPCRdUtJ1ofjudPJjiGag64lu24zNaKFVETzlVQTLZFOXkv9CX4lREGe4/MRl4hO6qn8fXM9xZOwH9VP0z11FPQWpmOz3uZRe1fVlUsuNv8MXfTXg90JZRaRf5A2ebCpe/cHJYURSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752393594; c=relaxed/simple;
	bh=XLnECJs/iaO18O1SawR3m9HU5wFxP/A+me6MJ1RYsAE=;
	h=To:Subject:From:Message-Id:Date; b=UdTE+i2cb1GKvbdI4+Viwygqtfaq7Aa7DqhRQP/j6gmqiFMgjJR+X2I8JxkhJUbAKs2CW0f+7iFLDQLuAZhdAMbxl4SUIjEdwc4agU7Jh+E4/V1mZtob5NHjIBqgC3gKBBJRHRE1aG0T0KOXIBnpOo9God+Lptw9ndagtcBeja8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0PVFwka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0PVFwka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF7EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752393593;
	bh=XLnECJs/iaO18O1SawR3m9HU5wFxP/A+me6MJ1RYsAE=;
	h=To:Subject:From:Date:From;
	b=P0PVFwka/qdS1FVOy1Jp8d/xlcywSxErrBtCGNHQd7i3iwEndv2o/d7grPgbP4yaE
	 YnSJb5vxmhVgdGepnsc+bwOGnPVzFbIQhA6V3AnZcS2nKouU6sln28Kkqf/PmZCzUS
	 vFrRmSGqUbfuGKvD3bdnGLjVJ3VlI4XQVO2vJPwwQ5HH4uQEHYYbl+mg7tuZZSnIjh
	 j9sBWcrpNRwAPLPB5x5W9U0k4MN4Uhhg0KLd9PCcGoy2GprogUzk/4dY3WZyb50pIm
	 TjrB3U1T4RypmJJKsERcLUPfKuDNkjwMYuHW+T5cMKDYVSz0IWXkGj6/b8tE1DQG4Y
	 bGPpYOQc7qC0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE20C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239359357.11361.2443334382650497684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119f611cada4bf88ad3eef5f7941d9d51208a29d3fdd8c484f9ab0769cbef2cc
Date: Sun, 13 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752393593
