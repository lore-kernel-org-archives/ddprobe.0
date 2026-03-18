Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5E5314B6E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773867894; cv=none; b=AmGDAvGQBbtuhDLk9aoVvJVlikgSMEUgt0mtsGq6wFJjXUhBwn6ot2bFWBwzwJBXMsGO4+Whm2OGnXTO/xSAwmpv0xW8PV9AkKjifglXdR+4cO36pv+AbCzqFapUVIuo5D1u8DtIvgB7NYNcttRZs6pXLiLB3A9DrN41kIFhFUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773867894; c=relaxed/simple;
	bh=NCFAcvUkf4snynkie/x6FqGa/Q/tEFZWRXoE3oDfz08=;
	h=To:Subject:From:Message-Id:Date; b=gSRkKXsZWZ/Vdfphz3kj3kZ44WVqYgb7VYsOh2sQoG+7p9Akoz9q9vqNcm+Yvze9J5rxGI7EN00YQ3VCyYN0hgAd4AbpyhjPolLk3pNyHqq9jB2nLkRTwXqyTscVIkIltFLX67o3FO451ll4y39b0Uje+yLCpWPuCYL8bRPk4uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvgbUT/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvgbUT/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78BDC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773867893;
	bh=NCFAcvUkf4snynkie/x6FqGa/Q/tEFZWRXoE3oDfz08=;
	h=To:Subject:From:Date:From;
	b=cvgbUT/w2jGYN6DdWqzXTFxzolQdaf1fUXslHMNDAm/J9yWnb69ktclq10jQrirV4
	 NQ8TDGnX7LE1Q3kHzu/XZvC+nWELuWlteAP4zj6C3oEFgin8G4whzharrj5b9fpfN1
	 1/qI3Sf742YcqP3HVqAYslJKes45NoukKXS917ut2dRSi1dDDH7H1DV7l6ScpUK2t4
	 ZAltAiMA4PXFfM9ePHBtj/ZYE/f9b8RT+6R2NQbtE6S/gdMZqC2BJlcCxTOwrJmWUP
	 aKNguKQaj0G1LNAb1pKaAOwYjPed3ccV/T22FgXAOFToatcPZkKl4QVc+snXn7K8c9
	 a88ZOGYHUy51g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E90107761B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386789360.9207.11347776882776205543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9077d2d18b40b03df1070af08487be31afac8ae9c034143840adf6301f0bab5
Date: Wed, 18 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773867893
