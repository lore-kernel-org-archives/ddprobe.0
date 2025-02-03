Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CDC3A8CB
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738619154; cv=none; b=dY87aJYJrG6J5v9FMI9fDQF2pQxiy3kON8T0YYsJzZhDWPXoQHxY0gqrDDSzMNxRQxC3eRHYkCXQPfxoLiDX9yR2QHpoZGMoLkpNRE6I2hHFDPPZp66XX3n3cAnLBW6wNg8KkYoKovsjel7scR9q8vz7QzI4F8wBln57vMSN6Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738619154; c=relaxed/simple;
	bh=kmKAtWRU/dboT89VsU9DkaffrfPHCsO7SEgpPDyCiD8=;
	h=To:Subject:From:Message-Id:Date; b=qHAUDqTpxEEiacP5XFH+ZaYmg7jfnK7F1zutfYtXnknOLax4OlVA4AJED9j5PKzeNLrMwqGx86kn8U5TrsSunlUz9C93XNfx5kQWDxyrTCFMoQi0S0OSzbX1hLadF7+W+7df5Ly80htr3/vKm7R6LrqjqFYqRQbYjqfL/+opjeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N23Gqnfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N23Gqnfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56C0C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738619153;
	bh=kmKAtWRU/dboT89VsU9DkaffrfPHCsO7SEgpPDyCiD8=;
	h=To:Subject:From:Date:From;
	b=N23GqnfkpHPYm0xEZKh8Wv3xrn52i5VPXsRislI4f5NUPOvNl/eazLYBJEcNDdbWR
	 7aBLyK3ZBhVWcpCh086O+LLTFZkPbDM+Zy2a1zmrgY9K5O752OzxbbVoXC3h83KhHF
	 AlEU5GsV4cOgPRtVdOvkMc1ZTHS6lZ9OB4Z6H7C+ftQrfwc5cHgQbcxsCzYLIeVwyx
	 Ndpes2vq1TMoUyDzOROLcTesAiHwPp+EC8o9+0zKV6aKefpMYytcIqT67rplLFdeg0
	 2hMDDEThwwAjW5UjL+b2wKv2suLqcCZs4gz3h39Pu16YdCPQsNbKt5yu2j5E++RnYL
	 FMQQWgnxLdozQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B32DC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861915362.7173.8840759870587066553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5b07fdccf5fe62b9503cfe25e0a9b9ad0d3fe40528c3be687b82b550e5fe42
Date: Mon, 03 Feb 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738619153
