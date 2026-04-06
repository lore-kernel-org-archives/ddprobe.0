Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215FC2F4A0C
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775473534; cv=none; b=O8HJ8Qf8NxDscFB1NmMDvKqO8jydBsAKE96zapfIGAqYfkW5ghw8Ewgs7BWJzCfc/3SJ5W7zki5r1nIFZzIWd+VQLMFpKZocUrJufpslthsQ9NNwaV7XPEWrt+HBA0Y3S76E4LYh0G1sUjCZXLLkPTzoBaxi1ab1W2563sCYwz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775473534; c=relaxed/simple;
	bh=eqGyGyq+bvkBcvZ+7xCFthFYqteYnpL4k38DfpzMcbo=;
	h=To:Subject:From:Message-Id:Date; b=CauK0lrFGdI2sr6I3ClAvrhJSMAgJcXEf3cUzZ5xQQ60TI80Q8RQHuSXaXFyVpQNgc5+VrHZZY1kI94u/gmdMENhbVf7lwD1fbYEMLfk4d4ScDTH1vQ8cYQWnj3FOKN2BZraHAGXhN7Y91DOWVWCUW1AcNXKRVRbO9TmLtMpWq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrkYAVw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrkYAVw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0335C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775473533;
	bh=eqGyGyq+bvkBcvZ+7xCFthFYqteYnpL4k38DfpzMcbo=;
	h=To:Subject:From:Date:From;
	b=nrkYAVw8j17OPVr3oz+4A/0NB20yLgs8LeacdmpKV4PfiIYxlP9g/4zGGMokkp3Hm
	 zmtBINeyRyz8X4PxUvFeou2ODBlrUkvMlD2kwqg8romCWFnXiGTmOob2ao1YbnL5Cx
	 keGcMS5V35ILSG3HIRdrzRa4xsnmt65LL8VOwtM8RM2fLAkCqc///5462B6KP8K9bI
	 TyuPdVIXLsp7z7gvnPv1oDmtR/tAjyoz0GYnP4AJHNkzYrp//bVtGrDEvwIx+BlOmA
	 zgAz2BO5lOxQKJdEpeluY0WzMHIsyzHospFP7D2BxXcBb00dwZNQZ7TQejVl+LPrpQ
	 8J4Mxh2DesUfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C6EF4EC2
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547353370.7846.7778795181924158722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2776cfa28e3f3cd9aaa333c3b1ee22a0c8139d3c19a1b7c96751860bef8955cc
Date: Mon, 06 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775473533
