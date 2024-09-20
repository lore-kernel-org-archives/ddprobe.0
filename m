Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359221C693
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726875354; cv=none; b=SqzXRTVNK72O3lrZj0bHcsC/Yg0meP7pWSWJ2hT8IuVCcDU1D31gP2VICKaQXDxwpwNv/gYkwvhyRVwUspwkZGAFFiYT7L2WlM11Ts+qJ/1zX5P4qIKTfnbpVs5ianTkWH+XepozUcb8+JHQOmV3KjRC7/RSz6NL1o8RaENFifA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726875354; c=relaxed/simple;
	bh=GQIuBk5GAYiXsaM7dl4PRaiaJopRRXvVZY5yuy2snps=;
	h=To:Subject:From:Message-Id:Date; b=CbhyrW+mHk0OabyioMsawi08eIxk/NLb/NNW+rfwnlv1hb0J8ZBG0eb3SFZSgZ7zxfdrjyRtahL2l3nkooef2fRM9sCvq9HULKp4I+3KiAjk9u2S8M852SFUBmcvX8837rdqczwTsrrdljMy0CVuZo1LS5+Mz3fcXy+Z7kCFYHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHMhqhet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHMhqhet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E07C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726875353;
	bh=GQIuBk5GAYiXsaM7dl4PRaiaJopRRXvVZY5yuy2snps=;
	h=To:Subject:From:Date:From;
	b=aHMhqhet20ZkxSwVWosWpC4chUF1gp780JVq7k8FiZnKu2xkPqd6KmOxCxTEPPs/b
	 WCPAIXM0UMu85YzcJXHf6qsK8RE5Lfh/JfGTLj78TZfrtmlTxhsTbzuEz8aIM2YPrT
	 C4Jh4Xpal/Q3OqRoeUGYE+unzltx4jgq3GRi2/ELK34znimx4K50a/ljW7Ka6Wjh4B
	 VsZ0fHwxCl05rZpVHmX9wGPx8Jcrxu/lxHSvNzn5TPA1i53ttFQxjgYSgEayr2PIJr
	 QxD9pdya8nUnUGD9ayEK+bLjC8uGskfFxv9gQIBAfAftbHCRXOcdpxDc2r226QQxkk
	 5AK9tqYOv1zgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92783CF9C5C
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687535358.28726.9306784482545496944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bc8beccef4bb7f803c086d06bf567dda7b4cc763877dcc9814e6983310443f
Date: Fri, 20 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726875353
