Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBCA1773D
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715151743; cv=none; b=ZeKGjueB+5DomFGRiKTAYSSqmeZQ6swFbxg1osdGo2ayS6vrIT0RkCs5iLFKml9kZ42E+LyIhW5L9fEfOIw3RFgGoYDQ2MfBt0xUh/8dlgKWp1MnMvKFsIpGWWs0+XSUBIWQReTdh0/RXsD2mv9+2/iBCG2qqjYEfb/s0wKiWmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715151743; c=relaxed/simple;
	bh=RNM/jvmjYUBKWZulmC+qoiBvw2EDimewVcUHAElS0aQ=;
	h=To:Subject:From:Message-Id:Date; b=OuexuwTtDKbrx+5KgocEXKwSyLJSFHmZzT0pBI45qfPJr5OzXqClhPYnoTYDFQJa/z9exAkMzhpOY+D0qcX/5mpJCOTwLgWmWTvN2LJuxUkhJzKexpOlWfZ0lz9X+Ff+QF5nCcT1zSgDJBLjj46BrbIJowl8njBiwGm3nodh/Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joTWq12p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joTWq12p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13FE1C4AF17
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715151743;
	bh=RNM/jvmjYUBKWZulmC+qoiBvw2EDimewVcUHAElS0aQ=;
	h=To:Subject:From:Date:From;
	b=joTWq12pHkwH6DmCkxzc+BjPi6gncKSrn3iVqDdNUK9ASvQsNOJzysQ6zO52dXhYn
	 aE6YbS+ibtk1fSVWki+35UHmw5yOtLO4Y8azwDWYFfhv4PjusKqXZC+PRX4AEZwmSp
	 Eqf8Of8U3uvvSata6lbixAfr8OaE9t70XW7nP+KBYo8yCkwGubhzfofwZZ+5CvZemQ
	 XBBlSUyeY0ynf8sml9yo976DxzTXSDlYF07PIMfoSYI8oHuR8C+U918dLZPSG+LBim
	 A1BzW0AjzCsiNWO3g3jyMNKOBmH+ptUiT2Uv4m7n8sdpBOGpTNTptXaiIcnUbzpjBk
	 MtDqn9S5y7DBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECC91C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515174293.32720.13535411461655634785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373b2edd4e20f464f7474a7f16cb89fbd018da372b0b9ca38dfda947c821df0c
Date: Wed, 08 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715151742
