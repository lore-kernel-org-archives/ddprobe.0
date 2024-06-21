Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6000918E02
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718949143; cv=none; b=UWSJYcbn6nXG5f5yfYZEFBTMbKpAyGl/LqFpXOO+m9Rt8/p5HsyMgIC9NiJScA/BZu0ORQQh85JgG0YPxQpZy5ngVam5Bh61XtO5PHDXiCgUscO+LK+Ae6ZWWFnPjX0rAW0MYZxKbz0eEFIXyBSdIwSz0omb7QnWFSPu9/PANLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718949143; c=relaxed/simple;
	bh=77mUNIFKuDBWxFM94JcYsJRUpCyJy72Oz65xd8h/awg=;
	h=To:Subject:From:Message-Id:Date; b=XWGW7hk1uC9odQ7PGHSlJjI3VNmPdKfiWoOA9Ssw6I0ehHFNZ0RCR8iGob4ux1alGLBOdo4ER10B7V/BzUU1fSNaRwiVdDgeC6CD98j5TN2SPXYc3EeooRaWqCoScX4p2muwlBWIcxg2ywtTcOm/y//+9Bwp8sUUd7z0q13Q2ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4qghEgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4qghEgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9FA7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718949143;
	bh=77mUNIFKuDBWxFM94JcYsJRUpCyJy72Oz65xd8h/awg=;
	h=To:Subject:From:Date:From;
	b=u4qghEgiAhUTVdRbRf0TKIzM6xftRubort5/iHehXtLkYO3iqRDWptpVDJdKZ8CWF
	 9Hv3vIQm/ig/bm2nY5EyGltdzXAkkBRJux867L1MGmN5YJfTT2ej/M9HDiSFsWwSLt
	 +chJRpfzp3i9L1IORNzwE00HoCo3bQxy8+tShWRE+A0RXOQRmgQ0I1yZitaqsZkZz4
	 XdzTpD1tu5ZOsUbUjZSNebHJrGmd9NIhJBeHep9iJj6lw0NT6aQDJqI6va0JQqnikz
	 mHtv9cpGkAPDCXsvbqgczvz2dfhKDwU5Ya5fHOL6dU74m5+CyKYyiqC3TbNn8v+SwJ
	 mLpArlY2ItY6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC3EC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171894914283.28324.9069486790114136770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22b84f5489f14e41b80826fe45643871cdbde6ef53f6e71ea6def56a0f6c8ce
Date: Fri, 21 Jun 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718949142
