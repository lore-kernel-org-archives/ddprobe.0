Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280CD81ACA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767151434; cv=none; b=LByj+4n2382BdNxAHLm1cNDfaUVNofkGwzjve3CqAV3ddnG1kYRRi5AM6aHXCJkox1drW4FSCkeKDcvCBa9MXlhX4PJeRfzuaGrSNL1HZDFs0ExQu8D46t4/czxXMmkhcgraM9/ejans0X1yzOkWyWiBoYjgr6fYNdFlZCW7ty4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767151434; c=relaxed/simple;
	bh=/7/SASdYO8UVKMIKb4R+dcwXxZ/3PIILPRE32BAxMsU=;
	h=To:Subject:From:Message-Id:Date; b=M9JsH/I7famokpTwCjQmA/r69d+NVd9IhTPKUy/XzOyk9Wjkw08IgeWWjVLp3s5xnzf6Q76ii1dzxAxVUiQg+HMmQ07TwWcfvGfjLHfUF7vWb9Y0DEyu/uVpKO1Z3q/Eu5xGAUy3N9FtBqQ8oHonw9aFMXqR6PjNmdZiBMlGvOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7ItA9fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7ItA9fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AE0C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767151433;
	bh=/7/SASdYO8UVKMIKb4R+dcwXxZ/3PIILPRE32BAxMsU=;
	h=To:Subject:From:Date:From;
	b=P7ItA9fdXuE8vC5ockk8IMbrl+13sGX+8scxm9aW/67MF190k2e+JmvA0IzEzQzCw
	 IynR14Z7fgTGy6dwq+NprVjItI6/tFZoUq2WXii/bQHOMq+9N6mVVrt0tg7/JYHKfi
	 ODJ1dGWMsTuJvWRf2TVAtANCPTki+IYaeYouVq8kCAYuxo8wDB9m66AmuHhHPtFZ0E
	 kh88qMGyVQ8fc+RLUzwQoAKuQgzIA6JxEQcAg2ic0hraO4R0KzUa6SvfFO6mKbzPH9
	 Ulu45PSSz88PFUWqjkOCEIAMvuLrqZ+t+FgwlQMdXHJgUX8Di1+GP8IBvOmTlCeane
	 cgqrtvD0MJoKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED18EE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715143357.6390.16942367943640466510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95979c785c9c04d20e8b76af496eed63a258a69aab4ad965458117999d0d3926
Date: Wed, 31 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767151433
