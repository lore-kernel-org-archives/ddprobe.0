Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28249202C48
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750187994; cv=none; b=n2BLEDvTic72AAYoHAdXXLdYiHYmFs8C59oCFi+In11h+Pk2HXqxErn1wa0AdniPGhReKsfCexH9gwcMeQaP/Vs92T74F53gCCvv6zrsPH57j4BVGS10Uc0PS/o1OXaahmqAjdgCR8Fw2SHP/7KThm6j1xCrizWYi86EUG5S2fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750187994; c=relaxed/simple;
	bh=bNH0VscHzGMLUwrg2Z9F+GoC0c28f9vMzz/NdPH4b8U=;
	h=To:Subject:From:Message-Id:Date; b=LGewaEnK8Y6/YT24v462crw8uGxv0UWUse8FjzaDYx2/Mz7yRppmlnA8/HCAdKme687P5pATZg2EHLo/5eh7RvTZqoMAv9ZB5tI8T4NjYbeATkcdHfW0/NPnoBPsI88+IWknZ2GTBnrbcccS0TAxOGO7MRtu8LP/N1+SjWETGEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNSPeW0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNSPeW0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750187993;
	bh=bNH0VscHzGMLUwrg2Z9F+GoC0c28f9vMzz/NdPH4b8U=;
	h=To:Subject:From:Date:From;
	b=DNSPeW0FIKqCFV7dxjvFR4NK7cZvopWiNqr7m2psLLLbYlZHbuCbPAOAmCRGJ/IBS
	 JChPLsRemGtVEF5dy63Iw2A9QxOZx6FCYpAr/STSceoj1SPggy1B6bHZf9+Q6MM8HO
	 ZAwfcU6xYs420vR51edS9OnKIkeQ4+5E1Mu3IBKdZXaaDw3lpi8zcFV2Qgl72HmAx4
	 4pqbTs8JANin55SvcBbEd1f2rtx7ffdcCVzK/R1WmBmPBiKj6n1Xk9b4tXPv7NTetw
	 RU5BSdgWhhraQCFaxzsZos93AdBr9SfABuGG/MrBqpDfR1evMGeDrutaro/Nljr30e
	 vogemLZW0GLUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CDC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018799357.2490.427884530717881684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507d2bf5f858aff7d36dd5a7cbffa777f8ea9274c94f12d7a80c081a63021b2e
Date: Tue, 17 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750187993
