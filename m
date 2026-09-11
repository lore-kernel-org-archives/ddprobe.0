Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AB530AAD8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789168234; cv=none; b=GJdqURyEXgnQexD+0UoqOxg7lzB8cY4bxKayJltW2E/HckyyiP9KYA9Q82D8yP15PHxF+pq1LYo+TJp01rT1nhp9rUnanASN5+VB9GYit2oeZ7PWVGxp+WLVsXLmXp6xU8AtDfIsDxgi+AWUdSv7oq8jO/JoWIdJXVC2XLrLwPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789168234; c=relaxed/simple;
	bh=c3onukvvFf5hvqgBCTmNvL6kZ02oPor4J2Mq4T53/54=;
	h=To:Subject:From:Message-Id:Date; b=WO0MbOBq0GIybGTrvhUFRU2d/jHkhZS7DOJ8y5TzCjKkOb3ya5xUkw0xsWgE/uaUuQCrPb1eja1uYYBIKlV5E6QnKKEyRR0I76MJDuWUcMPSdIgs5JwcR6tZ8FwFtzkAtix5d6WlHu/mGd1TKf0CmNqYyR8EfNL3nz4KKqmOkuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1qBZQz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1qBZQz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD250C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789168233;
	bh=c3onukvvFf5hvqgBCTmNvL6kZ02oPor4J2Mq4T53/54=;
	h=To:Subject:From:Date:From;
	b=X1qBZQz+AJzGCeTl7y10UgvytxeLG0Q9opq1LY2l1nLz5j3RryECt8SYIJAvjSWwj
	 x6vF70djQcJwNkjD1dNNNqkgrKM1SApM3c3YGKBUx1bYmOu812UmuolqWfp2FmxjUu
	 zTzoXoBZixSCHBBpJWrlysfNI8j8jkNuH/NbkhZOpal8VU2h0Dimzw2epwZSSG6m+f
	 2cUlhR0z4T0Cx/7OtHy4H7OHz00kF4duYAQ/en40VDIYqUsZx3aSqXuiosGl+QFbL5
	 es3GGQpcHuCOf0cdhp5BhwnAeZsUXTfGt6YpDdSyfN/4We00sMj3R1oMDQ+SB6eZX3
	 l4iCCNBraY4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9792C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916823368.25911.7096613648929300973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9d604b9a86c943783a53356c05cb52dfd90b89e47ecd9e71f288786c23cc09
Date: Fri, 11 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789168233
