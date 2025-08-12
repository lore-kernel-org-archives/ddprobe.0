Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4301DF27F
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754971194; cv=none; b=ZHVSDxNt156UnG4MVkl1+Qin8moE27Pf7bMHMpV/nOBVAEn3FLo3Q98E6mTuoYQR++1T6XWymaodzLyXGNDlXnDHGy+wWJhxyy1+j7c1Y6qwjSnZ7rdG7IUilhloW5yjUBwspe8PN1a3qkIXyYhCBd3JgKfHqG3YYsrfMsexJTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754971194; c=relaxed/simple;
	bh=8PyhRGIxCsQWTOrBTADCifoo46pfxexGBU7CQlf8VBo=;
	h=To:Subject:From:Message-Id:Date; b=L0EnC5jn4hFlo7kYsJczrDXlWZWHgThFHx4gcbMKBBRyyVA0TFNOUE1xqVJuM7NLyrhOHFsOftPfYXK43084gf0eJztpxJ9VLcQ6/WUWKzQTn8GBjaP5qqRdrbK4kI3FtkYLX1vY0AyBCD2wXtTqJo47fXzJQOwHNkodFdYvpjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDJJIS+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDJJIS+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E13FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754971193;
	bh=8PyhRGIxCsQWTOrBTADCifoo46pfxexGBU7CQlf8VBo=;
	h=To:Subject:From:Date:From;
	b=iDJJIS+bjLsNcGjfUbdkK/ZqFNIbEDq0EvF8OIAEifJtpdiUlIeTcthqDdaq6wZdJ
	 Sxmm/eBiJKb5fNPe+NnHRGkezk90wQ5aBl3dY4XS5hz4aqnyp+RA8XHCt7brcly40j
	 RkkShB9HvW1aTaMVGziB9FFLRiOp8I29PHgRsjoleU1PyHqoSxjHoW3+/GWriichp7
	 Wl1/ezyJTfVnX15oEgIBpXUEw2gslW/w3LX8sADbjK99TATUrHyRXgRGxbC3KfRETB
	 2BY3tj/I8UXLhZfymb9wYkuhUhWDM6M+hyYeQ8Go/vX366hdNS72Vo2EOi903aHhTE
	 6YdCNvanufuFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F3CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497119358.5360.9619398527842929746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a031684f755e9df9d873697e7d7b80b14bcc24600c461c50f5a68866403f673e
Date: Tue, 12 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754971193
