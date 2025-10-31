Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307651917F1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761876594; cv=none; b=cCfUjmhAizgLNYw2HCmD0Pkl2ztZzcUKsjq6g+U6wdHCmeYADVWud5q+VSCNbcNFwyXQ66PhO5bxDPgNyv1B2NODB4SxwOnSYnXCMcqYEnKU6dtKxBjH6Idc+gK470BxudZ14MxQsJztusR94mK//p/0jmkFJoX6TGpS1+F9k7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761876594; c=relaxed/simple;
	bh=jEuYBBscJOm+RbiwglhsZyNIqDJ+gXKrE4FBMCtKPmY=;
	h=To:Subject:From:Message-Id:Date; b=QOWtGmNqlLWeRMxhLO6c3STCE7Ki2lRVrbL9oYh3VaBok3QK4krnCnxxStIs/pr3NicTVshQRWDYukEethOxiDPdOhA4Q0OONP8N0D6o0qQYJwt32OqfOZDH2pThXRtO+2mYRqgdxxchhJyg+BM1ppTe+MYc/MBQzky3ExzMmZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NX7ndOur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NX7ndOur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E53FC4CEFD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761876593;
	bh=jEuYBBscJOm+RbiwglhsZyNIqDJ+gXKrE4FBMCtKPmY=;
	h=To:Subject:From:Date:From;
	b=NX7ndOur8tdfcf2kxrPA6FUfYJqgWXdlYa3+OGan0fsGxAgaDgipe6o03HZlA7uuP
	 OMfDNzJzsxr3rUAwWmGvoSHu6a7fozBAyf8oLoLGKnT6HwkpBDoq5Bydigr+oVFl9j
	 S76wHJ3N754bDOIxSLHo9NWKXAZ1Rfo+JXXy6zLGASabHgUAGS+W1fxbC0UUBlJ5Nk
	 8wvlNzKWwa9+GTRAd3EurEcSA9q59A7O9sXJ/StwJ/WBPJuB6FMX5+sHHO3BansnWS
	 9x7GltBB7L0xxcSIYxBSi6AOolxeQiD/Qtx2I7J16ay+GTbo/ZaIvuGDfp0dL5PVfk
	 Dnj28fb0k1qww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA9CCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187659357.353.16342041439772247550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e37a6777aa8f0584e61745b63e171bbf49bf71d2106004c9a426c0704a0a7c
Date: Fri, 31 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761876593
