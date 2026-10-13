Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7254968EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791919834; cv=none; b=I6U6sar60xPKvzQEFangBDe0ai+pDkO1LQhsgCTjo68MjfypXbtWZsIKXSqPNQiXmYyz6MWB2Mnx4huo1QrNBZrSLV9ZRndwhkK39I1KM6EzmKTs6bX9yhIgu3fnOfkGW9mzM40sEw986knyjiFhkaZrfa+yfhqNDepqyeqF8v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791919834; c=relaxed/simple;
	bh=vvkbcVmaNvKiP5qzOr+BSALbQv/v78GV/cSviOxw/6U=;
	h=To:Subject:From:Message-Id:Date; b=CVhpLwHwoeB3ut018yKiorAy9j69xk4Fm0XrffQtgFWwtC3PICVqqvHNDMDb9Q77B7aJkBsBECq2Zgj7OCTlBOlG3fwkfAHjXwce+GEBPpq8mrhMWmqMsoHXE4TiUQma1HPE5fmVzc72NEYwVZT0X7Kafw5I+DV6xfNbPsNR/fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V76mDcfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V76mDcfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4243C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791919833;
	bh=vvkbcVmaNvKiP5qzOr+BSALbQv/v78GV/cSviOxw/6U=;
	h=To:Subject:From:Date:From;
	b=V76mDcfGRbj1ZRy9Fk5ePHWzkhqL01yww51Rjr3kQ2tqr2NBvC90PsUCKDyx3hBuT
	 mMlkXsQPapdAIOeonOYXssMhM2FlSx5ibxXeeACKdMJhB/45rlSrxpYDzha/X5EyPp
	 Sf7ZHRFf6Hy/6q8ph/GCQr7KqoQOdqnAiB2fQId1FJuuf28dcCh7SsabKg4veSWAgv
	 BO4s4u4xbrNQIEISqWzUzs0Edc9jOqbk+4qk7ll+QQmNUlOhL9bBXEgW6bzVnyvWrt
	 82mR5o1uv6uwvbRp5kG2NWJM6xO4V3w7W0DMrysFhkjwyRgkegU7q2sab2Zpaf9x0g
	 Q13jScGU2fEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD033CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191983369.23257.7369388409744374011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3d76041f1b389b27fc54fc30b876eea1e9955975ad6ce24a3d3dc1eae45bfe
Date: Tue, 13 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791919833
