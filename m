Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C93820B212
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766120034; cv=none; b=jvo1KkJloBysn9IES+3eeO2VhAl9x6PsouIbINXYPkaguUdqFrAIDTfdNXPxyzXvhTQDcuRfzq1+jcZt8cTtaZOr9PZmOzN/iU5mgTLAHPov/1yZ3CfNAmnArDPeu8oQsMce/RqLHtYkJkHLk4jyxFXDEur3nQ2ujz+NwlO2f54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766120034; c=relaxed/simple;
	bh=2+/4aCRhF89vy5CfW68AYgqB6PjjZT1AxFbHXpePayk=;
	h=To:Subject:From:Message-Id:Date; b=myDfH8uWq0eSvsHhopjKcCElW52S+dysGqDIDCFjo16mh1jamZcFdlPQeOgE5Uws+/bZ97cDhMjSOPOyz6Co6+L9tOAjrzCLYoTbkggFO5bzzT/qw79uYNbameLe+NrIN2TZAQDgluugvEsx42qVt0rJTx5KuTYNgU2f1MUFHh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2B7Xz+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2B7Xz+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7782C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766120033;
	bh=2+/4aCRhF89vy5CfW68AYgqB6PjjZT1AxFbHXpePayk=;
	h=To:Subject:From:Date:From;
	b=S2B7Xz+ZVMq+l6p01DyUsZRZeg4EUAHmlfZ32ezNawOGgst5OW+GW4R5Sr82ssqmz
	 fUGUzRTmjdaz5KA5tCQvGtlqCbrvJojI88j43QGxJD0INf9gSaQUaZQFYZN8/6n5y/
	 AvzatrgIg1tLHAmzPRINGvchv4bbxc4iYwV7ptZnsVdrgGuutqG9EGLCmWhyGaODvk
	 Q/MzPxTmwgCA8zk1MTiV8tlZNXEulXLXF2dFDtnlXRtLsDPdmDPGOiy/vPCNJevIXJ
	 ddF8eUWI/TDllJBIjxjwK8M77ybCyMg1jgeip5G4OaWnPliC8uErupwHckrwpa15hg
	 34bq3/J4Rjl+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC5D711CA
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612003358.27705.5739868233172326673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c80ffb7fc65fa19d76cc3c0971dd07dc2964dc516479c24886c0c03889e2c7
Date: Fri, 19 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766120033
