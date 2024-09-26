Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDB5188CC7
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727334354; cv=none; b=rtA8NZSG8jP2oq5ZyPynW0MgsAK8mppkxf5fMMWnme4DQJGqyMQbMDPXlK2uTrS0RzKVsynavsC0s1qEBMMEOJjh1aRZLuMoLmhcQI1njbNTThHWhVNhyDzTi4NOMi/c/ea2QsrWe85YincICeWIDCvUNju9R3n8Ztlu0iE29hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727334354; c=relaxed/simple;
	bh=sva566Gk7YIY6hHDsOdEOASm1al6q8JYQMRXQ8azc9M=;
	h=To:Subject:From:Message-Id:Date; b=nQdnHdih/nZLUuB8cj7yvcOG79xFHWCt60I2P6IN6BWkgd3+97m+wARJLe03GlenWf8IRfm1A58tKnnSKWER5dUPWa2bJlbenN6pn2GZY0YPnVICnB7P6siVKdbguUP75Q/cuweeVTZDvlSSyigS8V/PH0SnSMu1IANTDmMfarE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHHXyM/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHHXyM/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE09C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727334353;
	bh=sva566Gk7YIY6hHDsOdEOASm1al6q8JYQMRXQ8azc9M=;
	h=To:Subject:From:Date:From;
	b=nHHXyM/Uba9vy9n/3Jhe+D8kgkazO8n2XXY68hHhZ5sFd7muZY3HCZg8yMBS3pe6f
	 ZS10Ipyu8Ygo2X19UW4LpL3J2tLQF+w+mQ8BW6UTbbtTyByE/tVGqdbOxtvWPbzOOW
	 y1BelLtQ9+FJqjDNmJ5LbA/nCvoO9MMsane/2gColgPbJJRqy1AItptc1h13EUN9JA
	 Z5zgr7gWdUbsE3kGk6evoKy8GjKJJvlwMcITWF6GmiNdxO1MGXFka6Kl84dG8uXYyk
	 Mv8gOQjAWlfEuXhRw3KvwyfeBcHfeOYDTfKzPFeXxyfCDKfwvItPtkUQhTaHGuxvHA
	 3ZDJ0mQUjWa9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D73DCCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733435362.4441.13980250219415120991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e7da167e98e3f7c38dbf865d433f38e4d94bc1beb9427b2ee2f5f7208ffa5f
Date: Thu, 26 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727334353
