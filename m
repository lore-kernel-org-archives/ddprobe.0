Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F7815530C
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752884994; cv=none; b=uKasHMSNykvtDK0ozbkcUtMJVN0mHS8oAD+z4IuSIZ2B7TqSIVkJVfwvuxazL1bOFJy44TywblYKhslXRTP3dLINa6MHgUST7PFOyOGvo4voqrf0/ium2S61qGqWtRFC04D7/1dAgqmHe9/AFGh6dTzDOi3pielbnnvJgspXm6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752884994; c=relaxed/simple;
	bh=EZ5TMByEOZjF3td5/eCdAYq2GaN0Qn4XNMaNUtJSi1o=;
	h=To:Subject:From:Message-Id:Date; b=Hj9ea5uxM/TgRsUJCJmyNMktALerHGnrLmDOe6lwKj/Il9QJNhnY39J8IxXIRQhFr8sQXOqJ0wkmjMtTACYUk941lQBKKovBtrM/WAXKvBIQPK772vGMf4sBrcEGBW78pY27ajRpk77hwbCJSZDHLvEvt9WHsjNZVbT76wDz1ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b46qC9qC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b46qC9qC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C7CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752884993;
	bh=EZ5TMByEOZjF3td5/eCdAYq2GaN0Qn4XNMaNUtJSi1o=;
	h=To:Subject:From:Date:From;
	b=b46qC9qCOvBXx6Bcmxz7E2/c/AfL/U1miXYIYNAXrLNGDj5BtbJohnllJIGKDDFgj
	 jQsgXuU18MY0cET2961vkuSEkC6JguJjkfCebT/nnGD3ZLuhfo3B6C+lfFEJmbmG4F
	 9GKC5s28UpEPI5ygkEx9Gr9RLHfK8J+hOzwiqudraRP3YGUIc81lJFFgyCsOrPlpff
	 aEwAhR8mezgmQfAVGvmo6uhZhhcTiNo/a3zNpYIePBEPa/Ns476TOFaPXgVTOdlTho
	 2KJCeV1rX/2JciqhiKlM/qQPks2tTMm71p+nADjomPhOeln68h7SWgnDqAxHEDSaED
	 LWDc2zX/bswHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98950C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288499359.7372.11538539012627907028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84328d6464cd754e21eda6223b648be227ae9061c2cdc06ac69c2079cd630608
Date: Sat, 19 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752884993
