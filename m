Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADD816079C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719492263; cv=none; b=VxNvEZnKHPg9Y1VctYlBElQd/5LcERD5UUbRdEM05yx3hg8L3MRadJt6ghwwYW2uFKPVgS2B9Csds/k2sz0di9jNcH4zkFXBeX3MRekl8loH29K8zvO95PSaNwhQBAVVA/RTFinYMgjXcx362uefTmnGZnNyZ8qen9pBefdaZ08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719492263; c=relaxed/simple;
	bh=Gd80fxxWQGYsJIWBDNUpZ+SgdYL2QL832lrrjfYJzdo=;
	h=To:Subject:From:Message-Id:Date; b=FCtaLmdb/KIZL6EJ1HyB1wjAo7y0PJaDydHaZDt940POOfJqCkc9V67P/hdf+9EAVikeO2vXHI+U8l/P2NlOwpHHZLxMGLKaFr8hes6HF7uDQatokawog1znwRuM7dAxmLm1xMwpb8fuzo1PPyhqaWeavkF9YDp/gYf5zR4249U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbH5Vn6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbH5Vn6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9467C32789
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719492262;
	bh=Gd80fxxWQGYsJIWBDNUpZ+SgdYL2QL832lrrjfYJzdo=;
	h=To:Subject:From:Date:From;
	b=RbH5Vn6yhUbh7ktczzcBJ4/7mk/jGqbDyzTujJyB5bIEwUfSup5Z6SycAaI7LCStH
	 xgDUuHZxSpVB5b3N1gAA4LPuhRqtuYvzTUumpHHpDn/EYzp+25XOoUUVw4Aw4dCrlM
	 IGtJVBb4LcdThC5D6gOZ52mP2oZmeZTV707jIBWSV8dLVSYo8sRW1b8Juic18fLrmc
	 0i13CaNlTCcII5dD8DgLJJMmazOkCNmrUiyJOnYntscym0cb/QEXAtZ8sM9KONFJnu
	 BXDzgToyq/EHFkgDq1hEWLnmqA5tvXzTJ6UfLdSRBAy0g0D9BnX0hKh2N6cftlfWJ1
	 1okHbSqyPC9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E0CC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949226279.11110.8210430117717792472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff40d09f4b8c7672de3e95d914bbb68afd7fb5d2a42153def251aeee8797736c
Date: Thu, 27 Jun 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719492262
