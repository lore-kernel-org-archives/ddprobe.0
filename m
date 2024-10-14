Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B59E571
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728935154; cv=none; b=TzMkzGKqct+xU9kXEXFyl2MymbBoQjK2+xKsIXZi28Bo69ABE1V4xD1qIPAkJh+bYQpt6m/zHSTyXxpAwuhtIe6ctmXwC+PoZi9JalFjum2t1NwVftRI4KtjNhWcMxHm7NS5Pw/xIYhIeIHJH5acr3/D/StVzb2BW+qzk3am0Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728935154; c=relaxed/simple;
	bh=XFqM34uLS7sA8UMVAZhKzta0aF5veUxtdmM2l0uBALc=;
	h=To:Subject:From:Message-Id:Date; b=Sw7uEG4edZOzFAUsE3pBuYyqOQTgc4wa8cc6YuIcDwOsvMIVXOoVbYXMpinzAFtdsCMhZDBI/yEI2343v56vpZ3ZRQn5YUcpNe4QKzpA1ziRJMTAuoanjvstZxBTxPrsnJx6hjoAcCV0eZwd1fE+GLTwHUdn8f19FZ9QNWu7aRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+jo6AIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+jo6AIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5087C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728935153;
	bh=XFqM34uLS7sA8UMVAZhKzta0aF5veUxtdmM2l0uBALc=;
	h=To:Subject:From:Date:From;
	b=V+jo6AIBcRyDS90BQwlJv+ltr27ImlZfDbbFEU3jwUPAJ5j71RTo4VOxge+7OHkUT
	 aK3reP6vBWvmj33cE1Qadhw5n39hRp0zhk9x/WWbPFeFQytHLeczvGokQQp/a+Wy8F
	 kRk5CRhzZbioMGh0t8KiwUE3Q7wfu9IxJhELmU1cJ5xD7HI2hn5KIxZy1Aly5FISz9
	 rKX+vse433LE/HEXZvEQF4q73LtE46RQPgOgAmmoO88Mgwd9wyG1e45VoFua1aEL7n
	 7G8X4uxGHtqJgjizZt0Mk5Mr7QZEa9X97zcWyzujLEkn98HrjITV7NFZiMf/sZdj8u
	 yKVEQxXKvp/Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBCED1813A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893515368.8501.10370335675336774235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b7a3a7f376c3ecba7eb53d8e951bd9d91367cb2cce4cda781f8a820dc346ab
Date: Mon, 14 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728935153
