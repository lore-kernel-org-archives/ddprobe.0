Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09FA363C58
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773222293; cv=none; b=OvmHYiv9rbMmYbY4OGoFfXywtlNCIQ6hDPSCgCX0nbtrIOTKzEBNvZ4kJgE56DHPkqOwV6rk1DX4MfgmnLI0H4JcVvy09RIjmBGx031DnxCqAvS5wR5jVuWEjqgXW4Lha17q04AF5asS7IB2sYV1KPleCOC1xGVztdUnPaOn6Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773222293; c=relaxed/simple;
	bh=XOJ6DJnQgM2M2OduomXJ1oKRqbXIe6QQKbCSE6QLPwc=;
	h=To:Subject:From:Message-Id:Date; b=bDXGtAHmZ7+hBfMLRa8UkFXHwX2kkhh7AuU0aR+nS2MQK2BitggWVmTlo25+8HZpTe26AereD3GSbG+quGpu/mT17aT5Q3WlVQM1QRyIGt47SRkNDRiN0Y4Hxj369cnl4H6idpaRB4na7LE5JEuLPPvUK98orFJrmcScXk098jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTrss0Uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTrss0Uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4756C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773222293;
	bh=XOJ6DJnQgM2M2OduomXJ1oKRqbXIe6QQKbCSE6QLPwc=;
	h=To:Subject:From:Date:From;
	b=cTrss0UfCwtlN8i3xtsjOWnWAzZyupDfd8z6pL6km1l/As4oYCZd3G7Uw3EuPywnO
	 yP11RJJeannZtucEowRg+H0kxrrcJpJPJHerfnuXxsEZ75z5z1bHj21ZNBpbYlkCdy
	 mIQgKVOyR1okjo8jip6SckoWb2D5VEkJJuB3tH+HIVhZeKI/E0OtaytsFc2UgzCDRS
	 fgU7A9KEP5FFllUWXSiNmndcktNOTGV/Fbc6ZUcpBFTX5sqKWKU/n3D3ZgT1kMMFxy
	 Bcwtnrky87SEc3e2S7T8UiDRCwnjxxy8lYvEb/VNCNTW0LraQvUX4luop8kCeTuBaB
	 Gadv7eZj/J2bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96126104951F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322229359.20994.2254774621807475218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0c4eb1b8763cff75be86c0e6750a220da83da7dcab0c22e939556bcc669e60
Date: Wed, 11 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773222293
