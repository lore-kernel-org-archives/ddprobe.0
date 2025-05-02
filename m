Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB501D554
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746178794; cv=none; b=kn3j3AyReapXqo+O2Kol0oU+XNpztQa5+Yx/pwlEbiYmSOhP2UO2dl43sQWPDagFJwVSyr7FMELJmMkj7N3E0ttwOfwTXEEBYP0F82Jc8ZrqLjmNyYEXrnOtKYaAPRotoNDU4j8TB6qV/wAlErOA0wGzhK+YOG/473vaHwXDf3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746178794; c=relaxed/simple;
	bh=ihKwYcd6ALPJ/ZeIVibvAHAeJmLAJXutI8H+I/mzlFo=;
	h=To:Subject:From:Message-Id:Date; b=MFaXW+FdQvhH6SEzM+npiFmYl/SyW7eZ3X6LRm+Yh4QdtCubYGNfCZdVoM50KFtqPnRf7xYFA3JHvSdug0QcB7djRR3ns/s9wwnZmoMtKca1pn0AJIJxhZeCrfd4ENUP/5Y+WdWpsyhx04L/BFo5VZjaKTVxy8Eae9YlwrDmKyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBJyA7mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBJyA7mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BB8C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746178793;
	bh=ihKwYcd6ALPJ/ZeIVibvAHAeJmLAJXutI8H+I/mzlFo=;
	h=To:Subject:From:Date:From;
	b=qBJyA7mbj1F4w1RuWrTp4XCNLutgG0p9TmXqxd+b+cVn21GxIa/VkB92CE829/zlm
	 B+kKOsVXjXgkESvIkdeya5yBjQACEXzPYMS7s0R09skDD4sPGRl5DEVdWGCv1H9SOB
	 TyCqVW5ytyHCfGjngFVMrhqffbPNwnp3rmN8KkZiidkB5/iklLTg3BILZ2cjhWcQML
	 46U1igtWLWFGpOfpTkgEq6xZCAQoOJRt4beXasp1X2TgJQ3mdLd3ywMJbRep9zsfM/
	 85B9pnMIVEchhbTljWT5n4joaQ6uDNUdjD2lyiMLfEvy5jE1IfDjGnfpEdBsygLz3/
	 hG+p05YPMHuVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92762C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617879359.20669.14616745498921484448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e236e00fee8caf1718f2eccd1448b1829204d319e4e9b2c8abbd83a0bd6b474
Date: Fri, 02 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746178793
