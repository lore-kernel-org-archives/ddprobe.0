Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E814A3875
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788360034; cv=none; b=r21AcPRSXQb1gCqiGkCxD83RMdmI52ZR5AWkgfd5tl9SpUxRhnDVJauGM8I1dNn+/PH2YWiDqpfIs8/yvyiG2Hdh1MEmHr4en1gwc17l3AICt0DISMt1+6J9eVHVXcltwUl+48us8jrGePeA7NfvbKpszgXjxZNCOnsRb/PA6jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788360034; c=relaxed/simple;
	bh=BojBnBvoL4upYm2eFtMdjDDqH3Y/odgWrAm+MxdEUNE=;
	h=To:Subject:From:Message-Id:Date; b=AvCSWXqfLMRXj6zMzqvz/CZ3bRJgL4WiAANyCPtHoMNYVEGBSC+3iCTxzD60Ly2UPrGsS8czkUwHNQZltyVFSqOKiDxSZl484WgSeA8b81QfkmHpUnWPK+jP7K6fWll1FBs4dD0C3j23inw/hYXWPTqv1XuvsJ9IfWd8dJTJ/cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltqEQZKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltqEQZKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB05C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788360033;
	bh=BojBnBvoL4upYm2eFtMdjDDqH3Y/odgWrAm+MxdEUNE=;
	h=To:Subject:From:Date:From;
	b=ltqEQZKwlHsGEfa6tv8kK9B/YTi2ionc6Qv5YZGaEbtmCeL1Ae2dNgBUriB8WTQr6
	 qA51VIs0FlqgWqjAIhbvUEmiqiep+UH7fXm85utHtCPm0Z8SSBsS9JdPoLD9Ub0xbh
	 tgmJa8MCs55XL8JCGx1ZifskhzYs6mzuxwLRDbgc5MemivbA1ifgn6dztwKGIaMrDO
	 i5lMeru8Oro2KwFqXUXwhkUsBa2gORCYnQg+ddFYiSgf0p3Yu4Z83i2JgVG2N59ZDV
	 rOxe/3x42THvoHE1O3ImH8VSwsr6XwXpN1/mDuwCfRrbeOwocucMuZmY3N3tIwG74b
	 HCugnqLnrpQ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7D1C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836003368.12390.15567879993487078089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522d78a39d3eafadf781b2fec1395e3fe2c0a6a05baf1cbb113969c409c37118
Date: Wed, 02 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788360033
