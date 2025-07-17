Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B5186A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752721194; cv=none; b=O9qgxez45t2wcMMIZuOiCnLBVtJXu2/IESCfGC4vnYxOH+UxG2xi74gOhWden7aDELmiRzctxL/zljPOcWhQwfdv1zy04nRo21xx9BekWbIEiZXO5sizVFlFkj0gxPpXRQSkooT8bmR1mtjbvZ17jZoLorJ+Sy/SOJV55Uuovic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752721194; c=relaxed/simple;
	bh=3ndhBNXF1YpB0t+t2yJ2py2h1i6jO82DAk+ZymFFExo=;
	h=To:Subject:From:Message-Id:Date; b=fh1qjU7q59rBjxXyi34UC1Ua96dQLxpWShoAkWe+7/gLTckhxV4w/Tu1TfAkTCBcTRIdRSBCJhpiEpmY53/CbVjOjRapzWkzvFMDUkVgKbHeScqQ5m6KcjcRoUISkyma+XCpayYRgSU3OrQTn6R4XcOs/no41a6Vfp99IL7sscU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRRCNO/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRRCNO/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752721193;
	bh=3ndhBNXF1YpB0t+t2yJ2py2h1i6jO82DAk+ZymFFExo=;
	h=To:Subject:From:Date:From;
	b=uRRCNO/iKrl9ujvp7h3Nk+NMWJkdrlmE/iP6rK44yDiab2rh9HVucGzJh96Cpe1oq
	 Xzwi9jcRX+7Tc1EItWBlJyOc+g+PnhlhEzE9XoW/yLsOY0FEhVvevPbUrEc15Nt7Se
	 cw/waeBzo2sfhLeboLgO4x1rDfpmHBn9C3hvRqOrCPWFrvfJYG03+HkGOWTApGV12t
	 R8Ox+Nyx+zc/diIlFc/Q6Vc0xhmASmhLOv0X4vOZqNzfZCsQFk8bUOry780nzggJsB
	 lMTi9Mlzm/83kAVq2g8Qg1X2MtZr8+JXjDCKz6WFeZ3oXJQcmpCrlPtVNwUEAY1uVs
	 TjWKlCxTop3EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD13C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272119358.27592.5668549531943497489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19aa40bb762468d2d0453d4c989218d58bd80ac36553bebe4dbc732d068681d
Date: Thu, 17 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752721193
