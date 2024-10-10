Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1611C1AA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728562554; cv=none; b=P4VVim+2124RQzMqpGLt6phP9mReiPmKFrP2RyVUig9dwtJ2fQ46SFPv4PuB7k1/nA/F48jQfQIDnlW6DexHxK/qh8Mr3Pd6PRXsLwfUPZq5wH7e1bcBcQ68RgBivI+gd5LCrAkaXUlJfRmmEXUGCzlWeWEyTJzXb0wSng7MW6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728562554; c=relaxed/simple;
	bh=+Tu2942eW31/nDXPmk8d3zww0+vwEHZ0PhENbtqkVps=;
	h=To:Subject:From:Message-Id:Date; b=qNubIbKj4SHge5lqNd6OdMyDfmoZ5x39/MZmCFOcoG6mtCpPP9iAxUlpzLM81AHimJ4Fe+R79Bjieme61yClbnjxGXVVycACjOtk4UZ/WLcJidRJebE4obyYV/uYS2X+QUOxW4Mh0+H8PS/1N5bVhG9zo6IDvonNOtgaiZsWZ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNNcBtqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNNcBtqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC117C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728562553;
	bh=+Tu2942eW31/nDXPmk8d3zww0+vwEHZ0PhENbtqkVps=;
	h=To:Subject:From:Date:From;
	b=GNNcBtqsYCXbp2L9jD3tpIJcFOloitMgJzOUrccUjnTi44UiT/4tg/vPm3wV6WEep
	 vHekO4oSJdKLfdhVCePUmGwBel1S43BA4FfqXGsJg0ftfcxf+8+MqFhKwGnyo5hajj
	 AzdScgyaVRaA4J5YmVMTk25ZHkZia4pQ1s7dC1mRCtKnZfLpkKQnHCUPo/p1WdtbiQ
	 qLEOQvcennacINURcSP1l8UFVw7BtBwy/gETJJ33ztCaO1A0kBZzfH+9Yxj6WsiBlK
	 2bCKoELmYFQ7LrK3C2ZOv+zox9cFXBr/mojRu1L3mXIsUx07dqcDMaqMEAkx97p2wO
	 yiY4PUAolvObg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0B3CF11DF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856255363.12818.1010200119672343565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfc9b12c6db53922db0957c566fefe05d483907383888414ace18ee48576696
Date: Thu, 10 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728562553
