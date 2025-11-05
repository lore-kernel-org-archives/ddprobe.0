Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAD8334366
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762365594; cv=none; b=LmtoKfNS5vIQ0SihfIuw36oFGqrzKvcltaKI2RotspX6g2kesCBR999cbrwD+kvYDoWsuFubdjPpZFkLyYYYb0q8UQBOmmfduOmdDbTpzUhC4uMJXBJSJXM67C7gaD0RlsXctfdj0Lsq/SGqnCOzfCHf30LzmcsAmGvkDYTCYrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762365594; c=relaxed/simple;
	bh=BMC9SDowEqz6+AzLD6or5MHRW4Z/HuihICyyoNfOhj0=;
	h=To:Subject:From:Message-Id:Date; b=bpzN5JmEuaStZLhMFMo2VAHm6cVokvMknfS9IlHiMzQUkzPi5w5FGR8sls4zsZXo7EYAjy0gPVblxOsWscEkSgqy1M5aVJ3VjNCFHyHKqjdfh0XI9uYTXbj8HL+j4M9wsP1VlM6aN+5RAcshwbJWZmEr2XbCfWZarcg8+5LkaIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1wMaLBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1wMaLBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C483C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762365593;
	bh=BMC9SDowEqz6+AzLD6or5MHRW4Z/HuihICyyoNfOhj0=;
	h=To:Subject:From:Date:From;
	b=N1wMaLBPQLPkox9LCoBq1QUdY7uCl4gNfEzfRJvsXmcXD3JI2FNLAnjAuMOxA1A4B
	 BESQr2GuB6bgeMwlkbcvCUuSbXQh2yVzken4Y8wIG3euGgkFTdjJRd4bsg3rI+rQYZ
	 OT1D6kPLifTCBOgM+3qlek1T381EhPwv1U3jRbCm7SNVvRseLwJeXnbzZ8n5Ef54RZ
	 Cph+P2BRRLV+h7n1S85J8Cx6MMy0/wyn+tPan2nKxnfUSs1MPhX74OxMmy8JbaIb+w
	 kzbZvC4nCdG4doq6nObwLCtYPxoPFolqj6h8fmXlDqHa25G+zpLI75Ef03/U1qlb+t
	 VlFGXjnXgAt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90501CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236559358.5666.6408617541321380977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321bb721cc153fba61fe2f5897dc8209b2796a949428bbde81c3cdde6507e3b4
Date: Wed, 05 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762365593
