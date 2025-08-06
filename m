Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BBC1C5D72
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754524794; cv=none; b=XM1jQ0gteiTaq2KXebSmad1Mi2o3kFp+W55eCIFh4MeoLpJlF5v5QV+/KAi/lllKsje/6yU+ImvoThs4PsGQTct45MZ9oh9AeY7blSjKlLvgBUhFXR7WREuGhIvHTyVrMBIAyxTyiyRWq323dJdMwSOOkc5XXH0azMIIhLkOpbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754524794; c=relaxed/simple;
	bh=K5WvT5BtYuiKTuRnvvMwxp+tglvTdtn0rZ/ET1UpjiY=;
	h=To:Subject:From:Message-Id:Date; b=ZhfLUBPeRFE2G/f0J5PW661niopPlXIDj0xmi3zDwDSm3oM6gNBqlFBNl1F9RTGP/w6igeaFI2sWEBm2p4qh2XNaDQfGZ+GNFkyaI6Nim0OcCFbIPLGYBp0WRGYeR22OBiUSz1jCXfJjMdzHpVEADdHO5srQ6pEy0UaBta7o2eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbcpROr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbcpROr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754524793;
	bh=K5WvT5BtYuiKTuRnvvMwxp+tglvTdtn0rZ/ET1UpjiY=;
	h=To:Subject:From:Date:From;
	b=WbcpROr5gPl0oGt411LbDjrt528sxqkw2t9VjmmMjisoBZsJ8pgG9p1ytQWu0Fx+6
	 PPisq3JEcb0+naJdJ9767og6eRGnOd3rqTbC44/IuVFNAVc77rqtKBnq6pigVQ6CZW
	 CBWZZSi5ldkrAkTW6tQjAZgfHpZ7iajrdCgU/3XZLx1+48DRXzEHyjHHAyvAErv1Wq
	 Mw2QnLPHBa95tLpIoryhToOKSyId6izu5bOA8d1jD2ECxRx2JrDVp2G8NbE6IF3S9Z
	 bCaXLJ0VsmBfe2Gpd/DMV+gmd7pH2wactjRdY56TKYcN03JEXHS/EG/f7ZgIdbTg4Z
	 zdGV9pZ3Cme+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55FC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452479357.5036.3134199414824321996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5efcc522e8d682474b4b1993c0242c0e2372442448f1912068f43cd97a6b1d
Date: Wed, 06 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754524793
