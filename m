Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504482D661E
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755444594; cv=none; b=UNCWrLTjtC1KnFqUGfk5PwSduXzgTeLMZjpD0zrXGqUr4bxJMNx1rCGpye5Mb5S83aW5n+j3z9DzDh0LupIyUrs3OlrL6iGyCNbxw1kliBNY+72koOTJUdch5+UkW85OCEypL594RpCpSKimRY9HCtBc9AlBbZhtTOKKZxxwQQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755444594; c=relaxed/simple;
	bh=q9jkuEdNI+xT5J+7hZC95SbNqiflnAkfUwM8+PS+y1k=;
	h=To:Subject:From:Message-Id:Date; b=ravdYLv6ydRCzY0aO+Jwt10XRej4M9gLTUeZk46/wspIa/oL3+wr+rQbypYLMmz/ypz3OK2Kfeebor+SkjuozSV33uUrMDdUafpF4hKTDXynd46ldPgsQD9sCJxYJNqV3JpiwI6P8/zw0mX7G4eG7KE5n8VMy0s0If5OzIsY8cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxN/JLJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxN/JLJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0098C116B1
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755444593;
	bh=q9jkuEdNI+xT5J+7hZC95SbNqiflnAkfUwM8+PS+y1k=;
	h=To:Subject:From:Date:From;
	b=XxN/JLJ8YhzoukJe8sKVdihe4sDikm70tepGotrUnRQ9rGYHYf5TtvUOfWo7AdRU5
	 8r8MqEb8oVXCZ1uCoq52/cmND9VAORtdaaz67zKsNyUvV3px54b2BqcaFkwt4sUNkV
	 w0T25KBNTcyYb8E57bb1IHQChxETNxmn8vqFPUKdWwoOdZNIjrRwJ3ALzN+jeZ9D4N
	 afeFTQulzu6pXwvVglXSvV3jOZgs77WrWiNCNRH4SnCqgC8VBavI9/rBbw8w1DKkox
	 O0EgwnZre9VA6a+xODB6XWTVPWmfqWxG+YQYxvgsAezgbFGOa0vijBvOazXzqMBlEs
	 c69reixIL161g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91811CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544459357.30372.16227349677314675641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d132d4b23ce3e8f642ac1afe9a97595b0bd41f6ca7fa870e378690745e00b70
Date: Sun, 17 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755444593
