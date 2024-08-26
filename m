Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236366FB0
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724640354; cv=none; b=KxnDpIZM3K9E6QCYDMWUP6IrAGn+QEorjzmDp+HgOblYYd84TNfoffKF4C3OP8nYQzK7mtLZWDjRooeQflaQT/RD1VQopcy+hghNuWFGNs26xa2yvD1deqZ5LhJbUDmOgVYWUyv1LVW+4qZX0feLk1TYnOo6V9o1j0c2Usl/9Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724640354; c=relaxed/simple;
	bh=YmZR0M2SBYXOZzVB4I3WU3NcTYPHv5OyngNDsl6VhP4=;
	h=To:Subject:From:Message-Id:Date; b=YsCrax02JHaHSI4GyUIR7/2qlCBosEOL7am0/SPOMGojilCNJeLzeqnqnBwJ1lbXXukdI4hzM8zA668XcRagv6R6UHcln0+SaepLaKNaieYCJVWFLJaaORqTW1uEMY67CbFsE/I6IcK4iI+EJZ/MY/4jBBIbCKT+zEAPRnC4cJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSYGValK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSYGValK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6521C567D8
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724640353;
	bh=YmZR0M2SBYXOZzVB4I3WU3NcTYPHv5OyngNDsl6VhP4=;
	h=To:Subject:From:Date:From;
	b=oSYGValKl63mKpM4j1V3bSt2vGauuO6xRVbleUu3sOXkA4291jWihXWhAm3BTZi6i
	 lp1GaWREJXh9UHXFbp513wuA86QYhKLOtztfL98wSk/0T0vcC/P+fm0bJlOtNwDov7
	 ZFrCYE8fw+z7zFWq9Ih4mvZvF/mP0GTjEyR+Q0tb5V8Pwadbe0mroOhG+CjW/syNR/
	 fWu0XbT5NmDLWhrFREPttbRWJWt+psFLTfNvwkQt5FNbqMJJtMwg711+zWlTuAOtj9
	 626MBJrQek8bH3CYEZluc/0N4jr+e3SIfQfcqNMtKnKQbe99NVjnzhwbtNI1Nj3kpQ
	 QwJmZXuWM8xRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D8C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464035358.19965.4184139448544526441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efac7d9a2b9a885e3a3f9fc9118905b50a107cc1c2af771ab5d0839780d06b7
Date: Mon, 26 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724640353
