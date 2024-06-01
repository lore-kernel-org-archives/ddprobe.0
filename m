Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590553CF51
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717282523; cv=none; b=qxG8ad0G3/A9kcULv222yIuLU89aK3ZMEsFIB9i3cFWbj1Vqd+lnL7UvGX+HSseX78j8JrQJfLWHjM7s35ylwkR6HjwBWMd85HnQ9lEpQrAhcf00yzqGzJzOzd5CycJXoVg4l3kOYM+fKuslsE6iZo/7fKkX+eJRR4pWrPBxLz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717282523; c=relaxed/simple;
	bh=9rHbvted0GxVb31mSYAEaRs2rhtHkSjTZnMb7rXA78o=;
	h=To:Subject:From:Message-Id:Date; b=N4LcB+E+7DjKXFnJs5fSHF4MkO+OuQV1LzgiaiEqUSX/ihiTUGcJ/gOaT59d9+rPclm/VaOoW6iY5wbSjHfwChFIxaI87JE0rc+SfTL8cC2iW54Unm1rP3+THODK2g4q3r1qXP4T5DDzWFZ2pn3CjmHx7dRcQLA4H1oigXi4qyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acdcqL5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acdcqL5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF3EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717282522;
	bh=9rHbvted0GxVb31mSYAEaRs2rhtHkSjTZnMb7rXA78o=;
	h=To:Subject:From:Date:From;
	b=acdcqL5epxUPLcBxcJyFIoVJrZqg9pZxoTF0FM2bI+xHYqi+fwQRredBsvWR7kE3E
	 wBzYSUrW9DTA/cLoZ4/G7Rpr7jRVmuUmSlMTaOgLWgNPwMg+QxtKjEhse5uyyHr9A7
	 kEHdC4vKCMCS/Jx5nK4kVHXQDVcJYFej+D7xR778vpGz3W65snaqJNBe96FXJHB03m
	 kjPZio4uk+ImzblwkqWQnvHtpkOfZTzv3hkvXjj/oTIAc4e5m1UM9xcYYyNzofEQhm
	 JNSwyh7byoGzkk5P2mA3uuJHEfxXao6UexJs0KEGaSPzMG8rGzZdDlXu/ZLlBQ0CU9
	 DF5Xkfsec3PCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58FBC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728252277.29312.8425156030255951770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bf279cb00ad03e7b7e88a7ee9bf3ce104a2bcedeb6a44b81726a1892682857
Date: Sat, 01 Jun 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717282522
