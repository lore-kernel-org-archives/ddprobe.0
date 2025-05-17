Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5224B1E40
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747494594; cv=none; b=s7UyFaLkYcGevEDvIMKH33VTlpvzKKugG2OIeeLCDrMMDOQPbRoBowslngRkaaOcl0gkoJUaSEECsyfK5f5V6OgHu7SEGsuSwN+1DWFy6nS5zBfsboksZWKzhiAb7Mqe+3rJvMHxvI0PCyCRdAFKELrZVKfCM5O7QAx6UCE65Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747494594; c=relaxed/simple;
	bh=KVo3o4DdGLD8f1k5LJqu0llZuPRKbRkMmLrOyW/43OQ=;
	h=To:Subject:From:Message-Id:Date; b=INEQwPVsSuRByYeNS9IMkwU83HzBC2OGBHcib79hhPV3MrrDCV7rMF8C0lhWMop/icea4rYY4GLLIkfkvd5Srpvd8zNdQBrboELwh7hpqq3GbzQEVKsnSvAC7wMt+tYVuXTv/aWu2LKHVPSMJW22JeXp+V6EVzSZl9qUgZumxsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMU/LAZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMU/LAZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E5CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747494593;
	bh=KVo3o4DdGLD8f1k5LJqu0llZuPRKbRkMmLrOyW/43OQ=;
	h=To:Subject:From:Date:From;
	b=TMU/LAZmI4cekM+xhgYrWKA0ZyLGXH10TdDF6R8ndkJHMJCMjtLQWgiWafv0ZgHBq
	 /b3YKdrCVyh2K2uWCFduMxGCCPN7IHddszKT1JCpiB48dcqmxmsmDICb5LX/QT4TVW
	 NqqdeE5MduXtveGtO1+Zxn1p06LzEseMjvL399N6/XQyCb118uM/fhLOMi+KPJ6LzE
	 I6w6ojNKGhtvwzHXeHrgzOZjphkR0CTBA96y0jBDku61xvrxJsYRALPS49ZjlT4fuQ
	 Yr5sWp19RSezOKFH5E+CCLQ7o8E37b1N1TpGJMSu9u0CPC29Mi0v2T4hM5+P5EbUdV
	 59rcWGwPA2nOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB9C3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749459358.3862.13938631902216979056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f16653eebd3b503d95a17a5aa1528a1b3042d9679970dd0152301ae3a9dddb
Date: Sat, 17 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747494593
