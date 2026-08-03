Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B86379C43
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785774634; cv=none; b=DNZVPeaajKZDi+eDMMh4lCNhVQq0qQ2L7P4f0iubh6gI7K9gPtmPova4VZu8l8yqdl/vZ7W+yxJMjLCvFhnbT+44PtOZMcYImPOl5L+Sc2d19vkNKjKdG46ucA0YiiiQNlpq/gIg2AU2kDmz5CBQ83iAygp/UuDsFAwpGt3guwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785774634; c=relaxed/simple;
	bh=UVl6tBP6QH0ofJbDL2X5n/CdtX6ShP62uNWpIticWME=;
	h=To:Subject:From:Message-Id:Date; b=HzkvzHnEtiNXfhC2A8TAtmqPMfm3TFbcVb5QtlZ6Rj7bi7my3Xml6kTGDsgrN6QzcYn4Z31O+w7kTdD0jAsWK03BbaA1SaiHSSWgAD29hSqX+rpUn7TH+HvihUw9GHeA32ysjPdMR4kV47vJV/+yKTXv1bjgQ2gHQypKGPrOL4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRSA4x0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRSA4x0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7B9C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785774633;
	bh=UVl6tBP6QH0ofJbDL2X5n/CdtX6ShP62uNWpIticWME=;
	h=To:Subject:From:Date:From;
	b=DRSA4x0ktflrClSt+nmtB1bV13JSbXqW8wzL5aIAF3yuSEibiY5c4QF1tVNr/ZO9q
	 ++7dY0RsTAuHJHqI3RugYbE37iDX7pcnuNy/8uSwbkwOiyn8iYksW8hDDmOyVg/nDi
	 mAZ5oUXHK0w9sQxfw6ez1vT0swnVVwV5b3ABfBs23HIliQshqtqHt60ZVjHSqC7z1w
	 DLRyPc7IXNzos0+wvv6Lozvd5xMiGbB9Teh9nWoUqOxpTLJBAOKxEQaOSV9d7WLt8M
	 pcTeguXqdR1HRONfKbrA3F6jn2BHAjNLJNB+mEK65G9dM37JCzjzuZV2YdjwUhFAIg
	 ANU2aypX7gmHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA859C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577463369.18103.1173584280812012974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48d9f00030f9c3b24700b36393469c41610c2082a76b1034518e79f6f14c0e9
Date: Mon, 03 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785774633
