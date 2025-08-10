Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A721361
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754790594; cv=none; b=YTy2HeAa7lGd+ozHR/ZnJo6aL8EwqZbCUM0aF0fv5XE5Yzs2VhYxHp07BRorD9i9xUYegSw6V+CxvEpeGtOg4h86J4LP6RZhdg8xjxuF8kBIz8KvbeYXHVQ1SZyI9pRDguq72lEaEaoxwmg1mIhOWVUof1Rqq9yzNYTYzfXZiVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754790594; c=relaxed/simple;
	bh=+Arna0fwQV0Xp7LWnF9ExtdfMgWwDfrd6nipk9HKVQE=;
	h=To:Subject:From:Message-Id:Date; b=MbQTmfe1dMe4rCAaIPzKmQ7VKUcSkYU0MyzrsSEN0UqXIGd5FKmjOKx1Y6l7+L2Ka8W07DgIVWVI1O0fpLhKmfKMwgHWdW1iVzQ/RTTnwbnJz88nfFsiHCiS51xjW3lgHxAzX89cq50Lwidw9zB67gC9pocUAqzUwUDWlorE8zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3Ur/s5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3Ur/s5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F731C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754790593;
	bh=+Arna0fwQV0Xp7LWnF9ExtdfMgWwDfrd6nipk9HKVQE=;
	h=To:Subject:From:Date:From;
	b=B3Ur/s5L4sRmDnppuoQ+DIbllBgje84b9Y9uaso090Yhj6Cjt4xD2qI3N2zstUdjx
	 VVBLc9bTnVtkvmoUMzCGrrO+HY3xvfLEbcz6o7cwLS7jcrxso8Sg6d247OtSCO9Tyk
	 lQsDjjL0bftidqU3DZACLNsdUK6reKyMHdzjpvTjuldapYIklYJ743tK4DH+rQWJ7k
	 hJX8dQiX/LOJ/JCSGbDweMwQ6D0PPP+xxJ/R6w3kUyWs02ylD14/BV3kViA6ogRoYO
	 EP/BOkzGhsK4L856TD8r1ULiI97rppeqVLv2oI/tHc3zlfNvKgrNvH7sVACX6Z9MiR
	 wdlC6rnvBPOHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F730C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479059357.2030.10949255585818595919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1eecb4ef2e7b406f8834e7ebc76a1fc6f2318515d29f1db6a73c1d26f7d923
Date: Sun, 10 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754790593
