Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC0EB644
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727575554; cv=none; b=PWddsRgcuvXyzPRH85NU2F1Jo5lHwQXrXV36NvSNlgZ7ShoJ9vPIpbFGaYt0uMFEVfBM+G5KksoZJqN3xuP8TaMY/IIBBTFvSf8IQgH1WcvtsUdaE+kmXddMQTmSc9vgGvQn/Wn6knTUuK4bRu/05uY7m+mUBzaZfdRC3K+weKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727575554; c=relaxed/simple;
	bh=XLY5boKn/CLf4U51RG488QneJMV7yHXplnlVzoFN6hA=;
	h=To:Subject:From:Message-Id:Date; b=qEAMd6d3unC33z8wXEFB0/7z5Xx1ju6JxMRojJxVlvLmHrIJcs9elaIN6wLmklEws4pBgTLOh8bQ8OA+vV0v+YX6Vy3WmEFj2X6TNZiPqX9amnZRKsQpKXuELu+z8IXlBxdQQCIUZNGi0OlSIGVgbpfQSj1hNOXf+XNMA5Peh0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTwlRhXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTwlRhXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A444EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727575553;
	bh=XLY5boKn/CLf4U51RG488QneJMV7yHXplnlVzoFN6hA=;
	h=To:Subject:From:Date:From;
	b=XTwlRhXZ7n1uGEjPn9norNuqCxamMhinvgU8iS81Zy9VM6VlPCqbhtt47pWTsIrQa
	 T0f+Q5PTilp2LvSyvAKAma8iVwNpt/Jm7jxwVmVcB7aMxhubjJ+aEEDzzKbR5gD2ns
	 U2XOzFIBDPKGijnYJDwP56yjHYeCaZF7ecT5ubL6Tf6n7m37x2+gEbnnCRd+n/p+qT
	 ZlLw4DxT33sqgoSeqKOfDFMc4NaSN4199+RupysXWpE0iEBSWc8a3ptHGHGhV16GJ7
	 hRbphfiL2tMGgmPjRbOAVHn2vlEcB4oJ4WpuqDRCScD+017MK6JHMWw/g+xDmAI+J8
	 wYGyQEdtIOfqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C18CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757555358.27126.7469661506337727229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ab632aff9e27a324aa6cc47dd7563f20b45fd2b468fe6d6b1026169a7f8898
Date: Sun, 29 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727575553
