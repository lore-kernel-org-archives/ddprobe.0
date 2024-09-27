Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E3239AD6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727433954; cv=none; b=en1Ff/8P8xBxpamSu0fkF6MNSaFUb/Wh2kqAMABCYZ3mR8TKZZ/ZFJJ4L1MDpM38hV0Kc02DkTBVQVrJVcH+sYeLzE4h8qTpM/wOh8itKyrtCAA8U+kJcz61jsAES/UsNg5D/G49+nkCSayZsSZk8syJ51Bi/hPvtyaVID/2f3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727433954; c=relaxed/simple;
	bh=ixs/ZcXwAredKingrUbOT48NNfQcmeAE/tHjwTct2bw=;
	h=To:Subject:From:Message-Id:Date; b=WagQiSgJu1L1VVLftUqMyLU2fU06lxODbQGM2JmqGKs6Zw6AYrfk5sXmX6k1AxirYfrf43qHBjyTS9rzo/LsAaaTjkHd+VZ69f/0pH28EetmAuPgtrZc77EC01uOsPsSmqyIi9b/SKfDKnIaYDtDo4rkEvqIBNDCffnnEGt4K4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjTJ5lxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjTJ5lxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF05CC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727433953;
	bh=ixs/ZcXwAredKingrUbOT48NNfQcmeAE/tHjwTct2bw=;
	h=To:Subject:From:Date:From;
	b=WjTJ5lxdWVhhElmWAuzsPj3b6njZ9xFwZ2OjzbBpvl/H7luLdODJz6WTuhvqgrNFY
	 iBUb3BEHVHnfoI7rcz07vhTDAmfC9OM33ShQcc1IV4jxbjzlWZa3k+5gdpLTKrRutE
	 5kVnUEngK0e2QTVyrLpUpzuwHowWFTFPHSfC3DBUyk9ZWCI2O68Aw5PjJD3BwKcums
	 BnUTJbPnjy1cFArbM5sMzNY1+tJyIf4uBdMrrjpWUYjnV8/3MuRjEKZYRcNwR2eL9N
	 NgJIOlPAOT04/i+5WCR2stFS+kPNHoq95Cxcvqwi+LiKAA0gvZ31I+tPfD7tGzr2fP
	 nQVcTL0gUGXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6CFCEBF8E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743395362.5500.1269717832842455889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f331735e71b4ac4c74723fd59a611d1461f24fc6baa449ab44539dfeef78c9e4
Date: Fri, 27 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727433953
