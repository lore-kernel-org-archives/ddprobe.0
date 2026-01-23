Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F2121CA02
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184234; cv=none; b=epAzfajWJsxGdCc8nBTDspmvn6ZZZ4e88XhVWdBWv1JJnseLkWd03WSRds5F7Kba1zRjsyGSBGrXNkFz2uddWV/yU/lyUBbQaPKzGEB9n5lI7swkpsa+RKL8EMXVf6pD9Szn45FtlPWILXaC8mh6Ltq+c/MAC0sacuQJmfePPfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184234; c=relaxed/simple;
	bh=yiIIwbUUj77SWifPiaJAcbc9h3ZpOLeqAaGPL98uu5Y=;
	h=To:Subject:From:Message-Id:Date; b=o9z3hpXvLo1azshOw3ELJDby8tEDgfYdYn8AJo/yVvbDXuJw3JtggP5h+ACj7Sn9tl1Cshm38EkZvpdJK1x5yhQtzLqfIOwYTDUXMBbuktdcdijoI8aVqDZ9KQrA90iglMzLVdjbrZF8LMdRaEGd30GWm3Wcnifp37mP0ioyd4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcjHqWrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcjHqWrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F33BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769184233;
	bh=yiIIwbUUj77SWifPiaJAcbc9h3ZpOLeqAaGPL98uu5Y=;
	h=To:Subject:From:Date:From;
	b=DcjHqWrMtNHJ6DmsyIQqwT+ngENKWmT+8OX2brf4r6OUhB/wXWX/FSczMtwG8IHjk
	 UGaB0Ymi28HrhQWjt7ZV8I7eZZl0iZqS8eNSLVk3GIeVPGO4bFNkdS4z1zAnvtNx1f
	 GGwJhJHf2b2GpEl44FkOjjxlU1dwVlOenwtKoIprTnioGeJ1CcDd9BhcZGKcVXeXoj
	 ViUmv6fVrZo7PerEzt3keRD39hOrk6COQT303ilArWymtNw92IHZFtUZrcURyNMCVK
	 ovZKLRPYaPpRawtgbSCQ/p89Ckwy/FC9AGhV6xwZFeIKGylbbS630Z+1NiNCCyalOW
	 hDjwH+SFsaFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDE6D74EF5
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918423358.10711.17261816697986464362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f056a4b1f91354e442deef48952158825304590686ba784899182ca011835c
Date: Fri, 23 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769184233
