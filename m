Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADD5BA27
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749346194; cv=none; b=Owjsos2rstuZT8q/p87Le7IrezRz/1iiswEu8KauMZRd3IfAlYRMQegv8A8LVlYHxSCnZ8OXrFd8p1XMnTXo5X23QZ9sL5YUJag2nRjZ/nCXQqTHU8NGd0OCrCBJ5FqHUK5YNHGAvaK4TA2Tis5OCxeaiHMNNslJ/zgsZigv7ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749346194; c=relaxed/simple;
	bh=r7enp498b3ypfn+8ViJA9cOabvyDuxwEdKLC4gxYUy4=;
	h=To:Subject:From:Message-Id:Date; b=pTH3qUvJZoP4Wvzs5lzXe2tekK0l3I5W7sDSFABzOzWVw5jeLwcP1ikpSn34oWJGElITB/HJX4SHvclZG7HCQ4K+Y+J5Ny8Ggi2CkXMQc9afDReDZJg/cRVCApVcHjk+dbTh2ANkFLQbiHTF2Aj0J3NHWjZzMAJVyy+BLGZgPXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZI23W1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZI23W1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5788C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749346193;
	bh=r7enp498b3ypfn+8ViJA9cOabvyDuxwEdKLC4gxYUy4=;
	h=To:Subject:From:Date:From;
	b=jZI23W1/lP3O9k+wJLc7X1F5rLnCOweDGFn+EozxevAm9Mi8n6RwIVzX8WBVhPCIp
	 Bt8xqzQaDpMbplEVk6ENTpIpNxUUB2t6WsPaa1JZmUkWC72f+N0tZpOnN1NMRjanP/
	 4XS8XIZGgGUwPxhfSltSjI2jmGZcFW3vOVrJHxqy9oWBsWxx9RgZICPv5wBaII8qVl
	 1QBx8aYF55K5eu1Te5UMBjp66J4cx1qtVvACnVhSsWvL/Qik3sjfmNSS3FMeaBzsdl
	 4VGFU3HKxFcVNZyXONmih7uJSiHr00820o/QW5LBiwlgviei9d0+Ts29r/nQ3kv+Bz
	 TSxlkWEDSEJzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB0C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934619357.8945.8475319727909420795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a8d7446a980fb18718edf657a4f12eabd36e13b124bd9897afa58d46a0b7a9
Date: Sun, 08 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749346193
