Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1392228D8FD
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771370094; cv=none; b=mqC7QthnzcsgmsTP4a6cGxbQDFVYMOC1C+dXNHPqV2uM/e0guTQUY8R8JuiBMvRuY9JQGEUEw5EMSJo1Nf31l/xE1IfNc33CdsVRPI3YvAWAaeSryh4JrzO2Qf/y62L54ABbUtDNctlni2lMhveYv3pNIp82nmEJDLLvq9xtdIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771370094; c=relaxed/simple;
	bh=iLT8F/v46T1OD3KTUKLGzVyyL01oB38zGgDHnSa1OrM=;
	h=To:Subject:From:Message-Id:Date; b=jR6NJpbLQIWobRNSa99vLKWTDTB+ma8v9ktxgtMMvDPAEYZWeGRoHgC0GELz1lvMUviCbdYeX5/dOCLvitT0ZEJ3gHeJkRV38FMxC4BfjgUngRor/298jmH+NeNFAkC0Db7mkXKkYlQbRV/yeOiabTbYr8v+AQoF4v2046p1nks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppGBmr3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppGBmr3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA1AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771370093;
	bh=iLT8F/v46T1OD3KTUKLGzVyyL01oB38zGgDHnSa1OrM=;
	h=To:Subject:From:Date:From;
	b=ppGBmr3lgW+n0OoIdzLf73/sB2n1GhBJFp2uGOpeu0yIc/h2ckLbo3LxMiU0wQK+A
	 /ZZ+vpPxesUn0oqcIYB8GNJ8+CsntWQ5Ie19abFl+WpRP6rqje3HS3g2xxph4/EpIv
	 ZOMt5+H4r5IwH24zJHGg3hpI+O6/7MOpxKrzgZ3ouKyKX2K9RRXHkYxyzN8RE44bSU
	 UnAFxGktAYd63T0XzTFWlvq4smZmTkimG+x+r9okLhwZCBZUiAVxHJqxd26mWvRdj2
	 ULeAiGQSmyGxJXUM5XSpMFq8WNVfk0SxSmL13jzLc2p0ls9vpLpFJBFUcWn+u2tgxh
	 lAhUtOoVW6org==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D98E9A03E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137009360.26309.3970476443933631541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b9e199544db60681970ebde45c7791d8cb48bc6e45b4fae5408e6ed742c0a3
Date: Tue, 17 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771370093
