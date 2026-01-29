Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E9C335090
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769703234; cv=none; b=V2eRjCCxy4Af+ZRkP4IRFdM2fiwWWTS1kHPsOOCq7qHmQZezbRr3LH6Cc42MuqYZn/vqM3KfD7ptic7dVvjZpPeZD6zmD5pEyDpT8BXHBDVao17KDVScx9w2e1YmpAFoKK7s5LGg6038QbIA4ChVZ5l/tc2r0SMMYr+WN7fIRqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769703234; c=relaxed/simple;
	bh=LYHljLu8XJMo+OnloVehWzKROFPfGMYFbxgXjMXVCO8=;
	h=To:Subject:From:Message-Id:Date; b=Dxw3OdDOrpqmiGIYW0syEjAdgauf0v7VtsdQOS8CwfvPV0zSrozwBQ34vcIazQHDe18gjUb2zo9UhnWvxcwZ8dhXgzIIdtyDymsjiR8G49bEvlulDBY4gOsnr+UpGthxapmRkVv7UevzIfMEuuyluyTXaMYynCs/eRqVhxecVbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctOP6cJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctOP6cJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A219CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769703233;
	bh=LYHljLu8XJMo+OnloVehWzKROFPfGMYFbxgXjMXVCO8=;
	h=To:Subject:From:Date:From;
	b=ctOP6cJQ1AK+feyvWME4zHJBzfeYde83bIvqsGr1xFA8m+JDZblDssz0BYNlyh06D
	 yDpLYxEEeAxILPVmwanWWcRY1Wxn4xK0T8vCGRKJU3O7EmkplYrhsIbWYYnNUu77fe
	 p0UPVOUalHMTcci5Ceiv0782FJ+GlFh1yzlKzOPGKUu0M182bXfebslcoM9i7sYKCk
	 Pxdnu+TOe0bm1bMWGXMbG4Nbgpj2Owr2q5AoYy7bXsWG1DBor5/0kXLeIlt6CESX9z
	 B/9Y14WE9u1KApsRc4G6A67dQDO9f2VXE/PwCYGsF6lEt7CE0nJV6pAzW71dR7wvil
	 y/GPInvYnTdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94623D6B084
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970323359.17691.4733439043863280108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da009f31e4a3311566cb8844d3a17161ee0e4589c6410f193f3de521fe2a0284
Date: Thu, 29 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769703233
