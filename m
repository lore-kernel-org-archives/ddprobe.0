Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577123D73
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788147034; cv=none; b=X5eBPfiGFa6SgbWCyLIOeW2U+nkzH5HXqhFt83RSetzpPzb7/iRNmvOhYZXHa6/tZJ/A/uUVbj7nm5O3MBqNsIevpiTpyw9NoxvU3QRTwwcGWAO3j6LfJHyje+yXK2wqF++eyWC0nlZJ5/k3xuJik1BKunnhlpmcQZU/BF7QIFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788147034; c=relaxed/simple;
	bh=J58QVdp7Yk+z9t1UeDT/ZwqPQh3jfrN6u4ERNZrX8ME=;
	h=To:Subject:From:Message-Id:Date; b=LarpGpyMUU0jk71w7IW6JqCAdjLRJxZHq4nyHOIGJwC9rkYvRTrPP8/7JiOymBqhRk7gc+nySdk8RXCyJLCbOiFujkxFf4n2EDDw5rYoxjg+bPfcq/2EID8f2Pr4BQOmCOl8cn797IBr7GvY/Dilv/tw+Q5OUW81nbZHDW9Y7AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P39pFpKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P39pFpKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0330C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788147033;
	bh=J58QVdp7Yk+z9t1UeDT/ZwqPQh3jfrN6u4ERNZrX8ME=;
	h=To:Subject:From:Date:From;
	b=P39pFpKITJXG6+BUJma2+qg9YAFLFIdn0DQH0gGnFQn1ZXx9BtfTWwTaxar3uagGj
	 AOhu4rUXuln5lk2JniJqlzU406PyAJK+s7D/MvAa1pU7pmY9x47L4Sl2WjO/xwxgM1
	 Ksc/kY0DRcwO1/70zJHNnqDy8TCdKVDNWV7cwOZAMVckdkdSfeDfhBVOO6rMBYvf+H
	 z8FBygC/0QCAfkuiXcr0NDO9wGm1bGdUW6dsKHeUqFDAHFWaIMstikEKCTMmQP90yn
	 lIyYw647dL6bfPPHwQVDNGhSdYRRMGb3BLo5zHx6v2XTGwCURoQYfD4yM61CN+u7sw
	 yMl6Bis0fc2Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE12DC61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814703368.28193.4460871485486757826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675e83073b2b5f600917015c23b3c86ec71414048f58278fe72e86312b2a0c16
Date: Mon, 31 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788147033
