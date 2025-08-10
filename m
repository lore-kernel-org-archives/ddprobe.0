Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DED2188A0C
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754818794; cv=none; b=oI3EYOf3MGRgWv5aZmoyk0YJVVRFvMdqvybBXVMgq9pDKhPNOslr/AF1ztLqBMt/Nw8dL0kdzzhieWBG7OOjcbmuTLYWhJ53jmYPeHXfYh9M+4I3oz+a9SaQ+87f58z79Z2zllkFW7phRaZ8RfEORjCzCHU0VUBUOynvejjfgF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754818794; c=relaxed/simple;
	bh=Y3zgIaiBZFWvVHcZGdJLgWt6iXCN6wIyWJeuGTQRtCM=;
	h=To:Subject:From:Message-Id:Date; b=V2qRZ6cJIpzZMTWuClD/KtUyxFNsxfMJHWShUYbxI+3sPCathq4KoTjZIej8OA9B0OFBNk+C7+njdlfGNrXYOwNpfIbdPbqRBOMcQojsplYnVByRZT9/DQ7VuVFkOncp6MbTBO0BpiOjLskpiJIs/Q08mr/C9IaaATWdttQbF+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gc6j+0AS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gc6j+0AS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754818793;
	bh=Y3zgIaiBZFWvVHcZGdJLgWt6iXCN6wIyWJeuGTQRtCM=;
	h=To:Subject:From:Date:From;
	b=Gc6j+0ASK9MvMAILGXwtciKfb9l0k6Klui4dR8yT7jqMxHdC3NWjapz5Ymioj0CDI
	 12d8Zi7QDbPiAlG8kjCpPUXetyvWp+qy8xDbjtiAkS+02Grlmpl+vGmaOpjWTeeBKv
	 jAklCsrBwhkqVPNE3NhYkeKV/FQGeoRgXhj8w/jiocyNFzJzqjWjX/Zrinb7ngBOC0
	 lebLExSElxV5KwJL3rxLpEWvaS7uhbzrGzQKMkG/+oyPbyFHBBbD+4auMVM8HyGwxf
	 exp7YZ9fxxlNmmhgzytFGGL95ur/ZxWep4Eabd263CNPtdulJt3nPFwX9KC7So9nS0
	 fYSx7iaUpRyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173AC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481879357.31742.15634755164844703138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5036c2649a61709edb04f6fe69270f86f42bfbfcca85c4c8920c3686d1d96694
Date: Sun, 10 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754818793
