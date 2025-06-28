Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214CA21D3D9
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751143195; cv=none; b=QUdghuPEnAAW73bQGOgFjF6ek+vmdP8HI07fGsISahmwDAn/yNfOhC4ijSNT9MgEHgj3AXtU+Sqz9+YHFAmFxyboT+rL6QgWokHxWDBmBRMSY2WNFrveqXdfdmw3j/pfoNDTzpEkL8wrM+Wu6V3nUZpzxLJ6G75sSrY5mZbu2GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751143195; c=relaxed/simple;
	bh=8QBScx2gCCyn9RHWPFNsOTT5LIWxVSLdabUDhKHnq/Q=;
	h=To:Subject:From:Message-Id:Date; b=EakiTnLdQb9EvAqIlzl8nUTlTYFC5LiqKZjL81iQoPtHhkrqZD2DWnCfLPBMEOGKwc+9ubKn041N8Isc052YWhNK9WKPvZaxUl1iYHAcxCe0etFvm+rKbcRepaTcxoBzjBK+cVthooPLvsLJPvC0vJgdDBxuQvSem3PPeSRSNMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U06aikg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U06aikg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D4C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751143193;
	bh=8QBScx2gCCyn9RHWPFNsOTT5LIWxVSLdabUDhKHnq/Q=;
	h=To:Subject:From:Date:From;
	b=U06aikg0QeOKUZ3BeWS2azzHgTysXhd5yFwn7OXZJQWy2NojSs9j/aW08gMbAgzaB
	 OMniWO98pfnkz+i03SxeDO5j+CzAzUwb8jv3weSgiG5GpsaUjzWRXirYdtdENO804m
	 c5F5U5vOeLSkCIDWAfEa4mzmJwwhx4uOcJUiTlRCFMfWDu+ypIrQiQRPVvrkctE1lx
	 2Wctpnor7TEcogyWaFZwagEIiVRRAyjkvxV7nmShf+LdxtiH7KbQMw8gxXqFKLPfWl
	 Ub/WobUahfY3rlKfvF3PRztYA9uh31dCYfiGTIs2fg1iDwK8PTrz7NkCUAjbbbn6Ur
	 csSXlawjjMr/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153FC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114319357.15483.7054962644950609521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e899b926043fc50a91947e650b62fbf8682d2e940c8f58b82c5e5586587c3a08
Date: Sat, 28 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751143193
