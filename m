Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDDA248873
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773210294; cv=none; b=hbJqWkJy0ClM5UR29gblHptHuFp+RiMN/rvNqfelBDa5Ng+88Y2HMGIp2Fgn/o7xF26sEOx1MMP8ObqcKC8VQmWv2S+QkbkvGVbAhM01twyzM+U3cUoqCZk7Dhj9C3h3RtyH564MZlV9YmilxR8cDGpV40JwVZfbjIKz+oHMszc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773210294; c=relaxed/simple;
	bh=sGPHmvHj9ywK3cFhE1sUkBNdzeH1X5VO6zHwxt/qHJA=;
	h=To:Subject:From:Message-Id:Date; b=o+vsYNsodcNimNvRvZFgT7rYCal6QOJchKCQEgDod4V2/4cdB2Fsf0hdEGb/fxkBV2RsZfQihn0oGIqcMnlaDPTURiv14atUS2cQEET74q1iGbHyt599GchJ7JYIF0A5q+QRvuHnyCDp6V9UxAXRopKCogEIkMMt7eLZwwqoeY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I10rS1Mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I10rS1Mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D7DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773210293;
	bh=sGPHmvHj9ywK3cFhE1sUkBNdzeH1X5VO6zHwxt/qHJA=;
	h=To:Subject:From:Date:From;
	b=I10rS1McY+ADj3kvzTS459OLlzP8JV4tvN7cXDeDeSHeTRY82/1eWDV7IFJEFIe+z
	 T4s1SPeTn/eQ4vWDECaLGysMrj1i7VKWYtgQ1iOp13yHYxlCMUSduB6g3d8E4du8JZ
	 UyMw9ctMiohYe0X0F7EJEy4mvNKMKfdRzC2VR12sK5TqqLXhFx0d2Gs+faP8lMx1p4
	 vRQoSUUPyf8OjOTJTdwOXjf3QF7+0mP2FzB27BsWJ61F1jIAZojzisMcWbQfdWRySP
	 mZJ28O+ZDu9m4nju1J8xWT+rM4sYaBhKy/ZcdvYrH0ExPhKISBozgL4D2TG1J+emzV
	 gNkxNeGio5tiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF46FD0620
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321029357.7088.10593145096391119701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d070beceeac59ffe2c3e508c42b196c8c154bfb07ef56cb95ff544c5f2579ff
Date: Wed, 11 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773210293
