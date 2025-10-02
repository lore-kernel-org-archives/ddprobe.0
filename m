Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD6F2673AF
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759423794; cv=none; b=knZoCzyG65tCm5lnjIlvgAfBm+hfR/ZM+4KAISBMc8cwE/jJJc/Y/xcdEkT8LWH+QYigOdIShDSnBgTWovRO9nkt4y5qjMsFdhLMwqhdw86J73nZjeG7j7DBJNZaFhjavGtLoBYfJ/IeYcmuPIaj35t+/TU4t5XIk7JOL3EWKk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759423794; c=relaxed/simple;
	bh=vQuHwBcZpVgaWOAIu1apGgJ9ev9JlTxA1HfQtvJnPB8=;
	h=To:Subject:From:Message-Id:Date; b=RYFnM71kqAUrtQbQ+HihvYF65MyTDX/NPXWalfd9yfOOUxTVRTpAbrhi0KVttcbtbq3dzqhC5ezURwwI2GwOTeAEEWGEou4XEmlTI0uGlh6yvD65HmNCH0a4hgltY/pu2T1cyNbtohDGW56oiBoIR7dEfP3znXz3+SKcGk/ch6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hb6G/Csc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hb6G/Csc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC490C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759423793;
	bh=vQuHwBcZpVgaWOAIu1apGgJ9ev9JlTxA1HfQtvJnPB8=;
	h=To:Subject:From:Date:From;
	b=Hb6G/CscH8TMXiaa+c/XwskvBRmCwrFr4qrbhQpnAH9xVQkxsATWiysz2lDxsDdk4
	 d+jgOeATy7XvyIc7CAzuZC4bcNN4P/G1/zIryshyXSOhQYiQ05ypJhKPdqapz092qP
	 Pf06qeyCOoa2rwqJibnneKuzDEoyc6rYFEu+a10sFtbQFmnJDQFvVkRoIJ7BNBYHZY
	 1F55z6f+H43q7GUeP17LJYq1mfMTeA0X+Nn7yhtZ/NhaShS0PMYh3dm/eIiGwMMrtZ
	 BrceRI/LUDGE3IvyTCiK6Fd3rJqJkgqVBGxEP/hz56WJPxUK2z84ayvEOlwqzOQ1g9
	 WnBpybWUniQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1EDCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942379362.19911.9338279679324729817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a0c2c4e85f8374d02701d3f485e66be2a0545ccfbf0919e3221e5c469e4f41
Date: Thu, 02 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759423793
