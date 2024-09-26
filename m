Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560D158851
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727352954; cv=none; b=GAMGFyenbffSoTFiAmAHV4ldYtWiXyMcnFbIGjsPk/5lpmKiysBfE8R/zFFS0ASECsxcAYkCQknfRXATkKsaHUXVuGat2wE1T8CxC75MlsKcNI0l8T7Vl+F13HZ9PBSQADICZGzhZmAuBs2QwhtR5uj+BfwH+CR7IGtQuRx9bro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727352954; c=relaxed/simple;
	bh=wpMBqkvto14sKJ6BQ0JovJZqxXa4dbZYPDfMRTCbbro=;
	h=To:Subject:From:Message-Id:Date; b=Ch7Beil2tTtDMLRHdoAFTb/dgMqwDXfqDVjOEaKFfpXL/YXJoA6xlns3zsL2yVdzegVkmzevPWmgc5hLC+kLE7Tw1+goXDEwevSpw5nKQZxqy+1AOL7t7Ck0BmFg7C664SJimav+qJEBS1ukoeb50LBv8AloUJMJUqinsgMybIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2+lfrpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2+lfrpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EF3C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727352953;
	bh=wpMBqkvto14sKJ6BQ0JovJZqxXa4dbZYPDfMRTCbbro=;
	h=To:Subject:From:Date:From;
	b=r2+lfrpNkxRFOrFUvsFjYL5806NUimqbBBF8aNuAVUVqUa2e/jpvilSG4DkXvFgYr
	 Kmsti4hmaj7qRYtwqu/6WQetDrh8/hB+0iR4W8+sBebgcurrj+vfzlOabb1KN7GyJ9
	 fa1Pz9bHSX22GUVGNqpZOWEb9FwBxPo6Q/tDP0/Ajt2zwi+7rzOBtki3kQbaSSdK4s
	 aeaKufjKuwz2mI/QscH4CzvUGrCu0q9TpQG4CM85Rf6S1+zn+a5emwXLhYS/KSWCjn
	 SOx0YFs4L+VFIF6OqyKeBVW8t7hIt7iT9iKWnXq2IlZ3CxpJOYYnfQ4k0E4jvTV70y
	 08mHyKqqhPEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91116C369CD
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172735295358.22992.12768598365953639722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c500573a750a8fe5bbeea26b8fdfb795d25f98edbf1f1c1884b25c77f411b8ab
Date: Thu, 26 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727352953
