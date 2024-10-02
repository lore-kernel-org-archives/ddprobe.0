Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240951CCB31
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727863554; cv=none; b=lrepxxLhhbCI73XJcxuM6KbOsaH7oJ5AJ4nIlyi+Ta4iU9l9s7YBHyS7LXWVSiKhQMNUT3jCOzrFuORj6J0ASbhViOMnBBDyBW3J3LyZsXTWwni0dUbvDr08HUs5Cqt0jClvr9SVVhJ7TW6QxFO3Y3OfHGL8BbFf7q3tccxFmek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727863554; c=relaxed/simple;
	bh=zhlLZtXzqABqYq8Xpr+tp8KROnns6VBpsTQR74gl704=;
	h=To:Subject:From:Message-Id:Date; b=YqAcumOVkFxf6rqWQ97RNJ5Sy+EZYzcrwk+6/nRJ14DefXp21KtKwPyG7lSQ9JMx8lPDbflYs338P/+Fc4IXI4qVHT2CkXi5BWEb3jefrttAmDELvuoxzKmHxcrqHlfth7hb8q/2Y+4eXl3kATs49fmQljyg98j6m0aqKpqGhIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPa672hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPa672hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8200C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727863553;
	bh=zhlLZtXzqABqYq8Xpr+tp8KROnns6VBpsTQR74gl704=;
	h=To:Subject:From:Date:From;
	b=mPa672hrbym1MKbPviKhQxgyt3aB0nqDwy1CcM3/xDqjtWZY6bENzg/NVehkL4QiP
	 sU0l4s/n1oLFgVEDyFAL6fFFmRBx2N9U5U/eCY+X3DKan9VBoTlhva/3fDR43Kxadg
	 fnbN5HiV/LUhnR/v/rFlMstgK+2VwbGllBF3YvBWVPMrIL8hTvRihya8LEF5nVLlab
	 Lxc6Paky6brSbA5Ld0gj/WerJBscgYoApR4kd94P2iLlDCNhHR1Vg6fvz2eXyZ4NRW
	 NQ6K5U1YqbSU8sR6VzpJyXJzfbh7bX/SYByZ4E7wEEbmEXa+wPR4rekv0tGtxKkNhk
	 6i4R/TkNc10hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984BFCF31AE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786355361.1468.18289220100030883822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674e88b4fba39e07fdfaf62ad7ff4bb7b48e1d25197f7974338148f7f2961d70
Date: Wed, 02 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727863553
