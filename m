Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1299C3C278B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775159734; cv=none; b=qhCVrCQUWFpD48KmrV/SF4zS47pz84AWlm+OS+bnJRgFZQSnYMcTWKh2hssxO3PuEksdZwQRSUHIF2JuTN5xFpfE1QPqhiB0AtvwYixXvDmkmy/FxpgU2EtW44dQWK6GbHBjScN9Ag4nzxOANrzh+YipLzldvSJRTm2bvm2SW/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775159734; c=relaxed/simple;
	bh=dDBoBa8LZlpU89hZiXPQh4PUTPx64LgKdQKYMX6QvrY=;
	h=To:Subject:From:Message-Id:Date; b=ayCB92N1sOg3CQW0G+GJqmxzvGhUsH9emzySN+zQP0mnLo6CyX+DxJAOt9TC0oLTry3kDw6qDpU0rqoJ5jy90mc8qV31BY9aChFtZ5hXOmmRvPIOBPh08ZuetPgfkHJN+I/qf81WRTJjG2OQ/VtgDDKUMde9y6ZKe+2vqEjZocc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2ocSFBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2ocSFBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6353C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775159733;
	bh=dDBoBa8LZlpU89hZiXPQh4PUTPx64LgKdQKYMX6QvrY=;
	h=To:Subject:From:Date:From;
	b=V2ocSFBEVjrD63WRT28N0nDOMOf/gGrJRfIpX+vzAcojPlqClvychVQY/wGe2EmCL
	 tNb0Rq3P2+Pln8UHRw5Q76sbXnOpzCNfYXWyXKQssCRnaxDAk2TLfEsCX3otdPuDKC
	 E5I3koIJO/cLs71JNSj3MLGR2rkyCEYh3YVNW2t9mcN+gTYRTemoVQ8ewGG+ZyJ6BQ
	 Anf/l9rOaPXPhlawAOPxE71M41+J3bxvyqgRupkOoFElycaPC8zNHX+TC6ju0bGgyi
	 tRC0RORnrul3zp1od811jzTOVyvQ3qqhz4FA/2WJ1F/BSvwq/q/mphUHqksj25FZYi
	 yPrx898Z1YppA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6723D6AB00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515973373.28459.14610777000071777076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8eca78feac16a4e232785e90f4c66d42706910e7c3162cbc3ee82b1113f8ae
Date: Thu, 02 Apr 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775159733
