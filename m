Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FE88BE3
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705453697; cv=none; b=RoMtW+FknvUyBT9U9hbiJ3f4aUUhY3eE4er1AjLHfhbGHpfWJfYpCyhMuiAvYDhqNfncts/4BNRKqZfbsneFTXpb6xKmOM55nzr1QaTOqFZH4wAqYvgTB47GymhoEaWDjJcyeYVlO4f743yaxqKflR/Y+ryMuZ4VEM3mm24mbOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705453697; c=relaxed/simple;
	bh=WlBky54Ws9FUFg70ONaebs2ZCHrgMzLLrj7P8b8oe48=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=ZdND8xPscWzwcGK/1OTSRvPgeEbhCLAsxZrYABxq5CIHR80FrPlbP/MLAkW3cfFTXNLbUXkM+KTp0gKWtQiCJ0jRjeDxBBgSrsMUhPRMIk7eElIEBkfejgrz7C9RSx3aPFQRzn/fLttoRkqHx/sTJk5gGLAYMAG4/tLe7Sbb9EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP3yeavY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP3yeavY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8E5C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705453696;
	bh=WlBky54Ws9FUFg70ONaebs2ZCHrgMzLLrj7P8b8oe48=;
	h=To:Subject:From:Date:From;
	b=RP3yeavYplBduQIe3/LwE5ClT5O7qncC5CQh5y7V+FlAOUIO2CrMfeVlgo8+pSXUe
	 DR0KB99qtngb11c2MqnigdOxeS9OE2r6+fkhX8GYMl/4U6nW1eDTu9Ux2+rx4W1qbG
	 z9NXFpa5WWw6oRXuDqo45JK7xPagVl3Kl8whQn/NH3sj4u4D+lhpNAUJuY2NGqClzx
	 mZeZssj55SbyfCfR5HU5+nodz0+T6OymY5hvQe+UioKrGRxiqQuz+sn6+7/lOjYdYD
	 nDtqAptvGbonKMBDL9msOc7hZnInj8+rGdpJqCv49q+e5fkYMstmR1fmvRgRzjASjs
	 dovdBKiCK7U2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648B9C47077
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170545369637.16814.6312582976009769127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604b57f99929bd0c1e538dee907a38ce8756386f2af8fe3ba1ceea352a08271a
Date: Wed, 17 Jan 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705453696
