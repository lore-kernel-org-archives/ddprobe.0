Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29192246781
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754686794; cv=none; b=Gs/d0Uq/GwawP3E7kNOmd6dTSPjFO/76fV9uG+vBZ0p2ZO08jrUi+xxDBRJw7wK7ZEgRHYTuDjQBzMy0ASRPdGXLMedc1GOFgAATWGEZvaXqb7NH1EP6WAU/N5ddlzmDGUVnrlFuZcCZC3ISCMaoUYFNEuY9O/MBtSBTO7rXz+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754686794; c=relaxed/simple;
	bh=0Ug/fr9BkNIzN8vy/MYPgSEDApY5LSbW438ICa4w8Ks=;
	h=To:Subject:From:Message-Id:Date; b=NkRBvIbncl0ZruMhudpV9owpdQY1O1cLdDMoWWR5l5C4T6f0gyGUQlvNVocuxPZ8PplnONbXNo2q26Qj1ECCnuubkcIqUUcxmqjZbkuthbWj/3Sbc66e9baLjOufDNgPCPz3KWgLk1xRZrBENkQvpX8TddeQhpXQpF4bQrx+0u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIOqm0S9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIOqm0S9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2938C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754686793;
	bh=0Ug/fr9BkNIzN8vy/MYPgSEDApY5LSbW438ICa4w8Ks=;
	h=To:Subject:From:Date:From;
	b=kIOqm0S9xNruYzFRbvVcxrBXzoeMXqkrrHBbu+ygQtFNY8C0w+pW2MCe+taQnRTFx
	 YCHC5BD0hiXp1cBylMWtFgMyPwJaqzkKzmSP7Ai4gLn1EgyVvob6hWp+GfaHb4y9IO
	 L4Qapksjlm3bTs1G2Co/n0c97fOvECmVNKMFfvsQSukS1JnX0+h9D3qxZih2konyGe
	 4YuvICRkofPZHvicFAlxhPSdW3fqI54WAGyuP0g5bwoWbdYcb+DJ9xsI0mnE25uJ44
	 Z6DHOUgOKkFhTBE6+FqQ7TCwZ6EddukiKR0vmtdPO8VlJiwCdIwESYwpS8Bw6N/YNe
	 dm71XYqtG6qoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF62C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468679358.11754.8544092347680635730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa10ed446f5aca0ec2aff5e044b1cc2315e05816f39afc93b4d910422150496f
Date: Fri, 08 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754686793
