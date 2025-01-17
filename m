Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185B8C11
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737091554; cv=none; b=pGhzmlH2w9dzNR3PxZXVwvSJ39gReCDoCAdl2QqbyeIvDJM9yH69vd+SyaXLD5+yRj994Vx5EDbT0OykvEw5QX9uaD9y5+tGhtPIe54VB/jlp4N0vZuTcz34pdxmuVXTSSWu/TlBzlHQADtFJcv3lROtEiNFnt8tEMCmVJIgAU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737091554; c=relaxed/simple;
	bh=FBMBW08hd61KSDZPOi4MBpFBTneNBaOfZIdkytXzsxA=;
	h=To:Subject:From:Message-Id:Date; b=P73r0OXKs8+l+lPXsOoJpReEtQJ6rqovJcOlrYRigymxXjS8bx2d8gMsMRezszu64JmoUYCEp167UQjfD+WYuD27ePc6sjirXpI6288Zhq0usujLHfwl7U+P8zEAB6b2pgZB3Ttq5Vrmttdh+IQEP19nfLxtE1X/Y59weZNlq8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNJAe0ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNJAe0ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86ACC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737091553;
	bh=FBMBW08hd61KSDZPOi4MBpFBTneNBaOfZIdkytXzsxA=;
	h=To:Subject:From:Date:From;
	b=vNJAe0uruRvUeBkqI8fU6P3pBGOzLxTDfO6M/Zbxbq4Sx2EisipnfMY1JUFIUQVUk
	 q+jpjuRmfQh/4zLklROWtNHplMaLzW7nM0aA1WfTVGPS7GfcH9gyrVVbeSwZgSMhPi
	 tRIgLfE7WX8dt4CeEAzLlidPtW9lzmW4REAoC1CG81BxqaLoh98rDDijhPwtukd9/O
	 YMYPyK6og2OKEWIgh/xf8F6b4rm7HoIHLYdRAHn3Zp1Zi4VsUeqWmrI7efacWGGw5s
	 x68/eT2HMZ5F8UdiH7uBxBsS/Yciv4thz3HbbeOBz+DfId14P2Swo5fZRCfAXWe5cW
	 ubn801Vf7KcJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A06C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173709155359.7456.8946566778504265622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5b4549e1b6c53b892594a51b75ac1121a8ca3fcddd67cd3ebf926962abd7d5
Date: Fri, 17 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737091553
