Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B42C17A8
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761640794; cv=none; b=ZQIpmlcn+GrdH9wycSg0faXQzXSRfQb9dt9kI1/9yASDpC0ae/CWrZ6Rf3dxmTrm2eOjAEA9aoWrwP07clAUD78bcjQpDffabSPo5oyJ+153p1anfuTpueQqN0pmeremQAxNcaOz8UaXLDVgw0IUrRVx+/7L4J0GI/kNqYW8z6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761640794; c=relaxed/simple;
	bh=lwSXOdp35EHs1cGcrdrclQgrOAYEmFi6bxIzUxJzgIo=;
	h=To:Subject:From:Message-Id:Date; b=HsFf/AejPVwkxKihtLxURLvw2HSYjY+5ls40ugF/tlO94YMjwhHU9eb/IxjfDCGxWv4ZW13e6fy4XqIKu9sLfdbr4QGSRrTQEGSMEnKdJpqKwfUd3Gj5iHfMwd4ofeRttx9KMXtebrB8Zegs8OQs2jvk+gxnTEACcq3KMftR3UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9UOFUK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9UOFUK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9114C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761640793;
	bh=lwSXOdp35EHs1cGcrdrclQgrOAYEmFi6bxIzUxJzgIo=;
	h=To:Subject:From:Date:From;
	b=D9UOFUK5DckLIF8Sq3IhAW6sx2o+wZduLpss/jUENzV2mDVoEVuZiy3udTjNeQEZq
	 ebRxNklqVAEmUwQ06o5A+brvMqMtdbKLGqtSe03lIBOxM/p4gx3LhFq8+PqJaKejY+
	 ZMO5N0m8Gg4KjhK/VwV25LofMYz9mGvUTemlrdDKR3pkokSfxnAAT9N+OTZ6uY8XSi
	 zY8qpa3iyCDgtPpsMiCS9Fj6dvl7wdGZINzrFs3T/b+HXVzcR4Xeeu+OrqtvI/yLiO
	 1UshR1pPwQjqJQSFIKMCQ5Jnk7SKwVk4WYv0IdJ9+dYEtjqGNj2fe5dVxYZQfEQA2x
	 O3r6KFssQc7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952EACCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164079359.9657.10398730989576252368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b186079377c6c7fec34aec266296aca0add227b01a4f47ffe7c7364bdf60969a
Date: Tue, 28 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761640793
