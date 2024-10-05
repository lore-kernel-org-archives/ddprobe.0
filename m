Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42263231CA7
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728159354; cv=none; b=S0RfWD03Wrfdcto8zh7Fv5HJWD8+IW0pLiy2lQVo3hVyyclSP32lBUSXffmm6KV7MGOkOrFKoTIWGMUf5ZVVybPor8jrOXInIZuWT+MJtUJ6MOW50bypqibDeeP7A3WFJBRJxCTi3SM/hJqeeWlHgy3J+EHDYvBO3c/GxckPf/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728159354; c=relaxed/simple;
	bh=vCAGHL5Mpho9aflM3BZmn8YVpiKUoY6A/NUxUz9bDvg=;
	h=To:Subject:From:Message-Id:Date; b=KML/02zPPrm1Rpo2gUiVjF1oCYn+ksWW30YhogL0Sfzjg3s7xXn7wD/Cya5uVt6QZSyDTuOcUAx5gUO9nfvRIf1rrxV3S+opFBUBna7ZQoHkhZo8NTFHiwxf6sP0uNlybGnf8ghwULIx3F9WG21I3neKgNoW5eZ0uKAnSuoQXMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyCxXMxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyCxXMxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B43C4CECC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728159353;
	bh=vCAGHL5Mpho9aflM3BZmn8YVpiKUoY6A/NUxUz9bDvg=;
	h=To:Subject:From:Date:From;
	b=dyCxXMxierUE9HeUA7770HOxYkVAXTxrHu4XaC/YGL0bLmYb1ktWTQYZkr9rRDTSX
	 SA01ZXup49tloow5gqRTRBKv0FrVklMdgyAiw2fZ+qB5b2evvB4m1/zDnyoMHttSuL
	 2QAhc5kUZ8kz+87lCEddAjGHdlOKjE/DYqRV/agkLOijp3FLl9SUzRsxa2I2zCDd6v
	 XwqK9En1dXWJ5+A8Rw6xEmvJiQ4rKxv2XHZYay1JI9SB3FJf2zEFNLe2NEVAnmE7D3
	 z8WUP0AXtWWSzdlFnDvpHj1p038kOuh2SxZyPOTC1zMKRk4JTSzFsHLATtiVzJP+0r
	 P4u9vV7vILNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97252CFB42B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172815935360.29782.13478383185485431127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ac9802a493088d28ec4be8ca29075c65daa66c4cd4e82aaf5fb0347476bf03
Date: Sat, 05 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728159353
