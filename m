Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6AA139D0A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748407794; cv=none; b=iQn21sEHZfYjlGOGIjf929qNSa451sMhVxbLGenH7nlZB/vsIEwIr1bF9Dj8JPiZ0cI1OYAPGCvV3Dv/xEDMmEIuvIsPjoVc8IWMwVWecY4Db7MYq9NRnl/DCQ/8WeN4ofZijmZxceODHE3qxULP2+nOJ+KrXDRerwBID32c0jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748407794; c=relaxed/simple;
	bh=mVcD/P900NUFg41MwL/ESd9IlTD6KDZM44xojjlWSbM=;
	h=To:Subject:From:Message-Id:Date; b=OY1OhbKpAsX9UJ+ZGofdYOcJlhwvDs74aYlQYiuIH1GA9JqmlqWT9wyiF+sQkADh3GeEipajxOlXUdo3fQIgaAuoWg3hm4XUTBBsG+TMcXkh5N57jTYx0EWRH4vX2odLhZB5iCCIhV/zvsMTiJCWiPTsbYKiNTTXZ8Nkdb+VWlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wg8IwE4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wg8IwE4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA4EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748407793;
	bh=mVcD/P900NUFg41MwL/ESd9IlTD6KDZM44xojjlWSbM=;
	h=To:Subject:From:Date:From;
	b=Wg8IwE4k3p9Vxmz5Lm0PIIB1q20W4Zv6RFNWOBg8Z2/6e8iFStnPdrKVuJxakTdRm
	 qTb3+lZ0J1D1GteyPRNM1T9HnbIiVDh39SmtyZgGq/atIkZsC2dOFfPJKkKuI9xXve
	 4OZNIcMoaSnY4jGNfOLvwFuCz8rwtjauAXK+OZyqAHZjZylDa2Wv2Uixlrsrh9DpV3
	 XOhU3f/olSjOjmne0EajUDJ/vY3sCIW3Ye4pRjD9Svu21Va819spRx8GtSlHug9XxL
	 xubpLGXcZzRovj8a6OpmLebIZNqk1PKiDeAp4WJZk6ln6dlJ6eW5pu8ZoIQJ9GPkcM
	 ttJhSbWM3ACfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981F1C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840779361.26728.2518819850091683045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43095b10817035be0e5ff9f9328d7b9c2052deeaafd0179359308f5767e45df1
Date: Wed, 28 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748407793
