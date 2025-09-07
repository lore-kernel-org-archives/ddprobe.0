Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2374829B8E6
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757275794; cv=none; b=gxeGFnHqVIwizwGqmURsMXwJXhHb8m3qaRCUunT0visdh7jUQDLRLFLOofKFSyoAOnKVnUqobzebxkfz/OD12uBkEmRrg1IaEALc4msziUC49ZgzJCReeLzx7WIj9+NwudJNeUjKHMpGGu4h7l87iLzhYdJ7QrnVD8NNl5DNwgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757275794; c=relaxed/simple;
	bh=Nts6fIR9VduQp3Kl8RwW7uymyR8uEvGP/pLgyjh4B3k=;
	h=To:Subject:From:Message-Id:Date; b=cq2oloDQkTWjaxh5n9uIvjoDBm5r08dcCQtBSc4Ffab2gGO7wKHHM1lvj+A0COoSbt0MiYe6PQqePzTrZxJB4C/nSydql0cXrJDj4WfRg+jZmC7oo0HX8BtfQLZA8z0Kfp0VqMtTE7Jy0SV/fkAwj5EIK5dIY2aBdWrOKPrPTvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAN4ohtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAN4ohtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD51BC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757275793;
	bh=Nts6fIR9VduQp3Kl8RwW7uymyR8uEvGP/pLgyjh4B3k=;
	h=To:Subject:From:Date:From;
	b=gAN4ohtpeiGLmGcbm4oH2apgMkPMXaS68+bP3jxhmV5T6BxezQu3bnNgNx1G76cdb
	 IyWkbI2llFE+BLHUDYu0Ewu2inFCCuoPKbHZmMR+sM/f7aFpZ4om1jrCbyTjnYlxmq
	 g9fLEnfoSZIJ/jAvkUZ9Y3nc2Q1qzOvqgB+Of2IVMuTMbXWu6A0Xy1frZeRr4LA7CV
	 +9fKMsIH03v2CLOpsEF86n1Hx5aNxlDbMkC/N9PfY1w+5XL7g556zqXrcUyot5mXf6
	 eAetMxjkt+IOqAsee0pEA+uW649ToiPgjotohTVJgbGTG79+lGRPYl0GBXI1k06M8M
	 nhpPKBmgZKZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8D1CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727579363.23315.13618994082472820370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f40d1e65f582e32d337ead7c2992d33834c0402b60d76517a40e1d419c97fa
Date: Sun, 07 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757275793
