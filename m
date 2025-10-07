Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDD42DC76A
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759843194; cv=none; b=n5DKYBS2XwjAoH7kKMZQmM+FshZR9oXyKEvuMnyO575bDPSZY8pedbJUQ/YTDHlHPsiArlNC1tez57ZRnIyytw1dfD/X4cOTTea2ch1v9R0AxQwj08sM1GmGnX5QWw12JBB6NMpL505Z9di+qHG8rXhSxDMk+o4kGaQ6LjhBcgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759843194; c=relaxed/simple;
	bh=+Prbw6TIpCFavNp5fmE5CETHRIqTBMDDWmaCM4AX91E=;
	h=To:Subject:From:Message-Id:Date; b=kGr+sJOFbWCjwEnRYr+bMNKwLGAobxwCkXbFgBl5dVVvCHZOxPsYa89KuezgGL10mZOVp3phVmGYmIpYZnBCnOG5K9vMGc2Da+TkNrtKU3U3c2zb5pimoyuD3zpPO3jXvH4ENShUd8Ty1ymaTxQ71zYBrzm7NQhqaQWJo02Kkt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjZO89pi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjZO89pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759843193;
	bh=+Prbw6TIpCFavNp5fmE5CETHRIqTBMDDWmaCM4AX91E=;
	h=To:Subject:From:Date:From;
	b=mjZO89piWGjpMIIgUiQ6L6TDpNbe4pqpazkv4bj1PTCejnY74V/ke2Ktj7oNAiS9z
	 oZtqJNhtWQHd5TozWK5UmJ7EmwsqviWPsopGLPXUXkMyup1AGglE0KETJoDBt8V/Nu
	 VuZ2upg4ZzwrYf9g46um+49T5luXJXS48OM0UkqoQVJhccu8zjTOfXdAzskfc0a24F
	 FyoWwYFBmd6vW7ABr6/5rSSAmrb5h6ZNCLMZ9EioRgzFs8vUCidcoxV1Fjtzgf8mpP
	 kqPJPQI79/Rcp1m1a/ANgD9y5WakIHrb7jLuDiROpaT2SPSpUQy+efvoNqbFr+T8mj
	 8BQyZXkmP2kxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F620CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984319357.32012.9271701122752223473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fe706e31a3d5469346415fe2a0a0f9c47539d83ba5f2e23f4292291ae71589
Date: Tue, 07 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759843193
