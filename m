Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28012F9DA1
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788317434; cv=none; b=jmQCcJ2fx0vyWiztvXZDH/6dqhjqdz0dWQhU71lOnvDvaWOus2tKQa+dCgt/4MnnhrAOHPNyw1gnnh5NxlVuEkNNpjqNrP6W0aFGContVUge8p4DsvuAoijuA8yPy7qrtL5b+bcZ0FRe9SU3M6R9tIBQ82rZrO1FGK11Ptx5ZpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788317434; c=relaxed/simple;
	bh=TKd9np6FhfFRjIxcyxNvMmD3RIdtaTU/tp8Q80nQxmI=;
	h=To:Subject:From:Message-Id:Date; b=W2GRR7m7NEq9tsfyjyqbkhWCkcytClGe3jy/0Okz8P4pVnD/KNFkA8MEACV5uyMowoOje/LcE0HYvPO9vZ5Ci24HzIirFeNvbJu2MI1NEStCRQBIkpMDHv4g30GwZtJggJSKYO3/ABEVGJq0uJqJp6sZMO03yy0hMnHl3uy8Jj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGxsmk+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGxsmk+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CF2C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788317433;
	bh=TKd9np6FhfFRjIxcyxNvMmD3RIdtaTU/tp8Q80nQxmI=;
	h=To:Subject:From:Date:From;
	b=bGxsmk+s5coqT2JUPDeDXEEM7MDCH2g5vVPKoEevJLmMRpBePelpozGqksuE67dvi
	 TNTxlUwMiXTHG9+MaLSZ9XXrlC23NFdiETLgQYyb6QiZtwYDkMG6CjFlUOZxIP1p0O
	 eoWC4Wmaba8TX+1Yl2lX/G4xsfqVLOP3ymIfLn79U+A7Lnv65e3/bJ6BRMTPunJfL1
	 WhYOElhmhx5p5DSNuZrkyY8gQ2G8o1fIvKwd4eWxtCe3KgBBj6YlxnkfvWjeih82Ul
	 sP/NVvoOtNsHELJkwCIwe5zqiN7LSOxerJH5FXxM0Pz11+MSdrWCKYb6PS2vLYZOQB
	 EennHGIbFm2Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD95FC61DD3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831743368.19843.1554346834322622020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d899e957bf756aa2a4126cdbe3956a149962959e1dac7b167b3eba134a271a3d
Date: Wed, 02 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788317433
