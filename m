Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D738126BF1
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767498234; cv=none; b=qaAkFrJgeiBgdDJZoQ3hlvtCRJ1bgQNtzV4yc1OWzokec7N50cNa3AyoEce7sugFpwAvl/dQMYJ9t6wMLGgDOlwQzE4+eS6MqD/Dk6kuvC0ecS6kFC373yHQB4q8FC2y65ClC/6Rwjag3TLLk3GBlW7WDDO98DCCuiSOIj08WSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767498234; c=relaxed/simple;
	bh=zHZsjl9d6aPyz7P7SkIUkb4GWCWG/lkmJab3rXpfORM=;
	h=To:Subject:From:Message-Id:Date; b=Pc/Z+gGhY55csLid0edM7b4mhMJXTsswfSnUk+xESN5Q5DMjlr3uqjjZtYN4AkF1biOrorqw5MHlNN5e6pn24pn7xGANq9xDUqTsVI/bigh9/lFp9EaewC69Rc9Ths2pH+u6TSszv6TZrPjXRD+QqgdnFL2Gqxzj3S4+ZYx/DBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTOEcc2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTOEcc2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B68C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767498233;
	bh=zHZsjl9d6aPyz7P7SkIUkb4GWCWG/lkmJab3rXpfORM=;
	h=To:Subject:From:Date:From;
	b=dTOEcc2kk2PZY7YWf9EYnGbe+Sfxtm8dYaBW2WFUCjlkIxDeAvEZg9h9TvXd0F1jD
	 uWFn9M8wtrGbwrOgYCfQytrtDzek4rH8wX93qGxAI7NT6znw1fO9D/5hvdy/AwrPgN
	 lvRSKNmfXysNxShbDr/d+7AzQNg9ZZy/GU97ZBmLbWYDOC6rUpTJj3VdTvjI1aeSE7
	 /ANbL3h5cD5CITQWHJe4GOWEMW5rQm88pppp2YYQ/Bbv98OrwCPMfw3iUtkPNhwPW0
	 V2UuS+3msxduqjXz/hd4cZBcM3SPtsWumJShJtkqJP7YpEX4BVE5X1zshqNN7xwUh5
	 QPIrMNgYR6yvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94728C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749823357.30713.3972645106948566915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a4953e211f4513b004ee727b347d95d76291e49156a0b1e61168a6d220af48c
Date: Sun, 04 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767498233
