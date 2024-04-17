Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9681C53805
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713335963; cv=none; b=auq/kKkwb25DXS0MeX4q31FJuKjbeNnkruZEGtC8ch9Bz3qPtIkkBJEpFVrPgpQXhe3bWdBCn0pl2IVF5p6qRJVBTITr+PyXwNjIjoMbIC9ACQrzyv0knN1uptuXlVx0rds0jTs1QbrT2F9XrS2e/YZjZQ7lEDSH7idu4WjY/SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713335963; c=relaxed/simple;
	bh=sz3tYJjDyUhlwlOE7/Qs46tLJ+HWpXwhxOCCCYPju8o=;
	h=To:Subject:From:Message-Id:Date; b=pnkfOEfZ/0ORU6Ro7Olwn8F7Zm9xKCqvUqvLcrhoHbSOyabtr0ORh/j0K10mxcadgrsz+ASjtmtr0TDTrrVoVotHe2maPxtiEMPfirvayNATZu74HskRVz11XKw6q5l3UKyE8X4jHg21DDncumVe1bbE9tXNS/qvSAaoIjraLfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOpNxvL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOpNxvL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECD0C32781
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713335962;
	bh=sz3tYJjDyUhlwlOE7/Qs46tLJ+HWpXwhxOCCCYPju8o=;
	h=To:Subject:From:Date:From;
	b=mOpNxvL44GqHgBF4qGeP/okraQBMN68aklguvegkVMJsoGsMdaodPepmRE9pxT0W6
	 vbp2aMR3TRuaSFRYAwZLhhls9jg3DymltRwB+bD6BhWSvd6/rv4e8HpyJ5e/nmi3PL
	 5TovgzcgbejoXGPggWSCHxnh2Sh7dnGtcjP24byNSlxGfMvhUWLPQoSnD55Dctgzdj
	 YwbdvHqMv3mkrcJpq6txqdJVKZCjf8MYUXh83RxHyXIimj6Hzs6nQFnc1g3qxGy57u
	 zEwXzeeyw7GZZrrCRx1oNgwL8j50PSLcHUFCkzW6fdp9gGFrGCx8XyHlPs5fVZ4Wd5
	 4X2WnKmvhxCow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4897C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171333596279.4502.3338112478526114400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c3f354556a1e31b082c6fb40947268b8135940992b49ccfdbaa9327ce9a1d6
Date: Wed, 17 Apr 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713335962
