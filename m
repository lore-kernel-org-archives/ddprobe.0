Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9BF13A244
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782622114; cv=none; b=teWLeSVw519jMOS65l6ViZB/FQFNHaSDtGXYjYHgWEO/FiOUg9MD9ncsrz7AbTgEhgR40uEk1XU/8gVRo4WzwQmy1pCrDDVtl8lg86fQh1FsGZSw9fN7hzggUutxBlIvNKZrnZ8Cm6VO37wsZe4heUqHDBuB82Q5YcbgYPhcRSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782622114; c=relaxed/simple;
	bh=/aSUuSZwp63Tnx/BmXZTwI4FWwXw0StyesfCqG6ivTE=;
	h=To:Subject:From:Message-Id:Date; b=knOXWeAzpK8pwLRb6lh26V20ZOGu44FDizkLwRnkSFOs+qpCDv7YqqthgM/BI/61aG+H6db4NmZUlnBHcGC57aSWPetZhfntjDb3m0FVhk3NsOoo9UwmrCKDl2GOtlilMfSbIBQXpgyzofQrm4VkPFe5SJPHcy9SOgQ0j9twocM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Do0h6Uea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Do0h6Uea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA755C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782622113;
	bh=/aSUuSZwp63Tnx/BmXZTwI4FWwXw0StyesfCqG6ivTE=;
	h=To:Subject:From:Date:From;
	b=Do0h6UeaPBgnCOiSyfTwHhrI50tSTzlKz+jadBYcUah3I9Zz5d6vwZtktMfeN+5Yw
	 jwUaGaKpM7Yt3S4YeT6XUdCVZa/s/FDvLYijUyoC6u7irFqgbsei+yNsqo8c7XVP3Z
	 d74fNiS9zZVQSLfGskZapRsa3ewm3KYD6M0VN3C418xihj41i9KbM4FUo4jgWqyVRK
	 zlSfDYS6UUQ9OLG+0DxJVxQvJurBB3EVKJLZCRx/HZf95LlX8dxJzdJdWbOeABML/H
	 pF6JtrV6uPt+vlP5uag2OKLSdtM6LR5noltMlD6oee32W1o3nvj8LEFjfOT9hlfWfD
	 0NcXnjjUDzvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E3BC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262211369.5354.3605879752542736508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eedf4fc216ef338e3c50082292282c98361915bbb095c63dd626c44b06d26e5
Date: Sun, 28 Jun 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782622113
