Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265F431195B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770470634; cv=none; b=OuCvgSQl8Zd/6LeNOz/ZIFz7xneP/5vEgW+igkNWq8oo2+l8sO93t98W6ZA3YtHEDHldelUMcWffFFzSknL0BA6lTRCnCLbrfogm/Qe3yfpm0vBBVh1K6b26kQf+9ctkH8lWXYhNfXPksWeobcbGaPkoknORmSTKPqLl815ZIKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770470634; c=relaxed/simple;
	bh=mH3smjhLxLGG/19HfdcRBccxWTNWd74MSui4UZmNJxY=;
	h=To:Subject:From:Message-Id:Date; b=kZt9HMESUk7WGF9sMjQvT85a7WfU1czYMiwlaJaaO+E1pGexsH0P9/BoCjvEVD308DAk82OAu81vBZ2O5h5TMcO8YCP1ZhSjHCpSDQLjK66Cw8gKtOgu0RTSM0irHdO1uL9bxybJYTce85Hq4Hheoi7UYxgQ6xVeJmptqs7nrWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1ftPPo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1ftPPo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76A3C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770470633;
	bh=mH3smjhLxLGG/19HfdcRBccxWTNWd74MSui4UZmNJxY=;
	h=To:Subject:From:Date:From;
	b=X1ftPPo3zsInVfwLSZoSarP/8BiGPUFMSjRx9Br4hDXU1arCkZe8qLDjwEayD+hc3
	 OeQAzBy8wOXp/AJss1KOEMR/6+Spf05Ap6ljJBRY6jxPCr6LToSD91r5Cqh0/9sETN
	 cvEFVuE9V305KFzyU6p8HsBCNhcNzhGPdOLCKjGoqQhl/keaez3Jfba6pqK9uEfSEn
	 CLs7JdGttKy9VYWBZYL3pJSOMKv1EHUTcsz0w4X6Cv+KJRkcJlqmXX69TB0Et/eULM
	 pKjjKpZBodQnBW64AczfiK05vbx5nZ9KVmyqhOTEBSkwGUkgLpb50XkVc3+GAuv/zs
	 jo6ODd1rAENHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E472EE0AE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047063361.2833.11421734039410733267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53847bd58c48d0e36e439b628ce6deedd813facea41173a8ae6f6fa0d70e8176
Date: Sat, 07 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770470633
