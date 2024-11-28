Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB8D195385
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732797354; cv=none; b=nYVx0ygCc4rcRYIaP3jR4P8OeLMCU6F777T4O4YQHrG6uHWtBoSyBMvN51hhHvS7leUtAaA1/kw+P+jm1f306+Sq16JydKMqOOI8+NNF9b/oHgRG6ne1fQpLkNi4q+dVpz0TuzFsLfon+viyA5gXTM3yjKEt/JcCTzV8BLULu5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732797354; c=relaxed/simple;
	bh=1EJ1gSkp8VpIPR2XZTmd7CLoDj/a7V8WpZAYKKGien8=;
	h=To:Subject:From:Message-Id:Date; b=T8wxQ1QfhKRLJjYpFZKqyJNoT7ZHBcVj4h3DoD3QRWh2dTtzZZGHyoqqKwovljnsNG9v+gHJNy1S/Wn2tRzr1L93ePZIYn8suR7dfwyi57mZoBEeZUXmItNSBzHI1LlkjvMSkM113WFoSn50p/EDhyMdSrsDGFWjv44p7bMtZYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/e6p0bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/e6p0bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBE4C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732797353;
	bh=1EJ1gSkp8VpIPR2XZTmd7CLoDj/a7V8WpZAYKKGien8=;
	h=To:Subject:From:Date:From;
	b=C/e6p0bjbPP5hzIrvE5uy42crzd8MKe3Lq9ZCozSpPdQE+iAWnjpkoySuMXLOY/G9
	 gw1FdYRImXmNoo32Ju7Pbx88w8walfSdKGgRIFh8oi2iRLe5qVl1eAtZ//R6e9gYBx
	 SJNPwyqXxxGvGhgYrpT0fovXI3lrZ3XmxohtcNijz7XaFWvQnT+4lnwIwVUsoLGTcl
	 GvQPZ3ipp8jKcnA2kdD9si1w77u/yr1a/hDXep9HvSuwo56RAwX7AiBeYvtR6hNavq
	 USlRTV4yN5DugnLGqZEbGwox9B22Dx1VpKIxO5KKvyTvTCAHYL4AChgwaKtZEh2yIZ
	 RdXrZTlotUrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7448D69104
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279735366.22014.11198873747598771596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b04af22af7f7981f5dcef66ab6ea4e81f9170675d4893fdfe418dc9b35ce9b0
Date: Thu, 28 Nov 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732797353
