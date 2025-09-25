Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214C725A631
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758791994; cv=none; b=nahfY0R1391Sgh/SWI6pKYx4+Kf6Kux/2d2vG90rAAcoi9wp+PFUCzoW+2wfkcdbrMMO8U2P4JoPg/5N1nTeT8aHbjL8h3qwyWiI/WPlWtzZjrXI+h212gnj79VKKVXN3RjBgZVUVhjk5961XN5SooqZMXJIfL6Vu2aLUyMtwBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758791994; c=relaxed/simple;
	bh=S+MNVxAY5Huo/TOTu1VPSLukt8/JQo83lI6Qwgy1AY8=;
	h=To:Subject:From:Message-Id:Date; b=XTKb265e/wgMfzDVAjG1IEChv92eoRR4g2DpLS2mzZNaHEXz85lFBaQts52Au4NoABwzfiFK7tx6jkojRbI++6rNmSA6RwiKWTJV9JY29lj8f89FVKua7YOi/Fej4edb+K3wPV90ePItNTY+jaWNvddvN7/fC4PhbyT05rlFEBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tX8kjgXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tX8kjgXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA008C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758791993;
	bh=S+MNVxAY5Huo/TOTu1VPSLukt8/JQo83lI6Qwgy1AY8=;
	h=To:Subject:From:Date:From;
	b=tX8kjgXhwDavWHUZfD/6saEcjrTVQvVx3OK+PMjrhsqcylPr3h+TktjdzQlies4Hu
	 IaZm0zzAnjYfJNeBzWgcWrvR6AX/93AuCW94WL7O49P6tdnlMbDtZBnKUBatdnZHeY
	 2b/wIjtX01jXX0qThH09giiaiSm6gisvF/4YBb1HG6o3kFw4bDSIuFTQtjUBxyHJTA
	 BatIBykk5w/6Temmc5a/z/RQin8c4PXp5XlhiRbB8SdER9DKWGEY7XLgR8eT1j/Khy
	 Qwz0PWK9aqGGw57gOVu8h9UPq+YcbjJvncqD1urhQil9Y6gkVzTlNKaVOvIEBJwlGU
	 TmjTGyx0Q7tFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9683CCAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879199360.19934.2033133086431049457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd724d6396abe73f44a6d9e1ccedbe691221a980620f10ec8928a1af5c62806
Date: Thu, 25 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758791993
