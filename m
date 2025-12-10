Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274361DFF7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765369974; cv=none; b=GiXmrzHsshejO9YTavjrJ1perotdMyyIjy6R+D2ddoCkiN0eP2STtIIpAQeZo8+m2X6sT8Q+W2JX2NGe/4+Uozd2Uzl8n9aXpckb8mXYemDjee2I4xJ2xMAxkY7NsA63dYcQgjEcdt8EvyTpYJMM7zerDeZ/qtYvIpakVxR5KgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765369974; c=relaxed/simple;
	bh=zYjpv9lIVBxC1XRy/9v4dEbE1ccgJ54QBOPiE4fhWmE=;
	h=To:Subject:From:Message-Id:Date; b=MwfljHsXZ0jo4Vug32q0mJ5X6JnI9IyDpiJuZpkG425BdeIfBZe8DgUoS3jub/9Kd1P/FWJhjrqRJMEuxAvKI7MAcU1gVGqXroVbNvj9hNEclvrzdWKsrZLnOdXo5ye68TepFW6SXTnVtHb1/SNBhwgeXLF2BmzyNINqN9AdClE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOa9dm7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOa9dm7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CAAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765369973;
	bh=zYjpv9lIVBxC1XRy/9v4dEbE1ccgJ54QBOPiE4fhWmE=;
	h=To:Subject:From:Date:From;
	b=OOa9dm7yhwBLCfJkDY/FATTV2nUyx0poUXB2c8h6aLqLhOKXbhMOyBxzjaULHpM8d
	 zVItl0E/8BerwWDzB/4TW++sqiy8ozUkeG49gZEufG8Lg3wnmX0NjJiZGMORqb7Pls
	 YKGSrChbsrvt7MGHBUsi61aZWOvs+KthiWlj043yvfVNwQLlpQUHtXNocSHI06eHge
	 uav3KEuFgtOagAZ1tftWScPgoBVSoONS8vXrBONEWjywAdBR4SuD5rsDQPXwfsg6mZ
	 VdLXryK3sLy2mLNMJ11Ed2/jS3YGvTibh1yLgxIpOBLlKHTFQuApJyO3ShG0Uf0642
	 sdGe+m6QedsLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9312ED3C537
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536997359.2177.4347777305082713260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d63110f7c4ee08306ff810af22f869471872ab3fb6950ca997b51889a192e7
Date: Wed, 10 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765369973
