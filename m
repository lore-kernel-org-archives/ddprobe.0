Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238DE2DF132
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769592234; cv=none; b=lOkp/tLcsIQKnGdp/86kEAY53/5KU1qr8VMT743HymG7BqVdKx3ziSdTK6ea8q4+mPKifQRAeTpMnD+k8q0wepPfvZYbWwxHVN5mmTGPvLc+RYC72D9yfkiDoGgq6FdF5E2OkADAbDgfeM3soPCsiXvIfLQD5apUQnMRgJQcNOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769592234; c=relaxed/simple;
	bh=2pNCXVtvSeUyaFCd5PvqTJAqr4DT4FERQlThPLSgmL8=;
	h=To:Subject:From:Message-Id:Date; b=j0YyOlYXzpJ1WNZnnw+znQFD8pvUAcEloOs2d/vlXmnE1Yf7BMwB5Hax/00sPIFG6X8rcng4p2Mp49BjgamstMy+O/ILJomdZMamiFJf0Cu9dyz29owwA9DkNfAXw+kcj8tQrjRGptUa0aZXjL9DkdnqEDrhfcrbf5cuIg5xSAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVsi+N9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVsi+N9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA30C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769592233;
	bh=2pNCXVtvSeUyaFCd5PvqTJAqr4DT4FERQlThPLSgmL8=;
	h=To:Subject:From:Date:From;
	b=YVsi+N9YonOZ70T/beDyYnwuJfvLXrsLgX2getvI6jmg4V0FeeBTbrVEJYKTXDvLd
	 pl0eqMN+TfbLgcN7LupLnUzBP3d0nb9pgIdjKFXt5UmjYwcG+VTm/S/Ngf+h2ycWF6
	 KIkYc2s0vH4TRpH5nrcjwSESiTJkLVlo40yH5xKP8EmqwB+uzWLdaPiGzQ5DyWfHjw
	 FdvzaIIiyToSkRBvhKBY708siEhYP5T/h3YnQ+w3408Wa6kL6uU6AdXM1awysX6TfP
	 M4tCvJSwviEqQGB37IAq0fjtKiCCAceOLvixiBBFzes4uCvbsft8a3AkxldKCIBosB
	 Mv8Uh6p2bu63Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E09D35697
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176959223359.16953.10314491719415859230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46adceb06d46d43348e74bdc18697f05471c0649c6ae781de420388d1f9e5f4
Date: Wed, 28 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769592233
