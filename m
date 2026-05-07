Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4147F34AB03
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778161654; cv=none; b=cfkiBhVu3Azn1ZlVtw08YC2kKcOb8gCXbpmA5DxEDKac2003tLDdJkuWXLNsehhXF7EkLjN5kkJ1aPQasbBLcFS8d5KRWXqpAxPh+bZqIhqHlGYGPZJnH2c/GvCL7+9J8/Qy/RLVT4B482mKNbkdilytnpuF6beGQnoxd9yhXu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778161654; c=relaxed/simple;
	bh=QQg4YcaIQ7e0WZ78DWzq/crAkGjfQ3CUuYIFsViKTAQ=;
	h=To:Subject:From:Message-Id:Date; b=Byg06y+8nrHzQ/LUnjDyzT8SE9nl6AyQm4ThNP2k//BV8yMGIXggP3O3F5ylaL6yTWvEr2LYa/TJOtIvHwTbQmwzlCRa+8ikIyH1eMUo9ECnvU03ManAahkCXfrt3p/BFrUaN+AKeLzY8pu8GEMuJoFqDzap2VoW6J9Ii9KpyN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qggrhDL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qggrhDL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A75C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778161653;
	bh=QQg4YcaIQ7e0WZ78DWzq/crAkGjfQ3CUuYIFsViKTAQ=;
	h=To:Subject:From:Date:From;
	b=qggrhDL1IHLbVRSxk/njxUSp1fUdSOvVH9eT6YkSc4CtcNG/hmMxGWQOjg2z5IIlg
	 dPqbNos15FzFUS9oewy1naCvLQplMyZHQ/mTc5suf7rO9+cP6sdcvubmsHA5yPW2q9
	 GCuq41HI/2oGfe2xQHXxw3Rf8NzTTAc4lZa3MemzyL7ZrTWyjWmIz012QI7EQb/e5U
	 X+76Ndxovs1Bx8i494KtaD+eiyHGMNmaAAkXKwpm0JiHQYo6+WtyTGMmJgIHgXnLfZ
	 evsTJrevplVmxZt2KepFi8Beke0VUrHPxMiP2Efy8EQ36Tz5BW7+dqFOO3Dq6aXRaq
	 eY5IMtGZ9EHZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2464CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816165369.31397.11739702808837034720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2256bbf2124b0fd91d86d9130f0ea83b8b674b0aceaefc54a65fb18f649329b0
Date: Thu, 07 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778161653
