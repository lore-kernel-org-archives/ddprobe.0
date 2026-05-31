Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453BC2DEA89
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780251274; cv=none; b=Sac0+WpQWsp9JeDR27xMh/IGjh78x7F2nTEa7pRv2FqL2gq7Yip/jWTfigih4vpMi0nXmhM4uQ+MPIcf/+CQxsnUzKzH5t+3Lhu+XAKBefmKZ5mO6bH2R0en8b6LpWvUAQgIjPVTiErv6FhTZbPnLeOWo3wx+Md5MoyIM3+gDPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780251274; c=relaxed/simple;
	bh=EWDoF+jcxHtXdh2l0fhqyFEboWQv4p3Md+KxCcoAFw0=;
	h=To:Subject:From:Message-Id:Date; b=KQ4w1tefGX0Z5m1qnT03PLIBIaN7QEbdCCNYWgAViPDqgU4y0pzPJQOlp01w4QICikTSBG5tP23j1fdOB08FFis3ze/HZecJHlXgqg4hri5y3Ln7o7XJEm77hTC/fGn6ZAJfdm1FzTHJvvR/rCWg0fk8nzO1kqF4asg4Y4yr1gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/KlErk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/KlErk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A1AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780251273;
	bh=EWDoF+jcxHtXdh2l0fhqyFEboWQv4p3Md+KxCcoAFw0=;
	h=To:Subject:From:Date:From;
	b=Q/KlErk1xC7aDbxD+Y59wBiL6uy6+CSTy1Ang0jPVmIxMBdjBaPt3WN0q8aNs0oWz
	 7sDiUrbD8xp5bZF/1eurwF8VcPPBqtGUi+Q+xsGP6PtTVA0M3lPk8yXjbkpz1gLvr9
	 hS6BLHFkEHQPp2RWdn+hiq0x+bKwaXIDFVJZSlSD7ELz8On7n063CMc1dr4oLT8qAz
	 AYb1wkfa0udXXDAAGwaegAMtkD2jyDb5n8xpvjdg6u7P8wpcBaIeNjcPya7+pFV7z1
	 wXp4ejDbb0YxOlIOcizjRwQm2ushZscIj9bTXNpSv9iM739yL0E4P/9mvfEnLhSy87
	 taqjhPJAoX7Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF32CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025127368.8806.6433006087985721496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d023a9b3535b0f732c12fcc4cd1c8d8b4a27ec4c8bef3a9b63a874f534b339ae
Date: Sun, 31 May 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780251273
