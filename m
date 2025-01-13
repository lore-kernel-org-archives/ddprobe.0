Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6F71CAA81
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736804154; cv=none; b=mLu/KNJIu3P6PaexsR3QdHBkSL4LksQ1yk4KzT1qZ48nk00EBzCD289fSOG59iMS13kXc7HjJMsAssJhd/uEDpBqKzHgpmQ6Oi/uZl2ZZQ5kDDsEC7FzWoPbDZBNRlauhWCrrdpPhfCfcGOsvx0d6j0MZIjHFBnrbyT/srcFaxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736804154; c=relaxed/simple;
	bh=M4UuyW0ZX8O/Tc4Fh14M3s29crfkO0a7QmZuDNjeHsM=;
	h=To:Subject:From:Message-Id:Date; b=YtWDJUOXF25NB6IMKrsXvACnJFbZjroLhEPYMytbXyJYx2+SEWIB6YqSfQdBjbjNlJ3zC8+rf4RkrW1MSQtRnfsudTB16VD4rspatXK95g1sR/81QG+Olu3fsO2+EDDojMXqZW44rqK33yRtCUXiBfOAg5nVz4UtyNDH92lGcNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usKy5jX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usKy5jX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8E1C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736804153;
	bh=M4UuyW0ZX8O/Tc4Fh14M3s29crfkO0a7QmZuDNjeHsM=;
	h=To:Subject:From:Date:From;
	b=usKy5jX5iJrZSYV/IAFCdXwh4EQxe1muO5q27AWfrWMTcwZW8dDBDyawAFGCVP0/0
	 DykX2VkPQfvEr7KbGaesku0GGAT4zYegwObHBkEhD8XaklGQwgBlop4+B+F9XGACai
	 o1SC63+Zt8EsRNS8SYENTUqVz5y27PUFwobmFQqMZH+gW2gPp8xLW0dbfgEv/aAg7P
	 +ybmDCX+mGertoObYvXA4K9NwcyZ+F2thJGkcxHWOSL7ascWH5vAN3y8v4EDWJXOEa
	 sX2E5stdF09NHCef0WPgUnYGTcGtH/ZePIHSSNe3GHQheZ51LwWqJcu4wLhSb4XAL4
	 g2g8buj55yXZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F0BC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680415361.1965.6037251080094388627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f6e0b2b075e081e142748dacfebe54af2aa364cf9bb6cd817f2682ea46376a
Date: Mon, 13 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736804153
