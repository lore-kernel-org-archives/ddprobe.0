Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A6329B78F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775593534; cv=none; b=JEdsQt09cqlgkKW2T4NLhYNiV3Q39yGvaD4a45WVZrEQ0JrwIyXyjwaoFiXTTamDzp9ImvpwpVa7vtX9EQyRt5kS1CyIeXMh2iItBGnT2xufN7NabVDxR1RU6PZwfiLq6IWi66c5Lg5IUwExpWLSaEJ0VGmyV5WKPzzj6iyCWq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775593534; c=relaxed/simple;
	bh=UDX/VjKO+a8aoH/yguedGCCkkI0qTlt+SsaTK3Y7Qk0=;
	h=To:Subject:From:Message-Id:Date; b=uhEa63cIGCn/xW3E3pmoQTC7KoF6LxSo0txsSf46VRFeWyj4G4VtHtlLm38CCpjy+sOR1QXSpN13r9XUfjSKxGuw3CR/yj/VjEPKFn+vraqazla4IS2sZpoa/6ayZiLwHtx0UCLu4em3Ccj0pFRu/ZyVpeaCaPi74UPdDKlEiJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTGjwAIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTGjwAIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC35AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775593533;
	bh=UDX/VjKO+a8aoH/yguedGCCkkI0qTlt+SsaTK3Y7Qk0=;
	h=To:Subject:From:Date:From;
	b=FTGjwAIKGhvficbmgPAywewF4OH68MOqzWF5BjJHMFaCbnehBPxJSvuaro/UHsV0Y
	 1ukHKC2DDpfcWG2gsZbPYBzKeNIfh1SOCiEgxv67vfh8PdxQQoTCr/Y/Xfm8R1jV2K
	 t/8xm+Kk5pyAUBz/Np5kWzDOO565byxx8+bF3Lmg9kbKihyT9z98J0elnZLU0IxNrB
	 clQL6FSBpKOWs+3Qhv7bw9d9wcy5f/oVhEEG8hTa5F9euTTFowdxyl33yUD6Ep8KLw
	 bKmdAD2UFJAq0EGOJFVROaYZ98nm+EQt2O3jsFyq4O/NUkZQj65dm1uDvDgYLBYGkK
	 xnBUt/np38BJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C34FF513B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559353368.31192.6341625384061573716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab6cb6254b99d9524b2a1134b6d5d4d4b6989a1f47e68aa0e291e31e45dd1a8
Date: Tue, 07 Apr 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775593533
