Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209DE1A23A4
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766106234; cv=none; b=VSNY6g7YVy0Hj9TYqBrOz1R0PFVhVqaDjFbqA+lCQW4V8t+INT+UwzpkePh8t+bGbz6si2kiA9bG02xjick0eCrENQZqTsmaMxIFlKGAFAhjdfAT4T/cldKCGy2R4YnPr/i3XNG4gzf6YgPQ2W0T4HpardeP6FKDcEvLwiLphIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766106234; c=relaxed/simple;
	bh=qe2zC1CGENRssmL6OSZwHnVkJipaTyOKoNTxYB86pMw=;
	h=To:Subject:From:Message-Id:Date; b=apOOg/LUKw9W0FMAgRLtRZRwaHL2Z9deOlFVfzRzuB8dSfZ9B0lyJlltqE52ktKtr1X1REcYIoh7c3jNvyt1CA1hdpgF9z+pu88YmDgt/k9sF8mftNx7mdj7rR7dz1eUcC3AMjvl4Y4sIeo8RIGmj6mS6LIXIEzcJi0iSS69zEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nduOJXeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nduOJXeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DCBC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766106233;
	bh=qe2zC1CGENRssmL6OSZwHnVkJipaTyOKoNTxYB86pMw=;
	h=To:Subject:From:Date:From;
	b=nduOJXeXutmeUuWl2nSh8AXO5UPrb1OX9QlM3ckBGc1fs73drHZLLMY2VeATgi2l8
	 fMPNHpIZCNuoevBEz7WEgeVUXthiFKRLsR+Kl/wHzW6k5xEtYyKZbizJiFOogVL27J
	 i+lBFu+RbfveiCmqsS6IJEC+HlUcQSJc/GagOB9hwD6ww/V02iNIqcl6cvNj7D2KSl
	 6D53jghPnMnrcEs8MIe6qVqhTpDgn/pujkIFnmOC9zA/HHZI0uKSfvjuTef5G1TSyb
	 8lmiyhU1nWEBfj+byHTTTjZHm8P4oW9mQlYPcm0idi9JvViLLm+EutXl0ekvQZKxr7
	 YO9F5U7wvoBSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D8D711CE
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610623358.4912.15109525953507062347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb18bfac05804ce13d8bb600f45701734ddc814ff702ac5856544676ebdbab5
Date: Fri, 19 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766106233
