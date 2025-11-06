Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B2D2C3258
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762452594; cv=none; b=BgCxyF246h4glVsE+M+Ue61oFkx8mQKhjVZ8yBtEEI/09q3INo3G5ntEOsy8tSkbnAZSZ8zR10AAUBTKkbVUQaoyfPQ9B2wbSttNXJ46abQEU9Z6OTMqJL4xSB+yTvxjRoIFhaUywDr1xZfHhEPo2eCxQFLa6W1tp6VnOp6pe+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762452594; c=relaxed/simple;
	bh=n1eRGDTOMd9Ka8gvcbGbMYt7cdlxO5y/tSsKMrzFQv0=;
	h=To:Subject:From:Message-Id:Date; b=jiJm0/JtRdtFvKKmqdCqarTE56fC+zmkiJJ1qfnQE1riob4mJ+x34gwqiWcTz3nQWLz1Qz7bqe9KNB37aUK9MjcoVet9NWs+UDUrMaOxf8ckMQYDc8/Y72mHzI1GpFvj1GNNQhXh7AemBcoVXtfWR7dM8BAaE9N7EV5cwUTGb6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsdPuFdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsdPuFdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF096C116B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762452593;
	bh=n1eRGDTOMd9Ka8gvcbGbMYt7cdlxO5y/tSsKMrzFQv0=;
	h=To:Subject:From:Date:From;
	b=RsdPuFdy52a/GY20vsgzqfzLJkQUicQRpWYSVp4hr7m5r894KY9YjWItVNHCi4ZkJ
	 6aCriBjoEksX5sHVAQDqh7cjfcV4iQQwiE5yc/swkMWZwvOcPLiUg+GrlEnpw1lyr3
	 e+faOl17vIueudTgnWSvVx+zv0lqkzcG/SHSdtlNEi3EocjHGlC1F01EWe33UDqAcU
	 cXOZtmM6nc3rtHeIUn20X3KNhG+r5nrdIrEJ1NjYfLUA5wax6spbiuiG0af5HIe62u
	 kw+bYqoSZCeqRBqTvfb3rrXpjgqN8FF9UpDplVsnAwIbub0VfM9hD4fVDXsAgqot80
	 TU2LX1u5/rz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF6ECCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245259358.9903.14209025649985166720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e468d08306383d130b7022b9987db5f24da9714d5803cd9715307e233763997b
Date: Thu, 06 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762452593
