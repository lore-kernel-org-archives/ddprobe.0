Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02613B599
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721745954; cv=none; b=YbTp5rx0H5T9JYWSzoFMrDIKE+Cr9TM2nM2IfHcIsUVhoe0AQvZBui8cAyCmWV5sJ9YsO2VKKQFOzQn+ZY+EP+gsIMVtjC82u721MPsh4wb3JhUCM8THUiakGxNXQagRtjMFqzPGMm/0eTrFhhXYvu6rP+SYJYbZqnJ3xmE4Xaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721745954; c=relaxed/simple;
	bh=AYJ9z8SqwPHnfrw1QV+gu4ainHZyhu8zMlUxzhweFac=;
	h=To:Subject:From:Message-Id:Date; b=N8VcM9g0JgzkfRYqhMLvaLOECgvFUzxnA2gy7KvbS/gW/p6HRHeuvE9VQ7zh9XMq8xtNoersbc9ej7KOMazxNP/ZOg/F8O4oauV2x7PFhkpjeosR9Hg8j6gk9rmFtb7dLLiR4/5Gw+m2p0JV+oftjZdR3u8CUqa4Mj/O4VfHfLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iv5odEK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iv5odEK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81C0C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721745953;
	bh=AYJ9z8SqwPHnfrw1QV+gu4ainHZyhu8zMlUxzhweFac=;
	h=To:Subject:From:Date:From;
	b=Iv5odEK6SUC7tVP7dy/drD14SluTR7dwJuQHJoZ3eksR2sX0r5Gc5voWFyPRdMsfx
	 vlENbGJPAqsbxJLC8PGkUmxC7jaFfT/Skp9GiSA40JFudpcsLALJ280Pxk2ROTmc1N
	 2Zfroe5PWTi376gIz3rUYg3Og0HUa7ACw51M3EiRSDU6wE7nL8cCNcU6ArCfb7apWd
	 t2B9IPxeaz2vn+UoFMhBfCQJNJdQgG2v2Hht54H9w8dWLimTHuXIVSray1H0hMWnOh
	 480rHF7464nMRt+cKwXnlTqovoHccvWTQjxGs1+XiqtVzylic430myiBDksHOO5/uM
	 wguq3jbV+OKHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94262C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174595359.18897.12899219786088680824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d897018a814eaaf7178c2a697c153e94fe66ffd00e6a8129035af60aee1782a
Date: Tue, 23 Jul 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721745953
