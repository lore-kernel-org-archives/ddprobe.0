Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDB11991D4
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775986654; cv=none; b=oVOesWqL7P6n2Rk9RdmuRkqvmws1suo2F00+WPwAqlPx7a6z9AnsN7FbTva9h5efisLr9S9W35FGm6ZO+jRChWQinywh2i2tCk346etF9X8p5o/x4OHuwR+IbEKJcuXz1uE7+59/DNaKczu29vZUZNtPjIxSr5ekN6X2lbgUGUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775986654; c=relaxed/simple;
	bh=gQb/LODfxeCkgOJBTbNf3gkVsIWocur7acL71vW+hu8=;
	h=To:Subject:From:Message-Id:Date; b=ho2x7NgrgoxpPF5+h2CqcKqJ39BRd1lP7ZiycE6H4N7ocOrJ2S2yJkRIU82AJQQiBZZDt8nFGOGsy3uHTDYoqTqUiSKQDv6YwjFbG4Vhn1gd9vWG07TRSJ2QKVBSqRhEdzdue2Ec8BSLrIL5v5TO9gD5tbIFig13GK/IRgteGRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSjAFbUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSjAFbUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9A4C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775986653;
	bh=gQb/LODfxeCkgOJBTbNf3gkVsIWocur7acL71vW+hu8=;
	h=To:Subject:From:Date:From;
	b=BSjAFbUOtNaIc2qEBmGcEu40djX82v4cGp5PkgTUYCmacEPQsnTkAMn/E/X4+OBx4
	 I9MtGZkH2UMJx21OusB7wXozUmBAmAR/XJwMs+hLGZJYC2V1gsoKVGyI3sU6Dx9pb8
	 KlB02wRAYMprTgEOKBp5zPqqpOXnoDJlnJHYdclVGyFdI8HiiD03PlyjDzyQ7/XpYz
	 Q8YkaRVfYum1e4Xw7GTzILFazy8x2JIXOVvQWmusOvcnz+XcTPF6xPWP56bL4rDNNr
	 DAqhJl/hoaPVi4f/7I5puaCa7nOwbMUvsD+YeUMrt01HBf5aPqsld62fKtgci2nWWV
	 wO85BRvXoe7gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5BE6400A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598665368.7222.2297445756970922477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd42544955532733e4a4b9e1c33a2340dd7d3a5d714c191b2890348eaa694499
Date: Sun, 12 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775986653
