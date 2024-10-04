Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F11C1D9A41
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728054354; cv=none; b=LFSCtX5lWuGKYDb3RaDyUNF1p2O7TT4heTpW3uyuCUo+mVHzdwVO2ilqak2L2Q9Te68YdypxjpkXsdtYO/0LKEXFgikyWKMW+FwyW/GCY7CUeCm6m8rm3u6yTiSUDTM2PMY9mDXUcxEM6vfWQDB+sv35bgUl+8lPEjriTRq/klA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728054354; c=relaxed/simple;
	bh=pa7CulEZ+KxoD2qLmJveEV/JY59qfoi5mGiRolrnQLI=;
	h=To:Subject:From:Message-Id:Date; b=sQfB9sm5u3AsqYYM0ygf8oWU/SOUgi5cL07aMQOPRqrGNhhWXkF8rKhldEcfxDf+xCvOzzn8uih/MVl+knNGAixA+XJBgOmLxayu6EOqIkLjan8lq8LIG+JqVO2kEeAR6WTyS7XUssWw3LRQWT62rm77HCBocjdjjU0/tv5Zq5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jufhe7AS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jufhe7AS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C66C4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728054353;
	bh=pa7CulEZ+KxoD2qLmJveEV/JY59qfoi5mGiRolrnQLI=;
	h=To:Subject:From:Date:From;
	b=Jufhe7ASzgFFuylZnu/tnpUGO9G+P+grejKejhAW9wsXYKFUYoI+fse4JNklaV090
	 OixDmhs970++QTivc9RoJ5OcsaHldSDtFnaVr8ISJeUbzOXAuyHqBnEqz+alLMovAY
	 Iqockskrt1khTVjLVpnidcFET2urJ44wfa1dGSDtAWhHtj/ljHU5LyI1soPDecf95/
	 xCD+EQxnA//jLtGjaUFPqNTsDeh2vbxeNEryrGbnwlGRzvgC1GfGgeGPuMnnkPM0id
	 +X2bQv1DEhhg53rgCQjMUGxIV96o5kZMCGp+WWQyVofc/IL/J3nQjLZ21sdZD6ZoCj
	 5XhMqu8B/l5vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FEFCF8842
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805435365.17109.6739756692344529569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc44f0a44545bd07448c4c680d11951ea3d9f84d8f9cb585efd228f7bbabd19
Date: Fri, 04 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728054353
