Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F8F332614
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775742395; cv=none; b=OOfJHiWNi0bZeXiVhJAxkoMmGMsrlnCXYAkL+cYDB7umgN3Zg7dnZjr3cBfbSWY1C9XlyHrPtKZS4xHLgSgTd1qy7Mo0DYnUQ97gwIlTApaWTuG2LpE9ANH9FxjBSImGFpZTzndt+b+A5bPU8khhRTCHpwpD1lEPYpS+vCvTOCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775742395; c=relaxed/simple;
	bh=nzt5KmR7weQckZzkOezvOUnbGvTuJasMc69DGMrDsnI=;
	h=To:Subject:From:Message-Id:Date; b=TBBc0ztStMWQGD5NKMIwVu9he72SzXtAmijQ7vvBXXOILJ1Pv1iPjFAWjaY4uSYPEzKQlbAvhbIWr6KDyMMDQS1t/JoEF0x8qa4aVrGgQIaDS5p5UfZzT8kcKHprczBuTH2SqmPwGLHjDjtllvoNuKcwWKQqKNKLrNDBQ7Q0e28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOclo7/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOclo7/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 49EA1C19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775742394;
	bh=nzt5KmR7weQckZzkOezvOUnbGvTuJasMc69DGMrDsnI=;
	h=To:Subject:From:Date:From;
	b=XOclo7/9H9w4+x6036UNdJX2gNzKD6C0YH7aEEyoemOIaqn2IN4LBRtWdNF7ADd4k
	 t0vkcpHVCQdG6ya8a1kfWESj9zJGN1nuBYiWvBkqFNcCRF1eQLGImllkKTe+dJt5df
	 C0CZ5XJpDLPI1nqCCasRL3xdRuJMbZqcjky0SmISfOr0v39LacaTXB/GSBac2XeC3L
	 xHqDXYy06qmt1z9XucKmqLsnwUmU6kv4fDik9ULvJDhFAOt7oL42DxWpqSy47gbU4x
	 qNLHgFuzWzsshQTzoQZifSuBF9xS+IVrBHFdLa4qpDRAYoN3wyKakccGFlr7MW1zOa
	 c9os70cnx6Nug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04C61EA3C59
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574239398.32225.17298287722053413558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27de10cb75dafc6bfc029d998a836dc0dbab5a0807e7ab00a915209877802cf
Date: Thu, 09 Apr 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775742393
