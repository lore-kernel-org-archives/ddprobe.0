Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217721B4132
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750387194; cv=none; b=LDKv5x1Dkyf94HBQC11LvcHPPWY5MnX3ODZJUNWPRYtzJrvxUwZD1bHsJ2vkyAR3y7SnhQBdFiX0HHcvecxl9tFg8DdueA9TOudvERnRCIdRcZUATNHhS8Bi3LQ3OOLcEPs2xA+WJqmalTGLQ2bCg1X7EaOUpDRq76TqzTAhSx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750387194; c=relaxed/simple;
	bh=bAxUwIU3mkJQ7YpjZFPZ+1EHSQekHbRSRCNkXjCx7Is=;
	h=To:Subject:From:Message-Id:Date; b=iTTiexIX311WFa0TOKr5n04Bg9M5Ki13O1L45T8dS5WsMVwzBxLKhW0lGiLQQ3NH1hSEy3nrXdDrGcbKN+1dRduAICj3q0ofdrI9pWA6NEZICnD8yjhLTYwYKgyWkiOylfV94b+yhMQLXkzT7mOacfvTG8g83831e4gj8DrqmsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEwXgjnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEwXgjnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEC0C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750387193;
	bh=bAxUwIU3mkJQ7YpjZFPZ+1EHSQekHbRSRCNkXjCx7Is=;
	h=To:Subject:From:Date:From;
	b=cEwXgjntbzzUcOEi3YxUb/Wln8mlspg6rF74aUdY0KdQdgQJ+83y+G5SjWq2OBYM0
	 PPxbBxwL/jsSjM/c5qqHQvl05mVvUcmPhKRk0K4wI4IEVZqXu6qaeknOJNYw+nzxO9
	 iCu7c05zHIIEzO9hZe0BYekhZKzPdz95DXibKo6pFpX5uTzjHIazN5OK6W/qg/uE7o
	 HDouG3vS+cuf0xYYztK9+ny7BhlcpA+Ntw3qWMKt68V7vVA5o/FBmM2YsutuSEcXGh
	 TpFmrdVawNFuvtWGfWDTrdWaWVW7eq1tMvSWKcufpVGsBJ3bj+X1HyDXBo7S3I4WJK
	 m5a/iI5Rh6nLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DDC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038719357.24040.5276435572938035829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35959ee0bff2cd3467ca75253c8f7c374f88efd238701297c516d87dbdb711df
Date: Fri, 20 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750387193
