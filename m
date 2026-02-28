Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4F8410D3A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772273694; cv=none; b=cZvUxi/x9FOSCPpKOlHMjjuMqsilU2fnpWZw2e02hdeU+MlEcQ1SBJwq703oJCHyzhzfPGhCrlK3tRilJ4ZrM1v6517Xv5U7qpcZw7oeRG1bsM6IDdqJEMICno/9G8LFV5kERisc+zwE5i4oUZgjoVIrlWZRghCITYPK/Dr7jsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772273694; c=relaxed/simple;
	bh=Bw+ATscBdQRNwdsbhcw4cUlUNc+DJjR2EXxtC157tVQ=;
	h=To:Subject:From:Message-Id:Date; b=EVThgzznyT2e5EO4yHCV1nFe7lD0LnxeJe758ioeq5lEc75wgJ+jtIf935fUSQZhSmPhkKf9goHZaCPTJOacyWBpFi6idJE6yvgcfhzumjiKTyOqRStC5wYETlln8kjp8HMrtw0cv9vSakugzFuCqFSGiwe/JKdCxhPrHjSih9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEHaaBJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEHaaBJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5540C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772273693;
	bh=Bw+ATscBdQRNwdsbhcw4cUlUNc+DJjR2EXxtC157tVQ=;
	h=To:Subject:From:Date:From;
	b=GEHaaBJ8cb7K/ot0VS2PUnw0zKAYyeW9UoLhGlhDRdqCJn8po5ED7S9b9Vx3GD4Ob
	 jTx7NGFUubLDoaAPYzeGSQPxAs9fRlEA7CkA6ROM+A7/ZCHPH50LHxsSwWCeKPtJ7b
	 mxFrn5rKIdhCEvXn4gZg9JHVxsNhelN8KN+qCo0888KCyP1T12JNAVYbcAdYoUie+0
	 T2PRFOES57xTvV11rg9/3RFh78+wGn5T5kVfmIWszxcrgaHXIMZXQ2bOHdzI0/J18a
	 p0ESRPMH/bIxFLRPueaK4kBdQ7+0QZei27YvyB+Y1xjVMFG2BThrVZQRb9CqlyHHdk
	 aZ0HSZQvqBQUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92134FEE4E5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227369358.14430.5100924240057318726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e381fc3b81960b63f3ab576d458a7ab468d92394e8fd30b7a29b6ef9a1fa0c
Date: Sat, 28 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772273693
