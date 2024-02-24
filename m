Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAC21BDC8
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708770497; cv=none; b=lLnmfSRiXVRVnUxGLaDlSJ97khFRodmFWJDD8qXz0usPfpxcWWMiuWgdrXspPZDmDccn5YDu8rWoHqS0eSkrwcvN+PNpOQwvMpb48bmw4cuUrpKcw4a+svfPtwIU2nhmolquH56K9esNTiiuTTbv5XWLCoDK2LMEzzrkIqjf2ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708770497; c=relaxed/simple;
	bh=fSEF+zGGEpTndp/bGZMI93GPi6rvAHXubK7hPhXyqAM=;
	h=To:Subject:From:Message-Id:Date; b=DnJw59SNV556/bB+iWuBX9TTPCkP+ldz6I/7FtCQ1DxHGbIpA34+GBiACh0SNUkauTliD5cmexQRuwyaWPu1bPF6RcKnapYK1OSk7MaVqXzrMGLQFh5s6BUi5/keneQJJ0PQfAAG/1FPReFc0RvMS4gcEp00VgEJLmrzeonLjmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcVAd9Yr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcVAd9Yr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95363C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708770496;
	bh=fSEF+zGGEpTndp/bGZMI93GPi6rvAHXubK7hPhXyqAM=;
	h=To:Subject:From:Date:From;
	b=pcVAd9YrIrbB1VKHOYeaMupR+DcKD1Z2mvZl0qpHNcxycX9b+Yc1TDxEOKrDID+/8
	 X+T/zhZRwjxY+C69UPWDJJG/Do3aeyEJ0o2y8wDqzfRNSVhqC0P6cxmoD6amChxGZb
	 rT7p0L2FsUnCZFulgS+iTdf5KgXqbbvtmkc+WQHL30IxW+8omU6noNde3Yo7x6gQY/
	 MiVOaRV2QAtLT3xfYoSyNdXpSD4jFWitdxL+aOQvMnjjwZQAGA4d6UL6uCAZdOMoHg
	 qE6qtX/JEmpPLJwZsCwfQCNniWyFnb0H+AIOifUh6lmL4R92aXAd4Cq3uQtVKg0neg
	 BlHK+XNvaDXkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78BE1C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170877049645.25028.3535428936799018988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b636206c469486eb2a54d7ced2d3fce6aebf6802b6f8a47a399e36fd6dee3a
Date: Sat, 24 Feb 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708770496
