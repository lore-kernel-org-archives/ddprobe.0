Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FA02F6565
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774496694; cv=none; b=bh88NLVvt74p075O1HEUPFHBT9MbDp3bzTr18Tc4v0OSBTMy8gaYYBqsto96EsEdGjryvybtg+RYOwM4lxi1Qn5WS0nifRtWgmtlBbJ/kxSEWEX6kpNKaB6YuuSVQ/nh8FqWIUveHeYF28sLgpXs5b+Vy66+XdWvZZo6N2mFP5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774496694; c=relaxed/simple;
	bh=KWc6jRvhlaktpxQsbyyLKkilmTIvg7HwkW2btyz65Kc=;
	h=To:Subject:From:Message-Id:Date; b=ripWPTUVe0PFTqA4BTChdadc9ZIwDZQZKIJKeYoek9MgKsjG+2KN1nlLJAwSt7Uzg4NNBRSsWe4GIjyPHUTKHa7jxlLUfYlmj5mD9/bDDBp48JqrpCqNUeFpci9XhXxy783XvVdeOzPguFzlaIpByZmf0LTbYunGXcZu1v5g3HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIvQN1gy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIvQN1gy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D10C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774496693;
	bh=KWc6jRvhlaktpxQsbyyLKkilmTIvg7HwkW2btyz65Kc=;
	h=To:Subject:From:Date:From;
	b=HIvQN1gyUKQMMq7MlXNP1n3J80GUdscbToyEHVhogBC9fi0mKzlJXx8beyKp83E6v
	 fledJmqHKzweOxdZAqt8BXy9YHlEmL4nPI5eISquaUk+dt/m3SallVn3szHtjaEqiI
	 23IvpBCXZx/IFu1lRIdhfvQ89KQHbw27wd36tJpg0umNnLGlSb61cxfmwXLo/sS+YJ
	 hReZOyl0Pe+h7Hjupu9P3nNzMZoWGKew08SbFcaGvyxnnUa2tijCMwDXCGQAovwNan
	 09eeQDC/hk5pTi29L5DECzmHlYD8ruVxMPTLogpPTCWiQbAngZwA+WkUTpCU/SvJf3
	 WJv+O7KZstNVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCA109E542
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449669358.30264.10634271167177317754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7423803fbc0b9a5a8651cb84699bdc10b022a10f14344e9f838ffc5e1a0d2fdb
Date: Thu, 26 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774496693
