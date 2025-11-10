Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35C0302CAA
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762786794; cv=none; b=ljYyJVhd3ecT3vpHz0Vyl2KOigVoD0//cO/+46n0GSEhNb9DjywlJHveovAU7TU7uWBDjPzdA3GQEq2ONh6AiHujzJuKo47JsLESyXWmRDaZ3E3pM85vZYSE/QjiNenqgU0ubSiELX+y736l3sk03MXVBNyHGcmfslsZ+0GIwPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762786794; c=relaxed/simple;
	bh=uyPTc9TPYw91UkW55Q39jUU4QOOzMRP8/GevShpkDqU=;
	h=To:Subject:From:Message-Id:Date; b=kejwWZ2N+Y/cLGW7vCHG20hOaWK3hBEv9NvT76z8BTnp/2M5g1ITBrsouk1oOJl3DXqHkLaZt2qAAickSibu8mblqpe9BJPntjPua70w7Rxmh0RuYks767qDGrKJXHdChRSSFYrCtInwQlnAn1nHZ9B6eJoGEee1VnWMS/mrCRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY7AnpB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY7AnpB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C257C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762786793;
	bh=uyPTc9TPYw91UkW55Q39jUU4QOOzMRP8/GevShpkDqU=;
	h=To:Subject:From:Date:From;
	b=YY7AnpB21u49yBKC3jV1wOPwCyz9Qwx/zR/Gw2WLtthv4wt4vMEuM/pLN1PD6qfvf
	 NjtUEf1nvx6Ir3apOqH6tNknfXKrjFt/2IpPTErfID/PvaYw4NBMXmPCB1zDtCv9c3
	 OVK+VWOP5Xil7FQxNReHaLUyFmBwJGNjMGTMuQO3a2XEbNG0BiolsxAU1+frwwmWAM
	 6WeBsek/wrpUCJBv/3up0TqaFcSM+cBKINzBnt9ETvM20GY9QSNFuu1xcjbLuk8VVl
	 eMbKmgI6TngzPrx3LOPOGxpQcmbOD7vJ60t8kpHp3PZxoq17K9ibc5GS98OYUDSMq9
	 qCTE66F3cBVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF5CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278679357.14401.1535991991451056481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cde234584bf97ab59dff9872b8766199b642044853e625075e095fd4c90113
Date: Mon, 10 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762786793
