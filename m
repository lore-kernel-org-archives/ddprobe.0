Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B9F15A5
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710895697; cv=none; b=ijTnSsPYRU5Uu1yvymIC5QMJSm5HRfC6quPLFNTTyodQEr1pzIQOIHGphLHGByfVNBE+pc1LsKAKnCoP7PSvTdvg0qRu/CQeUsFikWX/W/M77sbKjrVMCRl7oTAwWIF/Bv+vj16xEsQVoleMYqXdYmscw0tXzlIs2MnMfCvW+oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710895697; c=relaxed/simple;
	bh=J1baJ1qx9wdZvFcB+F1HGopCZ1F2unJjRjCS24wXnPY=;
	h=To:Subject:From:Message-Id:Date; b=IYS5uKECOFIZoXeTNCWys/0S6yuhgiIEBrggXZAaTwGENKtozqb5Or6lidVftekBEbtxS2Ac3VLymLreZcQNANbUkNna1Ir+9UVXOPkBJ0VnXOM++5uFZmemlfeeTiQ14yqbjGtrT45rb5BA3Fbqa7r5em+pWvkGJdplPLEKgQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvrIXO6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvrIXO6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 798EDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710895696;
	bh=J1baJ1qx9wdZvFcB+F1HGopCZ1F2unJjRjCS24wXnPY=;
	h=To:Subject:From:Date:From;
	b=tvrIXO6KGiFZkTsJkW1d2nUPXqpaRK6IpM3jCSTwD7p9M9BapSl5iPfobH+8loLqg
	 Drp5ervnG8RKG3zuo+ib5SjYVp1hhbGj+fIDjkgw5JzzzJvwz1a78l524MpcFiAPuM
	 rmmPhbIKnjQF5rQ7fhEGiLwAvpxuKbeYfpo989MCqrfTx5apIKdzfPAumwU7GYyFH+
	 SzsMN1jhFj48E6YBhXm4UoWO6T0EOiblmdlI+uer2VZkMSU2HTFJsh34fE3BbxpUjJ
	 84ZUgy7FtQ8oMrq/08AyeUPERzxX/yLXod7tESiq4elphKUSV45rELfZT6Zxbm7jXm
	 44EHFCuUHa+ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6742FC54E71
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171089569638.6571.13049910419102068506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dca1d3d11b0a89e8ddcedaff98a8807bc7323e86fc03b8ff946413b93b062c
Date: Wed, 20 Mar 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710895696
