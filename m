Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3879E23098E
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732229754; cv=none; b=DXVgC0jJdh4DVTM+bYc6HXqjexxSd4gEc7RSpuVBFIVysVsvoQLErxZVojYKR3WABe4y/r4/ncXMqpBFid1Y73FJZdgt+3MS2gGgUL78wBPIzbxO/zuvJr/Pd2iS5gIWHEXEdSO0HzzIaoYS6mrB8k1uW/hGhXi3UIYBCmPKX9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732229754; c=relaxed/simple;
	bh=JpqzgBouc2PZ1QwpohDv+Isbc/gxa79Hy6rC5KrdPJw=;
	h=To:Subject:From:Message-Id:Date; b=f3I268rN/k960ffVadOaPZL4sNtovqVSf8+ZnbZ+IQ/rSODnF0EiDy/VwwA+0WN5oaEoCAIkifaQfXRDtzT3a/DulFuPIaDMj+XLuBpI/HDMMfTFqsDiLeshsYo7DjDHjOXmqqwC93JEewcKnOM5VPMNa2UfBigbY4cDpSFkE88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k71fbyg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k71fbyg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AD6C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732229753;
	bh=JpqzgBouc2PZ1QwpohDv+Isbc/gxa79Hy6rC5KrdPJw=;
	h=To:Subject:From:Date:From;
	b=k71fbyg5aTrT4iECNsT3GfclK/dpwLNelp9rKis5tVWzAkbNB4Ig3bIvpKPJ6wVun
	 GHV1nrdTxVdEOePSW+ZMaEfc52J1uAfaaqnLrnbOkJ9OBMXePUvhHoNwQD2MLZqb6J
	 SH3VqVQiQ1bAXCJ0J5rN/41M+S3LsEH7yNy7usuROL7zvDUehpnlWiT5tQvXgNIwPG
	 FfeyX767CzxGEYciAbtq9mmjOEVNpHZ7qnQ2oxoRpH0vMinMPSr6RKuNI/dd/zTpy+
	 STp1iQD+tcNGyzeUNl6PY1YrK4HMsaKmJqy4r7uC59v/TNFPnHZkvSAP5r5EaSEyLX
	 odanzeTsSkQuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F52E65D00
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222975358.6071.3781743349832086265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3277e56dc0d9458ca9ad68afe176357cfab1eb8c92e310649182d4d3f3e6937
Date: Thu, 21 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732229753
