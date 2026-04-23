Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DC928CF77
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776988054; cv=none; b=LBecOEbEy8wk1Tj7OLmgT0QjMArnHO18+aRssGh/UgGxU/EhS3YDa44riAORH2AmcLzCFBY2Lb3S/BQ4mRfr8qE4+Cd8f/0bnkafoZFfERTMIiWJecmzVnYm00xr/DcnoVnUSBdyZpwtMOeEfRkIdwzTYpTNUGql8Ig3YCGlBd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776988054; c=relaxed/simple;
	bh=kEvz6R1WBzNJvkI1tW1SREmbXDUM1vj1+xD1orfDEWw=;
	h=To:Subject:From:Message-Id:Date; b=YtBig17ZMmdh/XtTucS2nC/rTeQKmRFkCHS8DApgSPW26CMqNYZb8A1I4lI4ezVn+xCq1PWcpe/69kf1uQCOrtY2ZB8warVWtbhFZPm+wfO9L3ABD6uuUd0ODy8vawIEivrXY1QafGt2mWYhf6H1j3/2dkEGyuE4Wxn0TK8pbTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKA910t7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKA910t7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9C8C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776988053;
	bh=kEvz6R1WBzNJvkI1tW1SREmbXDUM1vj1+xD1orfDEWw=;
	h=To:Subject:From:Date:From;
	b=uKA910t7zugWQ5lDDDD+RisMBsQH+JaHszXWbxOZxrFOpd1aY30z41kggsB/6haUX
	 U8oV6rMhnrj4TtL7qk0Y51susLF/dnXUevO4T51XWPBqM12FDn5xoOUN4hmqWcex3t
	 +G3dVITAWvVhvPMADaHZj87bP6dSl1E9lONzOkSYgfPDq+/m1osXoJz2PFU+cg65tL
	 pfd337QDuyKRQU2brzz91dC5hy9gLG5TBvSQ5TPs6Kz2FH8CdlkUI2SR6ik7xMR3w5
	 Ik602+7pwAYVwOk67JtBHywdkdpi32xW/BGbHirPXFfNmu2lDgBGr1rptSLpqvpmRo
	 XsMj5RINYYy+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5FFDEE4D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698805368.3010.2170584685891410202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377e921679755088583c9035e6e7bdc7a1e2b4438b5a610cedd1274afbed4e7b
Date: Thu, 23 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776988053
