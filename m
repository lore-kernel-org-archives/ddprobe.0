Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3949823EA94
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780359274; cv=none; b=eX6JMUmt2tYvRhU889XWrxAoxJ5nIQslNkUcbpVd+5xBdtgz4PdpuVLxw69nSMXzqxZweL3aA3RnzD6iucPWVezWuNqtgyVxO9kuzskPM5+rrNDHlLR4OUt7z2G/6QfaeDENfnpoHBuB1O4s1w0l3a+tVLB5qD05aWvPOnkrWIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780359274; c=relaxed/simple;
	bh=wTsQf+l70nCfIuFs4vPO+csyTH8KyM0vXzr8HhWdxSo=;
	h=To:Subject:From:Message-Id:Date; b=EoFroqg+bF9zt/wWTdnuKATZVxmG0IeksjnLgodopj9v6YdTmlKrfvqBvNGqAkrlwKhxniM68Y2bBfbNLxS/oJKHn3cUayz55ucc1g5sHiH8qQVbVEkxeiHYv0zZ0F5grHKt9xLqoFrqQ+6TbVh9pcxB8iqrB6RvIIJUv4sYlcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YonnQvIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YonnQvIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A92C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780359273;
	bh=wTsQf+l70nCfIuFs4vPO+csyTH8KyM0vXzr8HhWdxSo=;
	h=To:Subject:From:Date:From;
	b=YonnQvIKqYNvRpwGFF4pZQN4RPu7JNhFS8f3QSctWPOOjDQJ0eCltlbFSDttC8tDj
	 GvHnnb+nF8DasMy3+4RZVBn7qI61IYbgKjyyFUSsrv+H56ZEO7biaHLMcrBj54iHH3
	 mK39NpJIQHKt2suhjQjB+y6/2M6ttiOdoT9/LkRVqOft9WBZUMTDgRczO2dzeYbxOC
	 teM4S/tbfGL/DOTJ6E8u3ETO1yLoXB/XrD/699D9YnpC+fF9WVIKlmRNbVk+Hz14vi
	 FIp/Ys4OqiwBSw4Nhkqn6I7fZfoGNKN56dkEFlIrS/0oi17SXTQfYTow+Fb732Y0hZ
	 gK5eykmtZc8Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B65CD6E55
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035927368.17885.9891345477048651065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a507f40588c5f3e6233cd4495fdbffe0975a26b4629875a8485651c22c9ba90f
Date: Tue, 02 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780359273
