Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4E314AD02
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715602343; cv=none; b=Tbx3aJ/tQfBlXd6QSBJ29h4Q9UiLS6nbpVOnEdWPDrFhiFSXj0xrRCBhpCJND4Tt7WNV1UfXo7Kc/w3X2daL3REdXZdT1vf2lhYw2Ymf5SJFw+45g8iywPId486cDbc0lNOcMvmwS3ZH3tgB9tvFMQ4vSBG3fPBWPN/9bUnAy+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715602343; c=relaxed/simple;
	bh=W+Gc2vuseTGhKBhNorAPS9xwOpXm3Fh+tPp4qcc9ZE4=;
	h=To:Subject:From:Message-Id:Date; b=ALV3er7U30+dVDThiebicelC9CxmOoZYzs0d/RMGhYHsU7xXJOY058RkxISqO9lMC9nXzMiN7fGm5uN2XpS/EjylZRGU5fD2XIrtEoCz3yV/VFAckP+ZfnsBYd2rAgQ4/oh7pDWLbyo0KpXDM3sCeZjk1bVwsCwk+5SRv7YCDa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeA4whiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeA4whiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACA1C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715602342;
	bh=W+Gc2vuseTGhKBhNorAPS9xwOpXm3Fh+tPp4qcc9ZE4=;
	h=To:Subject:From:Date:From;
	b=FeA4whiyR1ukzTlN1yRBVUGy+s2UkJbYx3xf/a+BHnDByRk8bCzHrXNkO3DtxmH+l
	 RHTJgVjWb8Zz48NQfg/UCIo9sO2HzaCNfpNlqnitTMBH+UlwYxK7NtEyhzr93HtSf/
	 A9goBitOb3vbE05joWIrbM/UbGQhqOVphsg+ZdDZSi6ckXb3EnFX/qQOApOOsNHxLy
	 b9YwSxF2qvdOD9tvwFUWnZ54cS2Y9DsCPvTpLgI9PTw6q+L8oj0YvcuKtLUHBN6VLX
	 a5hhYjzfopZSPnvz+odCFPUGoXUwsVSmGb3su3rTXh1QUWd7Qzmfy4cUw+E8n0iAMu
	 Ftq7dDNHDh1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C9BC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171560234280.24244.17042303583679365148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83bec4ada40cdb0b10beb01acfc8ce01e5b41b7b79d55f91404a58b7b305fcc
Date: Mon, 13 May 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715602342
