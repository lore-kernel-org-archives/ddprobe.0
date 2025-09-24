Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2672615C0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758679794; cv=none; b=FfvhgO8o0S7gfXLi4wJXrc6Z9wSGS+5XHU7HcWldtuFDEZTCx8EAP20mudc95vMGiNERQmBmYyqP/d2m6x86Tv2kx7prckAbV0by7iOcKkbtmpp7ud1TmgBNuZ6JGc1Eq4osDEiU4DK4p8TGDrnZ91p+B6jLj6v2/VyNj6vJzEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758679794; c=relaxed/simple;
	bh=JtvfktgLD4G4qj/qHQzRtymMoa4f235lLa1RLJcNnzc=;
	h=To:Subject:From:Message-Id:Date; b=M3qdXQdV6T46PmO3lvTpvX2+7cCmA4NP5c+y9Oud4TXsXiyconpjs+MS0Jo5SJtQqvgA0jZhGZiGq56Vxh1Nj6hqvguzkceEENdJGx4AVRvuVlCaxwcrDIoPzwUxNbTSxTme6ZDcaArlulB+Puejfq1RADIdDZT+3c3F7iBwZWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7KSRSmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7KSRSmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BF6C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758679793;
	bh=JtvfktgLD4G4qj/qHQzRtymMoa4f235lLa1RLJcNnzc=;
	h=To:Subject:From:Date:From;
	b=I7KSRSmIUjRwY5v8aDZwVH6oHFHjTY6XZUPZClMQsdOa2e9nsCgSFjlGYewrAziTA
	 e4V2iEY77A2ydE3liQHjHMg52IEfw9IDbI4lknguobPin/ek6chCRnP+KVPwAhQOPV
	 ohOuaGGO73Xn/3Any70Of0+EnA9uSQs0dIdtF+jXYBAVRGXPooYosKHeYcvPTZnH99
	 cFYsoU9N5X1EZos/Wd9sOu+527uVP8TI4rntoOMpRZYAg8WoH6XN6NrUvi9Zwthygh
	 NPxcMCCl6c7T5A3J93afXuVHujSXvO8frKR7/WiH15qgLunOpPipaQLChf2uHPrU8m
	 TNZ4lmbxKN/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19CCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867979357.18213.17684192124068020022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18003d1c5e0aaededd9917525661f33bc19183eb4a55a0dcb2058ec4eaa7675f
Date: Wed, 24 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758679793
