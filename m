Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0377334BA3A
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759751394; cv=none; b=KugspRctiZqS9bIsvXpZ+GBj9tofsOOp6oYNrcnsjq4LQ/1cu5fTivAHMfsXGAn5QWbbtyXO7bCKC3o3WrHqlB2AtCZkyGFUJNmI6bm04Dgg7CojsslYpCRnEw6McdYtnM55NKPsdoMVGmMegfo0UOg4oiZsIsKqxRFGjNy6NsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759751394; c=relaxed/simple;
	bh=Auxoue1kCcHvxcW1ja3WZZ9u+q+0xv6MfHFVJ8v0KeI=;
	h=To:Subject:From:Message-Id:Date; b=QiA/REKt1GTmlyA/9NsVMOEkO9tqwff/7l8KVAIjUk+PqUZIcjaUE4blsfkbxpaVs1pfXk5g+Cl+0xA5J6KPecQ8nKvmXZVLFIPxqe7SVOjrxvVgn3g36oDUtllcRJ4V3FUT+5odushtlLsEMhKkbpfmu5EAGKMGPaz/mk4be0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAE8Uy8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAE8Uy8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A8C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759751393;
	bh=Auxoue1kCcHvxcW1ja3WZZ9u+q+0xv6MfHFVJ8v0KeI=;
	h=To:Subject:From:Date:From;
	b=DAE8Uy8goMJbX5WBIDUchsqREhRvBciaoTqfkL4pqfhOmFMI0G18VkRYfVnuHN/BQ
	 UKDZbY1EUBlty4HYhGQMow3e2me11Nv1VLt216Klu5g6HHh03MoeqHftTjfZFrxDDB
	 xuz6b/bog3omo06EOkVLT7gDySJWjd5l2Ncu2+bPPUSMRijpQVd2blKrrIsRL0/XMZ
	 ShSBXzclx391gVMpiNDyvYb2B4QuZwoN2f8nWmFeWzNPeCiSUIqKnu16OC78i4qJs9
	 nQ0Z4stC79QLt9t1E17HtToD4g5c4hKHQVdkZjiftAnBAAkBEH/uNnbhcZBi9n3z6Z
	 otpCmQlpt3hxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87ACCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975139358.30855.16016459971363966917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe0d939bcde15e08da1b0d20181a3282c45341cfa1e66c82076a03336c85789
Date: Mon, 06 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759751393
