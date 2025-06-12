Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EC61E5B7A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749710994; cv=none; b=QFY2bZ2PRqTGiheLS9PWiXGt3bszsn53scZdgIGAbnd5cZaEnC5mlh1MWAuB2t48JzqLlQyYIGsoVEM1hmzPLM4phAzfHcndEGbbSFXk95h0S9X84qECUPFhJCwZjmHfGNFYil3cq/98qQL3iOge13oDHZ0RgfZ8Qg2BaoXFQe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749710994; c=relaxed/simple;
	bh=x2OZhBId4KRLOImKDWwoFEj94rQSpFxGAurwiFyR7pc=;
	h=To:Subject:From:Message-Id:Date; b=Y8h7R/H+ABuO0sLmOne7ksx/hueQgXsRQc3rWfxgEZ7XGV3+lsthaClfoc4/AlzOLP02aj4FBN4Be4WHbl5BoIg4wK4R7HsCVR+r7F393SOlIXRNWiC4ZwjuSh9sVSkXUh+Z5EikCtwfBDDQX3/CQcBO6Kk86mOiZCgyS5qOlas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXJIYG72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXJIYG72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749710993;
	bh=x2OZhBId4KRLOImKDWwoFEj94rQSpFxGAurwiFyR7pc=;
	h=To:Subject:From:Date:From;
	b=nXJIYG72lskohoz5AvGxCEKNwej8nNMKWm0iu9AYsE3oCyTrpqZOILHSOIItXr50s
	 1ds/2Ie+JULtMvVfM/jqH3o//FEe7iS0sWNOGpoxxBTGUSASVb5PpvxyViniIq0n8D
	 e4KieYsACleyfl5dQ/Y2/GcXpoeR7/pAVEvXnE1ZSS2JMa+j65CUhdFBMKGfsKp4iv
	 CpE58jkUfgfy3fXbZOHLXLOUhAD258Z430xIBFSkzQMVYRbpBiUoS3uHgeEV0ZUzf7
	 vKoINjuFBHAaG/opkaW3S9tyF/OUllEUZh5K9N2/tjFukG5eE3VyTtOsCq9in1GgbU
	 CRC+ny8z+3FHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266EC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971099359.29756.16342382833756632515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08930bb71fcf652dd522d32164d61933f45ab8a0f25efb6ce2b5f87714cb4b3
Date: Thu, 12 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749710993
