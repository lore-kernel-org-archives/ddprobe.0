Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C581AAE13
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753847995; cv=none; b=CinqXP59pOXU6Y1P45g1VQSPfU87TNynlUY9JH9J/+R4cCfVtFWrJKHrOpRmabrpwDkQjYD8KdAnB5GyyILHfdskaAvv6DWVQm2pgraEwPZlvRssRDQFN6lvonzsYw/qT/ngGvuQvUx0TCgzZKXsbT7zF6Xot9STnWjbmykpeLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753847995; c=relaxed/simple;
	bh=mR0kaBvfSB0fDWPareSi1HWSmj59tN4FXe1gdQiAW6Y=;
	h=To:Subject:From:Message-Id:Date; b=o13opQE67uzQNlZfIPz2OO5p3XKdces8ob1bx22PCMZIwfA6LJqo7Svi2z+HKrAjJHFsXNj7Bw1VfJc6SqqP5yzA7EHcX98ttP/kixRvk4nNulhszahdLMzqApMC7nVBtjfB09b6uZz1TMrmo3lCJd4/Q92NBbcGf6pDmJ7kBl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY1Lb/od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY1Lb/od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F0EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753847993;
	bh=mR0kaBvfSB0fDWPareSi1HWSmj59tN4FXe1gdQiAW6Y=;
	h=To:Subject:From:Date:From;
	b=sY1Lb/od9y20hA2tUI8WAasJ6bbtS7/ctGcz3fNi9G3iMuH6frL2iLqJjCZ2nAqqM
	 CzTGpqprpQWZQ56t1PB4pM3ED8RE7FkoUhtBEPlBBuFN/GZ+I8YR71d1/YpVjRa2AP
	 ehuDoUoAM/Lx7JJEVLK3gua8FgqQhzyusQf4fg954mxpW0/5eNiPFLIxJinAjSyw9W
	 sDI+5Znyrm5wMGacjrncZ2i26L4JBA/P+hG2M6N+A94zrJrnM+BmMu8073ZnvT029R
	 4syhK4TnlpkaLaEu/JJ05rXVfArn2D2nr/MnyOCfFXiauWiUQEZGGscTU/U6QhywLG
	 ex1j8DfuXJ2ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92536C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384799358.17408.17107248576011595898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648d4573a79edd3bac36773e30b1d0531c2041266210e6eb30d7d718520c99c6
Date: Wed, 30 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753847993
