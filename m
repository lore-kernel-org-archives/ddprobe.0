Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD941D9324
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748816994; cv=none; b=dbdsYw8fdnOZyP4aXX6YDG/bznw6VJ5RXzK02TjmYfN7N8daDHg7CA+y7OaYJHTjEP70GuMIYUs++1vmw07CSqqkGTrS+qp+bu31SgaU0iHZ732l5pOdXUslWvjuAOPgVtOWO1ygV9pMrjiMGEKIPOugz4BpIac7ElHuCNR7kd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748816994; c=relaxed/simple;
	bh=cEH2YrgvPtp6+xTcZXJHRi+VA9JHAUjOdfDgycrcpBM=;
	h=To:Subject:From:Message-Id:Date; b=qdhxjMTuq/kd43+W/u+R5Dvos47K74XqGD06LMGb67OKV4g3w25Gije+/w3FGGI/JGJ530QduyI5nQQ+KiNfuIV9tDHY40mJbtIRt6Qw4vAsRF/h6zHFx4hPnZpicL2f+f3UG3MnayOR6uzuApglKS/GmP3CavJCo7H4GIQeI/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVgqsH/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVgqsH/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A719AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748816993;
	bh=cEH2YrgvPtp6+xTcZXJHRi+VA9JHAUjOdfDgycrcpBM=;
	h=To:Subject:From:Date:From;
	b=pVgqsH/4sI/tQ9P17O+PRvWVjb32m9cpnJZ32atsSuIkORqwgWyxINFXMpTrFFnea
	 5H6l/hq7it4B5tXWnj0duMvLxnIYzgjiP13JMJcJDlbo4ZG+eRFrViJmdN8e7o8Qzf
	 iBhjTrv7P24avokst7PmkfoG+H+WcM3WZ4lVK/mmlOxr8oHVmOAKC5JJEJjQJllgGc
	 N8d6OV47hq6xHi4p5v0CaqnsYZqAleQCPQ+ogLbBDFgtDCuesJtx74lYhpbvGJbFR/
	 CbPD1IGxex6L+YDryUqZk7jkf9w9MLNhCIUpg5Mlki4CzM31EehlhbF6b3pQQZiVKE
	 s9DBIppjbScTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E9C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881699357.9455.12600855907741734248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2e8ab5bda21219acb5dc2e674a9c7a62ac10fb9db8eb8a1f836575248c94b2
Date: Sun, 01 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748816993
