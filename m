Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403CE14A4CC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746588594; cv=none; b=XmeKw9jX9tAk0XULKHGpU20V/t4eUZNGL1lxcpIrwNp/OxD95Wt9GzGVnCjcQE09XA3v4bMNv62zuJHzxcJZfvdh9uzke256ZXbbhVg5C6FZZzVtdwFjsNIYQrhHUig91rCv0QHcp5BTG1eq26WHqniRp/8dhWawhGVbCZbgPp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746588594; c=relaxed/simple;
	bh=XMciuDm8yJmJM0gltzWuuUhGRT4PxSH39ET+Hwf4cEc=;
	h=To:Subject:From:Message-Id:Date; b=TiXXAI+QlbE4PSiMUxxROKXeLfGdwVJVPmyoKn8GwEIyf6+GkVvkgVrfQlNTcOveglJt8VshPlBq2Qd74pooS38WpQmerUUh3jBtxBiECDfVVS/lM3BTuZQL+zOJres3t7QF9VKdRNO8CA93Pn1d33zi/olpfTYA+qhO0CclXi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8T1GAtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8T1GAtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85BFC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746588593;
	bh=XMciuDm8yJmJM0gltzWuuUhGRT4PxSH39ET+Hwf4cEc=;
	h=To:Subject:From:Date:From;
	b=N8T1GAtSp5krUvXx3Xd/LdP/ea3a8CFx4USkFnRHCWEl9egD92hUmpZf7AkYyuMxa
	 VSfQ0m0B/5NFcZ9on9qIxsgLVJIm4C2DLMLDg6gV+H6XwKseHjYfqq5asaRvvqk7re
	 NdOUmQ6ZfbJT0d0ZQY5V2pm8d4UXUf7gyyrxF5LoFYwP9/pavPc/CC9R8Pnkij5xoW
	 yEjtMAlU/hI+3oCW7a4pMcqXqy65DEglj3F8EoSYbMJEMw8O9KieJbY7WgDBuM6xJY
	 QC7KvS0uz/CunC9Z0NpV5e96KnzSef7F1PIVA3be2v8iqtRNvEuM6fBFED4YU/Qy+z
	 4Wxd1yGilEmZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A30C3ABBC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658859358.32402.10114751649832934516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a0050d06a62df984a381bc3d5c757c82f7bd1ed46319942563c818be83a2c0
Date: Wed, 07 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746588593
