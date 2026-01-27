Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163888F49
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769472834; cv=none; b=OVCJY0ycCzZmKvtrJd2lGhjpwOJsp8ruUu7g7C435EJJvPolZzo+dW0MLs1w8l0CSpFrdblCIip0N17wD1WVkfxzICuhCRl8DtxeCZhYpFaJD0BXDJqz921Pt6CxSoYYsuuMX+I60V+D8sg0m0NoHxYAY6DlfV8gU9n3kIO+B0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769472834; c=relaxed/simple;
	bh=OW2+gT5akCeATppoYmM+TWya/38Dzi9oroPNj7eAzIQ=;
	h=To:Subject:From:Message-Id:Date; b=SCpRihnd35HtWMgVYiE7sIt9BnOm8480gYobRTgufdprvhjZKJYD2HURc7pjeYq+CxyO70MygfM2YijJAwofScrNqRRbynYvLzuS69OFbNEcdEeLWUqo0ft1cMBnBchkLR5cm5rWIFlGzPsVSIKSEUpNb5DHNQcYdeI5enYGmjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxs5VY+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxs5VY+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B70C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769472833;
	bh=OW2+gT5akCeATppoYmM+TWya/38Dzi9oroPNj7eAzIQ=;
	h=To:Subject:From:Date:From;
	b=Hxs5VY+lSiION02HGW9I77beA2FpKCHCYZS3jZbGZcptQX8Va+bFqFTjyhhDp2sw6
	 Ye3SOtwJcfhVE1cnOeILgBip8biJ+QnnXI4mXp33GA452d/+kds8pqr92cz4dVSzEq
	 njmLkOAjDerJxu3jyjKVUJgTWiCtVVH2IT2tlfQZ2ci+eN66USHB8vsuyFAnT08zMh
	 +5U1Esh4NtecGpDcqTFhs5qxeBcXWhLQ/rBTIZuSqV7leaUgoUyaJfxfnu4jkwvz9U
	 w4m/xauip5Js7i4cTjI12zC+hkSYVeqsDA6OZ8c2nAV/nF+mOjxHN6Wvc+FEJRMCs2
	 IOlzcSgn785Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C0CF65E2
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947283358.17227.5347191931130249408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea2bccd4e31b3bb4e9dc39ebe586f18f2169abde97f01ef10cfcf080000ebab
Date: Tue, 27 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769472833
