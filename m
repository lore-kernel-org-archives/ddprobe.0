Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB64480DF2
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779213036; cv=none; b=IFSUz6SeqIGw9gyHlUgM7VLjuO5xNK4KP9ghvn4kSyHeH0aieOufivoSywnMX9FTY1LDRI0W8HzGyihEW2pUKqzJ0tLQt1GeNh8mVsCG4IqWcOXeDlmcod0FkgNwaCX5JZHLtTsP8yUfE/aZhvQmUPxhmsgn5FcQYOtLmx6GMQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779213036; c=relaxed/simple;
	bh=FJKbYO/4YEPVBhPNB00n/T6qIb5EzQ+jUpKdZBnGlaM=;
	h=To:Subject:From:Message-Id:Date; b=GWDHuQA4yKtOAV9kS2LiVIpn7MSfU1ba6LrcG6l/7P3kb0B/dLmQM/75hf8QTMkDs/kSUZvwxvWPdrfMl0rEw1F5vOuUURQfeN0jjToUjIoZnYInHp8KxUdOhJSxq2c6GEfabPTvUq2G7DztyCqRvlMxkUswkwIsnpNuVjgLEls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD92hQ2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD92hQ2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF503C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779213033;
	bh=FJKbYO/4YEPVBhPNB00n/T6qIb5EzQ+jUpKdZBnGlaM=;
	h=To:Subject:From:Date:From;
	b=qD92hQ2Y71qIX0dSClw29Q6Z0hwge6QiCZNmqLdpO/5U1Z8wKQPYNNciZ/BCvSYyk
	 0zU4VYhcTxcJlZ5hBWM/fR/aud9HB51cLh4rHrZIK/fZdh5eRCsuCVcdwgDjEtaDQo
	 kKqBGXGEpRi3gJylGX70vXnNLRfHRvfnMzOuViO3qoLKzSzfsRmoHz2RDh+8PKito7
	 3WJEvVJgLnwvfpRybMS+Lu8CZL8HxcvrLQcgOzrTJCWeaUiN+7ktP8BACrxgbS5H12
	 f/MI2e4WWhTV4ndO0d7Gp9M+CpYCEJaZKyN+eDyM+hR3I9IV+u0sIJYkDEr+2myBsj
	 xBQyVviDJzwNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF029CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921303370.1444.1401045264170967434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c54f016f583b356d8b2a7829570118cbac97e4f807739bf7e7a014e9588fdf
Date: Tue, 19 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779213033
