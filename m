Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AE23115BC
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785465634; cv=none; b=hVpXvQxxhCXo7z9/n1NqWGzD9plXwLZyQXVri65V6vd7tlad7JSPbbcv5DK2BSUilZIZMrnTE/JVNRpTiAy7FevArOTe7Ib1atV2CkJtXCgDglqWmteSP68Sm5qcrZO8v0pAPY3DQ93Hf7ICYnkC04QYp2NpUuAM9Q7ExjhOL2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785465634; c=relaxed/simple;
	bh=U4de1UfgsRfBz/Umq3sHGUx4p3BYBoOlVMsKq4ezLfc=;
	h=To:Subject:From:Message-Id:Date; b=MOqhOEkPMmdWEb0+8VQyiD7YFGIIcggd65NK0FsUaOO8o4MSZY1tIzMQJzvUZlGNVBckbcZdkAX1q0nxIQv6/hcsMcWs0EePw3hrci5eAQm1Q/VUXcwdGT9uFr/1KnbnYbSONCURkkGCtyuvs9748gYPS0fACmUXdoVEjDue/5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcIIyZny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcIIyZny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF2FC19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785465633;
	bh=U4de1UfgsRfBz/Umq3sHGUx4p3BYBoOlVMsKq4ezLfc=;
	h=To:Subject:From:Date:From;
	b=jcIIyZnyu7C24VVLc+8kUGjpPxCoaTuAbycZaEUuaM26n0QJS4Jp2trKxu6BQEctS
	 FuMsi5sMlAjXdaL91QSLFq6FDmsnC1VCs3KE6Cnot41PIx/0vEfUUfIeglSGSeLWjs
	 HuPVLGd19F9b0jqM5I5I7tCekGPG6gmPHP9YHdE74a1vzN7p1h3HMa4gO8p5KF2mal
	 AY/FMAm2YU1Sw/trdvZaWTAUk3tPAViA/eiLQbxaJP9cNQcm/Ny/jXP6Zjm4p6+3Hm
	 TUCPhq9LFIMCzP4lOxLGZP/yaUGmAqN2O1iW9dz6kkjzSNehdjAxou5sibzPlQJ8IH
	 /B31u9qi4l5ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2C8C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546563368.32377.5090315940449136807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d3338c82110c30e215499e3f99a8a23fe7e36edea5eb96d0cef16f45684ddc
Date: Fri, 31 Jul 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785465633
