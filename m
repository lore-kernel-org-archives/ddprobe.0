Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BEE36B90C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787285434; cv=none; b=kfe7yuf2lWu7VERjDM/d3S2M0wkHuvWYpXWksfLr3ZDmaCKyzdIL7jCzppg7J9Z/ATisoD/baFqtZwi6ojRu2MQpJh7ZDsqvCZ8Ah+huTO5IuxZpEQRiI1UR71dWWf4WaHRssvLrV6BfOrcgpuO9qUayrZ3xBarU7HCydyv2kcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787285434; c=relaxed/simple;
	bh=FzLwraXs7n2m92LU2UcVk0Z3VWOxXcW2e1VfHfmdDQQ=;
	h=To:Subject:From:Message-Id:Date; b=qTqSHex6+BVlGWPHw667lbeFVhpGYblv6yFc2GB2kgkAY1U48Nz5qdYVUyeAMvNnyooZ7fZGa7lcZPXXPakIVU2cjRWYwNv0uHA5ny/1goRnS4cXYJLOOT+NkcJQuLci2zZ8/SOJy/oD7U9152YmxVqRyKFqDmD8/eY1Og5QQ44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nded2gNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nded2gNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D260DC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787285433;
	bh=FzLwraXs7n2m92LU2UcVk0Z3VWOxXcW2e1VfHfmdDQQ=;
	h=To:Subject:From:Date:From;
	b=Nded2gNjAeOpxSCz89DxKyx/vDMOxgXr4aastz5aeOMbtohKy1XwQvV4iq4xQzXtT
	 ibs5vqIBchYmw9u/M8G7NQylZ+fCGowUxgm0RN3ZtGBtGTGQqPMn1xhRIqnwR0C7Sb
	 AR0y9yHYcRBPg5hLHrGtJk99roKsP1psX5YCFCMrcYRiRjRdk6LizpD89ute2xXQRC
	 /RYcnde3hgX1yCj5gRybYVCYV8GBaTW3ktBR4ZZjR+qrgm0nlfUKmIwHMRZRYO4cVf
	 yU+P7nC1JhCdXj8w+pHyX7ugDJD3m3Fw15P5ivrk4mpZBv2pPvqW6m8ueBWF/z1nhV
	 KZvEBImbd3pVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3E3C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728543370.13598.6303624905169322910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93e22a6feca7a1d38ebbd87981def8c363f6f9feaa53aec302164855376bfbd
Date: Fri, 21 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787285433
