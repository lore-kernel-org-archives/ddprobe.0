Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E04014B078
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719072743; cv=none; b=Vi/t/yoAQvWxnkvU0c+u/3NeAf6gNbTco/UN22QwkUJdswUViWVzLrxFfgyOMjiNkWJ9DqllrAHgIh/abyorzt/ldX/wJO5gKFcQwTTMEo+dDrj1HZ+Z80k9iOPXK6Z4vCePTIvXeaBoteMHOOexZihbawHirBdHirx51pumP5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719072743; c=relaxed/simple;
	bh=m/yPTk0TgVPyJ3j2vljAzwz8d/AZzwyQaMvBsoWwDww=;
	h=To:Subject:From:Message-Id:Date; b=hAKmyvx5oz4nP8tDd8pxWkJKxa37jjghoJ+PtUFxW/HMKhfrRHfTlfcYX2cb2VKBPN/BU/lZxFIUYv46pqwXN5TS8yrU0cx0oWTyD2M8Xyo4RbX+2NsE66aMEls1NjPuRdJTWEnpaKeOkJnu59gwv6QASIiw8EIWxspGS80cARg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Df95kdCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Df95kdCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF5DC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719072742;
	bh=m/yPTk0TgVPyJ3j2vljAzwz8d/AZzwyQaMvBsoWwDww=;
	h=To:Subject:From:Date:From;
	b=Df95kdCtXlU1F4/K46KRfJkztZZBuufW3u7M10hlORo99/dIbMAdPEX8JQcgq+EVA
	 kV08Nh9PUXdLWI7rdzWATc9xS2/UJSBw9A4ArzjRJr859v56qPoTKfqSLjHl/0qnXX
	 p6PYj1aaqCL9y6UW/VA4rKBW3SnG0gEAIAQw89B9wb0AJWqW4gLl3txj+vopVUhzSK
	 jOIJbUyueBHibji928wLVLN6PbHKUZjH2pYqW9x+Loqb/Vn/kqr7+UIJdx4XHfxF6v
	 mwGc/E8l/40XAhGhg9YpMAkLXyJbIXlFqj6wGzMNAunoEPgXMNl0Wr0xK6dcKaNeMH
	 mQcrdNnHxLNhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B4BC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907274280.9803.17641260479325731226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee7d615a8cfeb865dbc9f514f45db1c8c4fbd8764768245c6ddb2cf8cef504b
Date: Sat, 22 Jun 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719072742
