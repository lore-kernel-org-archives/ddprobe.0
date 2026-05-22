Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353DB32C957
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779426154; cv=none; b=eJcTsjKYFw55fEoQfxRKNnqnSnZbVJL0Uw++JSjoYPtdhNOECIejT7NsVm6s7oCBYQYr2u+Uqwxpx8ReT5/ZSci1KzemH45+UJdjrwP6DTNjZFQ8SmzU2QG1wRVAx+Wsvm2DGVDfPDIdDxKhh+Y8gs7k0MXMIGjKWA7uD8+MPG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779426154; c=relaxed/simple;
	bh=cnVS3CcPAhnmtL39BqP+EJEyE9B9Jj60iZJGB5XZiFI=;
	h=To:Subject:From:Message-Id:Date; b=uP9Rk0WgBfoBOrDLZP2lLFMsXsu4Xe0gKygjfAX+3DxcVzGen1LBSM7L1BVrqXrLNTGAGQCvyIGwhzqKRoMMb7q/ElYRB43mXH3nOjB42ikSUI1NeqRuXfb4CdzTLBhqsgp15Gv/ne03wpIdP9qBKwKy17E0JyPqPc1lxd+1AiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAhZVHKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAhZVHKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FEEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779426153;
	bh=cnVS3CcPAhnmtL39BqP+EJEyE9B9Jj60iZJGB5XZiFI=;
	h=To:Subject:From:Date:From;
	b=FAhZVHKLpbqciEfqUD3hd3B/oTqoCLtou2JADI9WYbGpwKFzjL/d+55wKWjtvcf8R
	 9HLkGyHV6o3vkWKAdCTHlAVTcQpK3DhthtsKY2xS4shMqbqg0jDFBA7KX3paE1qXSZ
	 hMNKh5NsTSgAe1lTqyQnbx9N4qAGFa6iLc+7GVlAqzaUYY6pvemS/THFDNb0LAjwI8
	 U9DufpXnZAkbQmfZFNWYrKzn4EyROjdmtTSO/8ckktArzlRK8kdRM26EEd0exbHohk
	 SpQ8bYcvyxIYlew0OebyUyAh9o+ucDMho4bwa5fYzeKD6f7uOor6H8rL4MUjI7K+1x
	 yBDe7aYTlPNtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC877CD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 05:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942615368.15328.2950194546773368478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7b8ead5f99ec55654bc5b49242cc2f16b92b906d6126534e2daa483e8332c5
Date: Fri, 22 May 2026 05:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779426153
