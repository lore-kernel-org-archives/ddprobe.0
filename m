Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695DF944F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718528903; cv=none; b=D4FhVQXikNpVvkpjiRRGcDc+0xx085JnjHXbVb3+ivDxTe/xYWO1nAS2dLZBleXPu9dyBp1qiGmRWr/nXgYC92874x/DvrHnFa7KBMRFiQjiEF3Ika2StuKqBPSvVDyFFM0Vp7t9ISoPmcnHsSo0E1TrDyVAR7qWIqyvvw03frY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718528903; c=relaxed/simple;
	bh=lnuAjxXojM4W466dsGonC2olbI/DZnG4TLUdkU8s4tA=;
	h=To:Subject:From:Message-Id:Date; b=hN9hkDm3Szzo1h7kbE6vWzFtXOY7/Z8R2GsVJ1MyVpAv8cYraN5wm2mbfbo6x1IIL+mFlMzxK1ON1lmTYPgUW2aYpzjVO6EdwKvGNVhYxVfC+TADWBhj7AST+0sdE+jKeqeRINJR9Vg35nCb9+3XkL0ocYoMQHIoKyEnmdtvdx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRbFCIwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRbFCIwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FD6C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718528902;
	bh=lnuAjxXojM4W466dsGonC2olbI/DZnG4TLUdkU8s4tA=;
	h=To:Subject:From:Date:From;
	b=cRbFCIwAdyNPIIoR4a8cTvLpWFV9ATzjpp4KX+8wvAqqa6AT2FRFexzZQFTjw2oI8
	 sChfp4Jmg2WAeBKahmaD1IRzXMPJavq+EzXYCTZy1HC1nIqGVfGwWWHDwoid5rlBKr
	 lI4XUK95lAYj79wc9yWE9/zE8mAuIEMvxS7m2E0ZmEZ/t18wkEeCu5xjkAoh3MldDj
	 ohz3rh8GILJjXwIMbxNVQaWtevjKkAiQ2x68R6xY9VML4ge6ollUBpyEv42C2mb/at
	 6aSrGnJjZvREqO0gW0/91JM5knm5nkqhGP2/ErAZirj651AaC/ls9eoR43uhF2tE6b
	 wy0I6d+/U5L7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD93AC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 09:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852890280.9407.16199482957806709922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062392bda54f807780f7d8e43454d256d6e7544a51a38cce99735a56687706c2
Date: Sun, 16 Jun 2024 09:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718528902
