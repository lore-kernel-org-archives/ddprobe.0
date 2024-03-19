Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0766B7C0A6
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710839897; cv=none; b=rz5T0d7OUJ6b6AnQ7e1Z2/e4+IZVRroxTzy32+0YG25nX6gNcHYFVG23hg1uQH/G+c9pc0qSXEzWxO1Nsuj1dD54wsy+PMfYSqgw7YTr3Dgn+SF4KEq083eDouhLFbMcJllwevwGjduBlvkvMfUSEfzFGhXyQt4Hue6wAHXOpJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710839897; c=relaxed/simple;
	bh=KetnuaHS2yWYea2k4MlrQOAVnYOgreGy5XVPXSFYuds=;
	h=To:Subject:From:Message-Id:Date; b=qIeZzdRUwLBuRItuCCSLZx2SZ2q0FxSM30W5q0wdMdIg1InvBIjERUY1JoKEw9EV6OSziyrnDuz9x79fUxQUC39P1xe1Jx41mybD4o2OQlb/Sovd4NL3hpV3OUBdJYC8P133KRQtarSGn0WfnpXZeLY3gop/jn7/jZD2oPWmZj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWaQ9ldI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWaQ9ldI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763B1C433F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710839896;
	bh=KetnuaHS2yWYea2k4MlrQOAVnYOgreGy5XVPXSFYuds=;
	h=To:Subject:From:Date:From;
	b=GWaQ9ldIk8ZvR6y0xhpU+sYduflycAXfsyoWXmg2MPdRXndOWRCMu2a5VXL4UBc64
	 UfRSvZmiKDHqglyPxzcvR9Yf047oKPHYxoiJzIwl4/RPlylumWh0yTFNq6Hl21RyVB
	 yh08eL0sX4PeMoUhfW/cwCG9BVzT/iNyqQGKyVVbrJoqGQEQ2S8KZJ/r93O+f3j1e/
	 S4sRS2aIitblU91MDok3rhYMwGFvCmNjFJtRoiNvDhtb/iVJc4Am26soO9WLtnGbtu
	 DTMEsYKFNrfIbbJT8vhavwPvY4Z16OJd2wnMCFk47TopJT1BIBdbDN9IkcYjryRaxD
	 Y2eWrJMZZmZsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6723EC54E60
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171083989638.656.14814872694293142988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c403bb6822caeb0f63bd8413d57f706d41f1af19d83e85b1a64ef43ff8637a4c
Date: Tue, 19 Mar 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710839896
