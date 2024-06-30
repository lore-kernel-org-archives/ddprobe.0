Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED4617C
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719705863; cv=none; b=mkujtCOd3Xr2YqIe9OHrlnb+cZgIPl+0MfID8J53FlRO2ov4bDl8TtreCkJBBDGzmiqoeSkhhzhEbgDIr3l7ZnFYdNZsqVhHIQaizVYn3x82zeO0Uf2bVMIP04S5hIvHJAZw2ORGrL6CPJK75nt1V5PxPrLhv8KS0Ha7qIVYEJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719705863; c=relaxed/simple;
	bh=PkDULvG9kjwSEl17YeSUWKMwJnBFGt7JwmpuUTHpFiY=;
	h=To:Subject:From:Message-Id:Date; b=IxY0ObqjmmmnP1UyBM8TL82IP9dpk0JL40g8T3fR+D9SUUvlJsrVBCKaESWHf/1SyoRx3Tv6gh5tyftXO8LSA1QCyKloeHDD7sgmLo06IQTCT3NRnBP6w5WyBENibXC8/qJhJ7xwFIT5moiF72llgZPxQ3EtcgThFOwcNsDSfmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTD22+1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTD22+1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA6CC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719705862;
	bh=PkDULvG9kjwSEl17YeSUWKMwJnBFGt7JwmpuUTHpFiY=;
	h=To:Subject:From:Date:From;
	b=qTD22+1FzsVmkWzpFL3BJrKYv2cnGd3wOglnbGZ8v3sv2TOO4R7Ndyr99rvMQVwqG
	 w8miTx2GXziC54J1Jr+XBW7ZJJVzQO/Eq0rRQWY9mhMfFNKBSCJNfAj826j8drA0kK
	 5Flbcs8733U7Pi1l43ONeANeVTBqXOlWQ9Z+ObkIf2n7PRZIkFz+Zho6/pVvjWptJl
	 NhOLIKBAa3gywVSssRps2EqbX4scqcFwY/nbOA/Y4uvOxfZ7zv/UxwOrhDIxsFJeq0
	 j2B9VN/ap++szpjZDKwoPTud1BlZC0YgLerSH1GNooeveosH+Vjn2oWiCN3B6Sq7t5
	 83Ukf+zvvgg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D9FC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970586278.5555.15746682484596962352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99149a834f353dd74208196f43edf069c165089bd6ece172dce0ec74034a932
Date: Sun, 30 Jun 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719705862
