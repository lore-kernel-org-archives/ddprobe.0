Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2D21ACE12
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727348154; cv=none; b=K6qMV2sy6QsdVdAYvwX65TzbaAxrlkyfQXSxZe75JQNbjqE8TvsGIW8ihEaFlfK+S8axpnGiLFjLHYXORU4pyC2JlITq9HhqiSsfmy4hzbwaONg1aavUIWvsz1jiXKbbeLu5pXe5i1tUvUMOyDOzdVlVf+NpDLc4IBznmW+An8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727348154; c=relaxed/simple;
	bh=UqTmIFPmMWQxCEqchrXSbTWSK1b8juDWRzI5pYhnLi0=;
	h=To:Subject:From:Message-Id:Date; b=FRny5fO/VsHwKaapWG90KTIm1HrvOqRDfFhwe+EBXb5sXkchK3lS4i8/JaZBH3tJOcyX1YNTwY/8Axj4t8Dyf480ZegXpvkp1e9R13LPfhg74WgaVWpCHZDuv76X4+8ByZYcI/fKYbhYznRxx2GKkAzXP9iiUe1EHUAlYlSI0nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImyEA8ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImyEA8ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A3C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727348153;
	bh=UqTmIFPmMWQxCEqchrXSbTWSK1b8juDWRzI5pYhnLi0=;
	h=To:Subject:From:Date:From;
	b=ImyEA8eytUfNJkn9WyZ+2pTAUaf9Z143cQJYsJobDfafC9F3WY20T/ooTVSSsPy9N
	 Dk09LYNtADM2Y88vbbADT8E5I5IwcRzsloRS2I418GBcm+1yAlzc2tuys8t3+/+Fnj
	 p209bYB569rN3/XZOqwoNYo0AqPKHyJ2a3s5Ey/efQVl3446jcXhtjR5jsGqnBKH4g
	 Edx2cHfchxbJfmNTdjXeNNaw9NWcZ71J0YJqztAu1xd9ShqmGG2fMdl7Ex7u/HtXaF
	 z1k6gc2eFc5GMcdUtRrcDqmZR8yEy4HQ5yikWiyXggVZbYi7Sv+UPiwISgWrOku8t8
	 IWWcygKiGUwyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E6FCCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734815361.31859.9098655347234776042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3af4cc7f198e028740c8057d05a0f265d08180c4b5398cd95d3f96e1f40dab
Date: Thu, 26 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727348153
