Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEB3175A78
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774789494; cv=none; b=hgZHZGBn0PY4OUeWMCW20EpFzHRukdr5IUq0GSdowaHZhOQzkNyL01OMmzGarX8bXylTvXgMc65EyHv9vzLmR2yubyWXKaDTuSch4Sx2oB+QUGvpAou3qSg1w+Tg9DdXhprHxSp7+VdY8MogOr8kYD1wmGMthxJk3+rM3P0mPJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774789494; c=relaxed/simple;
	bh=jf3Dd3Jm/R0Mn8ujct63W1crJx8Y1hJLsYXLwMu0y3Q=;
	h=To:Subject:From:Message-Id:Date; b=RfoZcSVvNthuA6AS3MjIfYqxqjFhVWresloD06MdsN0U9jlKUKR79ZNdMCfMQW/b9XjfqehTB3R0vKl0VrfC+/Sxlhys+9W7zzpbfw8nNelHiickvCheLQN2Fgaa90rwDXtmGy2UhtbCHXaaslW8iV9UElrB+9yWZhizmzULqpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn5Q802n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn5Q802n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0469C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774789493;
	bh=jf3Dd3Jm/R0Mn8ujct63W1crJx8Y1hJLsYXLwMu0y3Q=;
	h=To:Subject:From:Date:From;
	b=Zn5Q802ngXxI0tJBpZYMZqPBvM1TmuJK+mU5aZW0R8JGJnjGwdBiQdezrA800jaY7
	 9hthxFBenG/FDYIlWOfp1evPTmtPrxhEsro9lq2QZ5hlljctcufZRfP1cZs2LvNw/n
	 7zelS2UNV+l1bdQqaoLibBpiQLDhjHPvHTv8FPTX3CUZFCKd3timVU87Lv9YiCF9Hd
	 IUUWpCVpb1N1+4ogN6YZnSzRWykF215qp97PPaN5EO9JulmO/qDaxmhu6WZ8LWjfeG
	 mjFnEdvTwm9OuHgdXUuK4lP6vjwSnYKIqgcS0FxhvFNDVorPpnZesF99db0cbZKOsT
	 YKx1vtYQtBzVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D20F3D603
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478949358.15007.10706322307395798689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf82e754d3fddc42fac7d699c05189b9b09c86a3e4d34cee7d5a51aad27c7da1
Date: Sun, 29 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774789493
