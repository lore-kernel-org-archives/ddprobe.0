Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6149A2D5415
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750848594; cv=none; b=stF3TSoGKScLpUwhxdlxZaD52tw7aEfWKukOFNHM7Tl0D6FF/p+MEejroal6TAjKYqpyzLtZFHnlRSH9DMx0MF3xqRMTfJbupuzxorYx0JSabRd+FJtQTkHb6f1ro1HkJkbaJT9YXmBFv5QYAlUK+v9KyfjeQG8GdozPUCa18f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750848594; c=relaxed/simple;
	bh=rJWA4LRC+fJkFyakAfBH4qLZbMcO3g/sTbsUWF3lWC0=;
	h=To:Subject:From:Message-Id:Date; b=F38oNnggyIrFx2lXfTRkT1IPJH4KJD7mpgN5qGGRxqGjsyIOc9k9FaJeU58QTmnI34nRBifdI1RfChKL4qwc2HJhvSREPHk5679TqrOh4ZkmREOJFbvEmj0AWtPHV7O5alhPdagc9q2E5gz4GRy9bUU/NkEn++3t5R8xwzThk3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7Q0bUZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7Q0bUZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E56C4CEFA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750848593;
	bh=rJWA4LRC+fJkFyakAfBH4qLZbMcO3g/sTbsUWF3lWC0=;
	h=To:Subject:From:Date:From;
	b=c7Q0bUZTnqfebxQ1Sj6M1+duq3gEtoYkm3dcbm45xCZnncDUYs0bUILegU51Zr7ss
	 3Pg7PPpyCxtqG4+qzIxbAtlq55jCz+4lexXSOZfM27vm6IIgwNPIwQuuNBFVgfygWa
	 MGfQDGpTQL5dXytyQi0AxSvXC6uhL+CnFeH9emWjhURDws9S+MaVRuTNYdvL+zNfh3
	 fYTa6E+gFfK0VI8oYhcFQbA4DygMfd33HtkNum+/xlryRwaJLNfpNsgXdedweyWW36
	 HzbzYNpACRJcMg2OkJMiCbaAvD3cYChsqsqOnSqrSumgiMH3mq2EO4YQoJz4RKXt9h
	 OTnncbGFhGwDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A5C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084859357.10780.16553551838858404267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2752216d5ebe2c9c1b7e2d2e0d656af1a4e02133d05a6a457a3024f94920d0d1
Date: Wed, 25 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750848593
