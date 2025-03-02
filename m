Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350C21E5B9F
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740934134; cv=none; b=LD9EOlALa+4EhlBCpkC9BqfG72ro0W7iPGuCZOMboZnQIUYFjmOJhzWcxSowzjwKBGn5XfMwb25eSbZp1Faabeqr4qH7PgxGMiwd2TIH4ZbDbxkACGi8TkN8pqSU2sqsJpa/jHbvyQOS/qjzsl7dq6lVkSQEJRep/6leWCg/cZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740934134; c=relaxed/simple;
	bh=5BNHA1rQHuL3FkbbEMpAydHF7cAnpPzoIvInmvxpfkc=;
	h=To:Subject:From:Message-Id:Date; b=C7F3CJlLnRktztHHjrgnv/7qZpyB6/Fv2+A0DbNJ3kzYWBVrTj8KNsGxFDtnNluMSqc6GyORD9EpSxIUzusVnJK/CjPhRy1K4jpifxJoxyl3v13HIrqHyoty9muXyFbR2wsBQM0ZSJaoIGBS8IM7F+qRiZugdBYadVUU/C9geTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKbe864e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKbe864e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F254C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740934133;
	bh=5BNHA1rQHuL3FkbbEMpAydHF7cAnpPzoIvInmvxpfkc=;
	h=To:Subject:From:Date:From;
	b=nKbe864eW2yOMFGgIOyqbvxrCZrzsKIWLsfi5pFWoJpGMc6f4AB6U/617jgPHdT3M
	 yGKRFGddafpBH5iNRx4AEcKOe4laixZgYhvjLifBc7dO609V/HZdOGKCTftxjZCii+
	 D68sTR3zz986YwSHXov/wRnqRtvuvc7G/5qDd+GbbyHJLaALls/+sSyhrXCuPuXKJ5
	 vT6QOygU7j+ZhyqQDyInJB8mvqi4UN61eU9YiXiT2ZAQeLd5Z2zrwIaW43wu68FYWq
	 x1zkhDSvgjzyygUiGhgtsfd8E0NiAYY/5V/BEXVx060KPifT8Khlj4/4HGfGoHRXi2
	 LRpO3iiaVsvmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188CC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174093413358.3616.7610187025353220339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47be14021b3ed2455b96d94175e7abbb2d7fd2134f52a151770358552d1d8bf
Date: Sun, 02 Mar 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740934133
