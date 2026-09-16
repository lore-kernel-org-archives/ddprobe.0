Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED0045DF65
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789597235; cv=none; b=dTzeytMa0/h80WjKJf0/TK/jTVwCL5t1vDg2oSHDaK/dY/hPa/LM40AteY9S0SLErtYshZJLE8k4GtK9zyWWeQxCzd42iTJfSMVz0rAPi1chCjnS7jJkqg3X272127qN1HMYScVCN2Uhc2VOYGKWRB8YWhGCip8ht0BQpkCrXWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789597235; c=relaxed/simple;
	bh=b/JQlGZu6Hf9DsLh5qTrGbpao43yHARY1UxL85M0a+k=;
	h=To:Subject:From:Message-Id:Date; b=TF012lNwtOq5hqUS81V0K2cNGuIguenaHfeMSjf2aq6Up74nza2VYoFMcNwzcc1Y7zjyAK6uUcA6J75IkUJgHPg3LSgWgN3vtJ7Ab/pu3MqEKg1y7X5iWzSjFVAJMl1jDi8k/1QIrl2b4Oxbn8IOCiBKptbNROcQv6/OaWBFueU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwCw6z4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwCw6z4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E19D6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789597233;
	bh=b/JQlGZu6Hf9DsLh5qTrGbpao43yHARY1UxL85M0a+k=;
	h=To:Subject:From:Date:From;
	b=YwCw6z4QX/ePStkGZGtqJJTwYPi9r8fvD6WpD9lgEVsNtRJCYVPZimXCHAz92ef83
	 +DP7HfWbGA0tlrg2qnsLc1Z3hnEASkQ1VOIchyoBLdP9F9WjVH0zsD/+c26KEYClu/
	 x5xoABplAmifqy07YXZNW/598hBUe0GYMxGGoD+4pvuMr6W0qnQk9eeX5G/jd/3QA9
	 B+v5HpX8WjkxU2x+JdiGx35Nr6J2i/InGmvupE13YdAh2XKEFgD8QLrq6HLkHIcGFs
	 hsCAqt5YTHCdI+k/GXO18zxmv2bN9Y3CWP6nyF5LLl8bwrwdG9QMYUYBaAeF7DNAkT
	 UJRv9y5qBVOCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF73C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959723375.21674.13171423111152687785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ae343bda5400c73a207ce288622d70f3cd90da8283643ca2c1af869b12b9f6
Date: Wed, 16 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789597233
