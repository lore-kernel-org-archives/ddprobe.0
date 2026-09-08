Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799D65A5127
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788894034; cv=none; b=TMm/rxVDZr5rpQk2pLvK82/nHWsj0Q2vICs4/1LKum/vuNv+SwbI3m58+YaYAuzy9hrdVbFFjNl3Xhtp0kXL2/eF8VvtXjenok5GkLdvP8Su/qIdpK2gfGWU3MgONP8rF/ztJygXXxUIOHvVqbzIDCD9C6zMCo1pY8olgKK/xVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788894034; c=relaxed/simple;
	bh=bgEgL2Ljo+K3wGwPq5YBEEBxJzXoDijfHTmtJCgwe0E=;
	h=To:Subject:From:Message-Id:Date; b=Kn9NZhK7kkTYVFXvjmbyyLOCQRVxPnJ/pIEJ/xZKUEHDplcew0FqzTjegrqJzyABr0bLwkcKIgWd0qKJUvF9EzZBIM0oFRcXNr8W3GbCsAgyNdNU6z10fgjKpGhMHa4DhnU7i7SE9N3fqWk4iaLos1gADP8pZwWiiVeDhQdE4iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS2iB5uF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS2iB5uF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F00DBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788894034;
	bh=bgEgL2Ljo+K3wGwPq5YBEEBxJzXoDijfHTmtJCgwe0E=;
	h=To:Subject:From:Date:From;
	b=mS2iB5uFhkjiPavP+eFfoqpvHTg4sVwDf18mIwzv1O47i/fOAo4hRBKZnmqu2hoYx
	 8jbHH6wjNe2KOiPQb9i9D1ZSm1yio3XKGqv2zQil7PYs5VVZp34WyY98N5UutoE2Ef
	 lYTIe+fMI6IPKgpcRnbwnAc31D4/ECwdJVzwLlht341jvBBmsOwJjKDZ4tXDNj2yIs
	 euSDGQ0R6XVnWXFqD7Itpi45VMddBRmI9BTJAW4BfeQnipHDaehNFQB4cQ0+02+Uz+
	 wDVhSCpXOfSthoJgKCq0PFmbv/B/wUKspQqVzBut2lajJRMQCV4sa+o/e/yvrs8PrD
	 RS/bfPasIuzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E8EC79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889403378.22702.7967507823137724472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3ce9129e16a87f8a0bf8160f8155503a3cdf55678ce4ae643f2e9393ae7521
Date: Tue, 08 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788894033
