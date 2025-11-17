Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C916923AB87
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763374313; cv=none; b=F7aJn/A3FnRj6KfMeR6t8zBrJlOPEDKZZiT6VLJ1GA47h2TKJGFdzfPSnly5nljoLmxu2EMemTp0XaPuXfrw3tfNOgO3+SNvRosdLH+QaulGHlQAUT3EI56ZqTzQOFQ7VNjGLhNvZqkMZm+XHDat+Ju2se9VMLD7E8xTdbW1/70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763374313; c=relaxed/simple;
	bh=3vfkMvxB+qyPzi0DaenaBVv6bPY3u9kjiKcOcT6IcIM=;
	h=To:Subject:From:Message-Id:Date; b=ggsXRYDzGKepEIBmFOnwHDB7UpbuxGZ6l9jftiwM6l/xjVhUbjgU4jptnomVqd3lIzlmFm1hfykt5JTYmgmJHfV8728QBkk8qxVp0Pt1ws+bilCQUUhubygjn139InhfkdRCQkw9GKKoGxFRqrHnjXkObAUHX6G4rSuuAOj6tGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3hol8/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3hol8/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFDAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763374313;
	bh=3vfkMvxB+qyPzi0DaenaBVv6bPY3u9kjiKcOcT6IcIM=;
	h=To:Subject:From:Date:From;
	b=r3hol8/ut80RisOLrISpI91xaP4Ck6dUNW/+zvY3AG+WBaX5twsBhzSIJWX9LTJIc
	 vRTIsEmhf9Iggm/OcKx3kLzFxMlR3WqRT7UdjIxnaFiTGBF6YdPW58HIRtdH9sSIg6
	 MzlL0jP+mDX7O7e6w7j/y5oFvUzs1Fqp0bciH7fF7wkQhzFREJDpqmiMdBXBs9pHVC
	 Jcr9cMVEi8qShbc+b+JFZPuKHo1K0mOJ6gUQ6odiua1JiYQ+Aww4Cp/8YkZf92PBMu
	 wLnHLNMG8VT9NvbWGqgdyzfFi2E7N4jjOD/owyGiJtbNq6Ndoy0mCk4EKkAx7e2ywF
	 urk04XOK0OgrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C9CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337431358.18575.15051874505744953509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2433c0b91d5c4b90449cf30050b5f6d75127c66000d42aba4843553b36b82ef8
Date: Mon, 17 Nov 2025 10:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763374313
