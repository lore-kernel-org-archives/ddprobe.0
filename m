Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D27928F4
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753324194; cv=none; b=VDhNhjlmEfwyd/b4ARmSwtCu/8Elqcszl3ZNQr+7jNLEXBMoZPvQVoPK1bxYqxeIR3/Fuw3Ehf5KtLqgaRJLz8Y3omYUGdKej8KFQo9Q9QN2uAwCDIwDvZnHCvFEF4a2XrkIL2bEvWsi3ibPi+p8WwObB48oCZHCaqGiLOEvxwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753324194; c=relaxed/simple;
	bh=n9ucXj3xxkHjFku+oCXBDHL1eSfjTqoNwy5irqT5okc=;
	h=To:Subject:From:Message-Id:Date; b=monxT1Op1p5HOXuPS1jiws5tfFZuy8n56CvBTTckyKqTCFn0mYy82dKeIGjpUpBQwCTIil8StB26QyIMEzZ2PfUREm/ohqX5k+diHQLONuWW+t9XH9JsfGgcykWoCHBk8bpDHakIBV3zRqoozKa6qPmqhLkVuJ8guG2KDuQGmjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpiKT4w/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpiKT4w/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF1EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753324193;
	bh=n9ucXj3xxkHjFku+oCXBDHL1eSfjTqoNwy5irqT5okc=;
	h=To:Subject:From:Date:From;
	b=gpiKT4w/oRTqsR3s6zJm/fT740yUq8cWEACd5ctwb9g9Mz+VfhhE9SbZyvTzDfGN9
	 u1oHVuQoPVnE7w97LuzYBVT5W3hiagfuvHcf0z5vZtnifCfL+oG5mlovp/W/af6MkE
	 iuODpIFVFN64PlMQn32APMGBHavXnzwZu54rORnqGMMQEz2SWrpXVxnFC4cXPR4AGR
	 ARAmy+2QEMNiWLApIyshrIyafnVKwOR8jBuoZGBf/oCaKzF5AH7eFb8v5ixPk9dv4L
	 GFDmr9Q04VAfXGuLaWjU80yGk6wgSNMiNTQU9hJnONtX33L7LvCGHlM1JCdHo1BKlh
	 G0yAZKm9E8YOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90534C83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332419358.4919.12843878966435174514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ed6aa5d19846c5bfed1a86b3b7d927a288c163938fdabb6188ae88f08608a1
Date: Thu, 24 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753324193
