Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43950318146
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775145334; cv=none; b=ee3/equ/fNKqfdOrryYyy4yp1I4N26QJghGgXkfBWIDveZW+dfa5qPpL8kYr3qEGc9hkKuOahccqy9tfAZ9rGLLHHNIdFvYO+s1DtVzQzNelWCb722TO/zgdVWaax9dqYKsWf/mMxEZEhX7l72Lppepq29p9e4rdGegu38MdOAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775145334; c=relaxed/simple;
	bh=VLzeQtMMBhtur/7hUIfYWdy8EbFnitQ/r/VO2KfowYU=;
	h=To:Subject:From:Message-Id:Date; b=oeBpW8ic6I4p/I8DexXWGdH3e2D3ThLbEE6M9+1sdXe3sEOYiL8wbhdTVt/pvG9GzrGytv1tuM2doEpZRB442kr7MEXNuRcVYcbqiNFf2HU+jfTt6LC6m8zUfi0deON/D+omO5Cvo1j6RzHdhh0ji1s/RdlsqTjcn73euykZSRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgPAfLve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgPAfLve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19E3C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775145333;
	bh=VLzeQtMMBhtur/7hUIfYWdy8EbFnitQ/r/VO2KfowYU=;
	h=To:Subject:From:Date:From;
	b=WgPAfLvewtQgAUhCUNF0moHElAVaktZhGsh3tYx3OoyQj9VZfrAn8QQFisxJvqK//
	 NN/eA0LpCr+e5pM2Oc15h8P+PyKUWeaTtfFjkUpruY8/w/GPc6JR7ORP5LLdon02An
	 N6yA4yw28UOqe6n4YY0WYjBqZwy0KcnWPepqJbgX2PZUVyngMqDi1WklpryQgqFUtS
	 vHSzs/ZTO3J6+686XgJjvGSOCbR6Ra1ll2qU9QHbqClpJn5PaMDdyecg6dfsT80bHU
	 im722QPsfdZD89TVBdF1A2xtyQPEbMCpU8KseFQ3F7cljxAUKx08SSYdDqN0ZwrrAR
	 tLq9uxJfYvazg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF860D6AAE6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514533370.9765.5908241144599764077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6169dae44df76852931fcd49d3b0f45816b0717d21c06621bc6c38da9c05bcfa
Date: Thu, 02 Apr 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775145333
