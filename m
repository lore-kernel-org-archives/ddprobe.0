Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E503B19A1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773239093; cv=none; b=OVrHr5vuNQNxoB7au8M7YwN7byaM1uogr6mKGEc0Wt842R2ShBYuhc8c01UBoBSVM8ibDvTbEHHtct6XijbmWL+nZ2KMVyKSUvsOTfRIbZSDjLXDfV6cJI4PkoSPFT5O6yKyErjWTf3HEqFhjDi53iI6KmNm3meTRi6ol1aScME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773239093; c=relaxed/simple;
	bh=c0BaoEB3PjalKvx/CxpRiTfYn/lEzA/vxCEVXsm0rvo=;
	h=To:Subject:From:Message-Id:Date; b=TVB7YMw7M7alz1lfSyh7x7ee4KjNmAlox9wUtXDOxE1IMC2llQaDlqj5Jv+JJS1iKyUauH3epnoIadhbup3dhT2erpzmZthi3JURmgr6RxLaa1YEFnw17+sNQNPBBV3JPZw8TWOsgCPPp05ZQmKbE3GRp1GEUC40k/2hzOtwPEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMTAjXZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMTAjXZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E19C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773239093;
	bh=c0BaoEB3PjalKvx/CxpRiTfYn/lEzA/vxCEVXsm0rvo=;
	h=To:Subject:From:Date:From;
	b=KMTAjXZ1y8fQZq/XcbsuWvZ/OXxj0VjGTZddhq8/piUv43F4DNly4EBjlFDofkQOH
	 oQOqQvL3b7/5IRlAPGld6ArJUei4bKHD7BMl8smzCuvS20JMXpgva7UBzL1rPJ8lA3
	 RCqkB1csIGxum2z+cZlLSU2bOuLv/WvvucYZh58LApBJUI/P54MjbINsNQVJuAXrqd
	 MmCDoGngtXfAS10yWTEEhWghKmuCoZmBMPqh63Po5vjkNwOtBR6K4yMsP6VWKGL8gt
	 iAYIufni8GEA8AalkL0UuKnQhJIfwklXnxwPR7oJzlBIlUEy2RbKw/NAu3Fb9M1gZY
	 R/v3u4DHcQoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A10112583A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323909359.21950.8150754761150077581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86cd0c91320b17b65f5b4d1ce6cc083af7ba0596c9e8301f1a616c64c007716
Date: Wed, 11 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773239093
