Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF27CA7D
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714753943; cv=none; b=c9cBhOgH19WhU+N7Oe2hp81sEIwulyfUhoRwv03bW/6E8k6AecUyiHdgTBsbrG4IqYFSUNB8lW/GrKK5MLi0r7RS6/Z/xXHV+Gb8VAHOONzqoPp+WLMrwzSHXm/t0BjVvtEFbN02zzpKjxHRw1lQVsXZ++yVGEL/eape5IR4lPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714753943; c=relaxed/simple;
	bh=nV9TtB8FDSOqiYYXp9nQkm3HR3xZ9GX5HT67rrTg3uc=;
	h=To:Subject:From:Message-Id:Date; b=sxS8Wt5khgON0XsPwyxcxm36y4AlMF0JWpM4Jjs7M3HO25tr8iVohnGo/voXTqzE6C7F2y9Q/xcRwnxrOvZy39gRXoJXM5zy78LKRfnBlqzvuZn8+VaA4h2eiNEyc9D0yNT9W2lXpJlLFsslVUhVEg3XVvAWCpAcSmrvgLS5CQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPdckMhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPdckMhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BFBC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714753942;
	bh=nV9TtB8FDSOqiYYXp9nQkm3HR3xZ9GX5HT67rrTg3uc=;
	h=To:Subject:From:Date:From;
	b=tPdckMhhWq4uZKv7I42SRdwZwET85gv2T70yBJoiGx4BdDLQIsImGIkhgJxjhtEAx
	 jee8gvJcZ5qZckQFSTtasYJ3dx4cl7kLTyvWZbwXvrPfd/9QRfmoHpwvIH8T5HvXIV
	 xacg2J3+7BmYyK/isz7YTcBqbofzweCe8rlO2LG9WU9IBDHbsJFonomUbILAvlQ7Ku
	 sDC+UxzxnGuslb5lh87k+nonuRlLQ8zc0Vgowv9aNDDMJl+UA+fqu3rLAHNe2mnrFJ
	 o/F8yWVNhGSAzY9u3LIenlEgdAkZE9M5mAQdA4satBKXkS8mYLJvQ67WGZkmcArxqu
	 R9q9W+15VgQww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BFFC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475394278.11520.11309188051583473410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea9783a7aa3913211e5ad658cbe5abb83b62a98383d8844523b1c1f2b6f256b3
Date: Fri, 03 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714753942
