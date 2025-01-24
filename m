Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D358F6C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737743154; cv=none; b=TeONgSu9Zv7LW/z+8Wd+hT66fcHIwreWSGkj5QVnDRCN2w/tfuHVh16itY3P/J2M36Tr23UggrE2ZmZ1hU03CNXw+NBDHi4G02kpYTeUG1GE/0IrEMN2if0M8unncNwGvwQvRybU16zwBVALq1TLkajpTNotiU635VfMCawX5x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737743154; c=relaxed/simple;
	bh=J+TGz3xaW6j1cCpjNDw2Am5IGdQYO6/G1GQauJeCZSY=;
	h=To:Subject:From:Message-Id:Date; b=uaw+5T5zGAn9EmZzkZmc9x131eWTflu7jE6P5hE3nJ3WODFPGe+76Z4fwUfh6H1SHP4ceV04pTrJdTl1RTZx0BNYP0WbZscLbxyMMmYvDvRvD2vZNT3WSHoeGJpEcOAgAvCiT4I2ZBLPAatPR2AaKjxDRUhq6uVdGXvyzKqjEE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyfwaArA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyfwaArA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB266C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737743153;
	bh=J+TGz3xaW6j1cCpjNDw2Am5IGdQYO6/G1GQauJeCZSY=;
	h=To:Subject:From:Date:From;
	b=HyfwaArAdjzexldTQ1NrhdzpO3p+qgBzG8qayFSOheBtm3uDs4llpfDeS90EPKiPS
	 bUvO+lSF2dSWoE3nXszN+rVXeKVBnjNbLnZKdPuFJE8IrQUYuTK2DToejbOjhbMvyA
	 z9rH6MyIYNAOcb9ZOqSMkNLPyxkRsyRM/T3jD7bgrEDKM5I6i7JxLRoKyIJVYy8ed1
	 ta5u7xfRejzE45TqMoM+5H7vcBMctSk8o4DVOA4pLfl1JV6LrgDiRRuR3XhUz6PzWp
	 o4BH3eSrjGOGmSuuRfTW3ceRgpFJP+3mJtH2gpSIZCIPXaTznGps3K8Vo8ffqAqzlJ
	 0q9CaYcoHMdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97946C0218C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774315360.23502.1246703565759201107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8445fba973da08c95090b2e64fef04c6fa0bd9c64603aa04dac9c77a7882703f
Date: Fri, 24 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737743153
