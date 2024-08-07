Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B92B157A43
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723023954; cv=none; b=AoOeTMP38xLtXRqWXDmgtXCxWA0yAePcd08Qqel2Ir9xhgUVZDuMf1YhgqS7yZWTdGlcUIUL+fJUbp6jO7foXqE0eG0sSzPg6UBjndnvxGMCh4AE0kDLQ2arUajLREQ8peX8L3+/jj7tmlGaRsjBxuNeRiSmkr11bglwHNv4IcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723023954; c=relaxed/simple;
	bh=u1ZxWsJupeukPBn4svQuYFwG5l/u9wTj6AIPE9hbGAo=;
	h=To:Subject:From:Message-Id:Date; b=myeDJQDrQzYutzZ6G74QmQnqawuBL79anFlAYQ7i57nmor1zetGESx3QNF3pxs/J7DbM+k+hI5JwWwboBnxYNLshioa9HY1v9OQNPjyIrjR88BmxqzWTynERMLaH+zKjqmzIlyqdeHDPahJGY3h+rqhEhD0Hf8qu/uRb2elJ4PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQcVaISw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQcVaISw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD97C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723023953;
	bh=u1ZxWsJupeukPBn4svQuYFwG5l/u9wTj6AIPE9hbGAo=;
	h=To:Subject:From:Date:From;
	b=nQcVaISwCCYMyfUNUifEBpw5O+goOFe5HD5JLX0Q5P8cLNLYN6QneWsdHI4ugtyRv
	 coHPaq8wiYA72CU8bhSJk17phcqs2pap+LNN3sAgQStr6OvSnzVj8m2HK2y+Z1WNNL
	 bpmufSjw52JHyPHNyzOYR58rC2tyhXZZ0lZgGpbJDBfulADByhit+58EXnlW/fXjtk
	 xZZHF9YcfDenW8sGwzkvrUJnYeki1Kr6W9+QLB2WTPj6l4JkuSqD7oLpkioHf2gl++
	 EIaOEpOUnWs1fu1CG82WMDJI1pM/jzFo/xcQd1y0cSnVVAbjveERQtidPtNNnXV9KH
	 tFwNO6fYoIrqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97415C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302395360.27400.8915174900418858898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa14a8317119a333b9c907c032365744db6f1d736d0b41c63e4ad8256dacc23
Date: Wed, 07 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723023953
