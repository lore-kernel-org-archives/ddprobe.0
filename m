Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F66227BB5
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749720594; cv=none; b=NG2iKyMr72DdTabVan05ELdtXd0hGj86Rd8l/96jHfwAuB5z0QXsBsss93RdWQL8Aj/G+PTzH2hmeUaLwXZ1o9S03ngZ4jKLRerj3xIsPUE7+Lo+4OeQe7UimgxhCkzb4L6BbwaEqQWj5kr7w8u2H9v1ze3jUZ8Ict0HOV/Iw/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749720594; c=relaxed/simple;
	bh=iOaWqj4tQh0vsZfxduEv51L049cQdgW90dzemCi+T9U=;
	h=To:Subject:From:Message-Id:Date; b=BctmN2bcFgb/XoOF9InGq1gZB8K29To7IoDusn7zEPf5CcLQgjXke6gYaq1qzD5LuSzA4zHOW3eKcvrlTI+eAMMmbZFblfOcUCS4dCuQ38QeAGBRRjTmuqhnFUZx5ELnUfkHXfOXWVvQFDNfT/iIvMwGudkjoqAQLbyUMeUXmhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjESnYMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjESnYMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F07C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749720593;
	bh=iOaWqj4tQh0vsZfxduEv51L049cQdgW90dzemCi+T9U=;
	h=To:Subject:From:Date:From;
	b=tjESnYMZFg01pYTG8qW27ZqP01GMuPw+pSyktwU41AingFdxix8icjwXwSwMNJPQ0
	 3fMB29NBHJ56wAtTYn9SZcPiOA6caCOhbXkg7KDA0ljbt1Bvx9PXRksKGIIIvU+dcW
	 lezHIIjrsG5lQNZVSxRJtElHR1j9n2+/myoT4j/s2YFZR4IzjiIJPx5S1X4UnHMm+b
	 Q82YrlF9iN+BlTE6XS8C7A04fKuDay02ShiicecbEg776hl7IkFjE0muEl/tlRdcLJ
	 rY/OzU4Ma8OtNFXHU1KJdEdAU70h+EnkQZLYHzONurp5bDUeJQz1N4PogVt93zM9fP
	 VlQGE6EvL639Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78AC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972059357.2745.17411764271557276253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26eea9a26f88617484348ed6b1b8adeed58073c9afeb1666f5f3036b1a606ec4
Date: Thu, 12 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749720593
