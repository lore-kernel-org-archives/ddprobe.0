Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3E2376
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729391754; cv=none; b=q9y9JRzKCSt37dSG9zS2BSX2mIkTssc3852nygGNmh1K9a6f0QCzwZEzGBWGh/U/vO5tJOBRZRkwSi7ox8SCpnyQa5y77o1B7ozaNeRdTo4CcUeD/LnvYqztmfOiY20U97J8qRPJSpMfx3bhzd/UnhSug4r4/H8f5btihLnF8+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729391754; c=relaxed/simple;
	bh=wd1bmhoWw9tqS3rNE+aaKinyUroSecBZOBQ3XMH34dY=;
	h=To:Subject:From:Message-Id:Date; b=heK/849M/3+LBiHCZE+XKPIb9whMc5O3BflO6jy5VHmXkdo5bZDxF/noW7pLF+Z7f+p/g/BsNj7joFFCez+w+/I52hOI+Vmhhm7gf4ecZmT4WTB7mr0FI1p+AI4eliViKAUbzVxeoVCnBAZvu4p7mrAlmAN4AQ6O6EbU3XRAKGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fR+sNrh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fR+sNrh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC12C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729391753;
	bh=wd1bmhoWw9tqS3rNE+aaKinyUroSecBZOBQ3XMH34dY=;
	h=To:Subject:From:Date:From;
	b=fR+sNrh/Y7KH/I0crXr9c0awje0QcnqdkxNFtybLr1rRq+I9IsIaaBkGQ48oJfbKj
	 GD3sDuh14oUZqq+nhitgJUyhAUqz8Ewr/jcbDYtyp+G8TGT4AEmTApkJ9L25GtUF+c
	 2TE6xd9l1T/2zR3FAd/dcEMsZ94NHVUBit0t6J+PgxWOVJCsJmu/uOU9anqi8rLDPf
	 jHBTUgxOe9PZprY1KXQp1y2o7Cm1LW4Cb836P34ijJzXddbpii5hyP9sh5+p1MhZVE
	 zpofkgvUBn9/g+9+McQ0CslIgZCXAS0qWl045dS3O6hTEi4ypwua8GWEALQdVIkysc
	 WItlhuW0a8K2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E99D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939175359.24520.2002156334791379686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf5e733e65198bcf06629d3181b1773f5a35abcc0a44295b813ba8fbadf4ca5
Date: Sun, 20 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729391753
