Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCEB6FA7
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707711497; cv=none; b=kG/btg0cELEukUzrKDqkRCBIDNC0sF3HfO+B8ihkVZ6v/eJQoxHE55Kznz9v/e4RUNiP2A6agmcPbuUCsDF/eGijhXOqWrDjL8Zcs+FE/4biaABm9t6bjLoSc5+2odd3bg0W1pKQQQAaP7BeG5IyE/zQa2eDk+4+2LdEWEVCDeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707711497; c=relaxed/simple;
	bh=K8PwHGMfupdflg3H82JhlIqi2wWwjUK76BdjUh04Ssc=;
	h=To:Subject:From:Message-Id:Date; b=dQR1d193JZLgH8VAcy58lp6S0RGjrcR5BBTHwzjh8ELAtE3B3qyMjP0wr5p5Rbv6fIRvsz7L56E3GWc9wX1lKPXNjA8xAACKEDJ0Mki9QsLCRvZymfb5DVtwFjcUMo/qfNWqwVTW9E8ppKu8bLYHP4kw1qSvPtiTURHgrLmX2VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUm+51q0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUm+51q0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAF5C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707711496;
	bh=K8PwHGMfupdflg3H82JhlIqi2wWwjUK76BdjUh04Ssc=;
	h=To:Subject:From:Date:From;
	b=aUm+51q0ajYYM51t1NsXws0StLi+mzmzyp5tzxYjOlbMCjnwJpoRlu0ssMhYCnznx
	 GxryVy0jX/+sZggchuZ/6+evUBTqyD7SpJNZozGUvVJCRC5rbcuvJHSyD6IqQF1xvz
	 o/Q33wy/GvQrMjkxe7QHQ5Mj6nwCRAZbN3Es7lT85T5l9TiW8A+7YEIUIDEq2HlLeh
	 6+7IABy/A4/ilnIFoPjtT0OZNY3QFCmBeUlXpQp9mKSms/e4p+gn1PVnVWwu5fQFAW
	 CC2IxXG6UEF6Sn4PAlB0VGR611oyiJ6/D3xFW0b3+Qd1P885k1yCuA/kYY7Mz44DAu
	 QuJTJr5nhiMgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620F4C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170771149638.27571.4726611947666336268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b870c02af93053aeb139b14bd44d5275b083d8a0da7664bf6292eb9355f17d
Date: Mon, 12 Feb 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707711496
