Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E89CA930
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757681994; cv=none; b=Tj9/mPv7Tif6/iApaC/8rxl/OnQjQQx/Q2Xq7niST+VtKMT2FekVU5M8LqJgDwfrPYMKHbSD615z5gAwPdeWY+rfV10EOvvpU1tguMGQbUlit16t8lj9KIq26eS/JwzaUu+Q791aZGikpRV7518q6BQFJuHqteJ0OvLAkarR08I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757681994; c=relaxed/simple;
	bh=wdMaIx+DapjuuLVefB6k9Ae78TRqjgtnuuf3cyeamIo=;
	h=To:Subject:From:Message-Id:Date; b=EP1+l/6XelD3ID6U2sF9ajXGK8V5B8YetU3tfTlNIBojODiR0uLGHxltDJwVrjeBV1FLRDVd1dsY4P2TAZdlQXoHsabj7eyqBRd051uSAV2r8615iX157+nxKjp9uv2AINqqTK54yq+bZIlqyLCnpLt0iDtE6gNJxjXCkEVzKVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyHDUGmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyHDUGmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2122C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757681993;
	bh=wdMaIx+DapjuuLVefB6k9Ae78TRqjgtnuuf3cyeamIo=;
	h=To:Subject:From:Date:From;
	b=WyHDUGmyUQYrRmyoKprZwHgyWHZqimQ5xcmX7skjS8q2Clz1Ks26iLn+GuquVKsd8
	 bky13/riRrG5O4JnCxtYHpQN76yMds5jm1NFkna6B2Q+0l5DlFVBprbfnGNg14doNH
	 k/3qwSBVejjUGRtDMJKDmtQ9O37D+IneYoHEI95t4jO5CGGqHFf7VA9/tlBZb50vHM
	 fyr/lhaaYHcZehF8iuLj6V95AWRwHHBXrWiHBb2gOvDgFSGYRBOsFnD9SV42zURDX6
	 ILgVKtZ833ajeza45TkicEIUirHI85+rP51HdgdH8Ymkc4zU1sjluuYjgWxHlkQj4p
	 B2sgF4xVNzWSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90980CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768199358.5814.11022114101686025325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b8aa01617627cd320d730e6295aac8c94fc552d38286e13de1a909137c2167
Date: Fri, 12 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757681993
