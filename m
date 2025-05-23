Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483A91C32
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747960794; cv=none; b=FfyXrljF3GCI9KJv9O/Tl5LUtwFNkyIiwlekV0HGBWsT8FnIxRYFyms4Z3lY2sQFq/JhEKCBlRt1fAoFajCICOHjmwy7M9VHhZ6xaOP5S9sCO7bRzrnedYVxXtnE+s0C5vGvRzh3ZgpMGSy2JXihNPIkQQkfrzpt68+SBAQXcP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747960794; c=relaxed/simple;
	bh=AnZuMvaChYiJQV75ZXJfT4WP/weWLgwhZetBRS5DctI=;
	h=To:Subject:From:Message-Id:Date; b=Mv1IJxSPppDCM3m5ZgDY0yu532VwcUYmDaKmxcxs6YF3DJTLPuZYHLhS0JVVnqX17C22JPibCtabpXCcwg7zuntRZE+0CcA0+YrdNpYJBqpH0nXnmYEr7mbPrI3yCwOroJYhyR7ZOmyCqbZWrMaOxdRcndTo+TQ9CPFhDbSaIh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea5Y4Cqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea5Y4Cqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A73C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747960793;
	bh=AnZuMvaChYiJQV75ZXJfT4WP/weWLgwhZetBRS5DctI=;
	h=To:Subject:From:Date:From;
	b=Ea5Y4CqeMtwlBN3EVmHB59K+VS7n66MF/DytJTzEtQVBwcxhWUFYfUfjoR3ht5niH
	 txqSWELNl+Y7dgVJh2VV4GqiVfFswPrU5wnTvRj00MZ4lPKXjsiv7HAvnrag2mCSlj
	 eZsXizp9jtaO+KOcPsAf/gDszNK8Q5nksQa+wmmecjH9jmMqKALe3VjvmntNgJv6qa
	 PoxD9qg5t3Ulnv9m2dDDllR8TkEIUzCU+gwOAsQOEXd9nMRWgyBG4LvYFQ70lra4+C
	 g8hrryR0tFHnZVHR3iLr4J9/V9iVEWXCgOAZkjrI0BP+E9Lrn/PI5OwqfhHO8OCn24
	 6k/1b0ZzDfETg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9529AC54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796079357.32510.7773896616576620921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5463dc1fa4947d61de47f4e3be0ae1c5d9fd6a4136068fda5db67d796238cafb
Date: Fri, 23 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747960793
