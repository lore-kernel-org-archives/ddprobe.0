Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD983B19A8
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776071254; cv=none; b=YgcFFGMWlVkELRk7GAy/4+8oWMbYiAIyIZxdw5VvvfxXMgryp/j47pM57yEA+PRs36BR8DcD2ROFrUEG21uwkwr7Otp9m3vJxqTkir8WP2QOkjy1HhSaYBnHGm9JE5EAcHXWpyPTDSxEeVKDqUNvvQ6U927aNMBxZVBCQWiER1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776071254; c=relaxed/simple;
	bh=IbYfnmIYzFVPvQCmB/FE/20ogdh76Pwk6oR79E5bQr8=;
	h=To:Subject:From:Message-Id:Date; b=rv07fHI7jzyPnfDJQ/KH8BR1t7yivzLazCXcj1SiOUn6kY8IM2eWqHzSpJN+nKtz54Ugsog5SfkhkgxpNZ58BacvBR2KH/VWq8/GrrjGe6zFw6/phXlXkujbmQK5hjLGd/pDtznZBrOEBG2QfWRylXU4keR/Vu1k2yjPKlXnc6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6eSUex6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6eSUex6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B804DC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776071253;
	bh=IbYfnmIYzFVPvQCmB/FE/20ogdh76Pwk6oR79E5bQr8=;
	h=To:Subject:From:Date:From;
	b=V6eSUex6jcPFO2CbugPWm3djU+f24U2/6IEv/DVEoYfTPY2FIaPzYJFnQddyk+nZh
	 nIthzzQlwjyPcD6XWkpQhlwDhxfWMVgIV0TpOEEnvGC2ZZBB1w+MrvdFO/HRhTFFV8
	 y75epP+VN1y9lG3O1Y+N24d6bYSt8+iltGmC2Xr9n3I6fUSudqgxUIJ4jfXknLtgCZ
	 FGx/L0Ipr0ESumrhjIIA7ZpfaOgRQ61c6FFrl05vsUQCAMipmSOq12MSSUgll46LqI
	 5iqwckFUUT2C2UuNGlWr1c2KkbIzJcaLcul6KR4ZLV6Sfo/4oT/ChwNwlXYfIC+QnP
	 rjIR1OlIw6Rzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5EDEBFD1E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607125368.1672.4266665836740280655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842df9d6f0a1b92c2bfbd20e3131c9341ec2d5a77e7308bc299072ec4be638e4
Date: Mon, 13 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776071253
