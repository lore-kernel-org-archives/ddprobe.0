Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21138255E40
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759656594; cv=none; b=MjeemuaP1WfLXT0gtb1g2/LAZLWWL6OlPLg9l62fU9vTGA3C2YEPkN2U5YpJtUh5KLU+lYJSYLl+3fhjFzlM9c+P+/XT4iY/L5FGIH/je9+XFrb7AgHrqSp331defxLnlo4gmm++M1U6sq22MTV3UUS2AKZc00UAor2Zu8ILA2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759656594; c=relaxed/simple;
	bh=AYsAvDGC/HBPWblNE+/kukOnO02CnXbkDpqGxhqsqi8=;
	h=To:Subject:From:Message-Id:Date; b=VDTyi8uU5JMPj8bio4XgRFA2imWhG/gmgaBf8i+pPUzCgB9w8WvT2al0Hcy0xo9h4GlCFYSXIOj/sQBRRwyRGvz/9dStkW0AJVLwnzBvEfb/USHtVesMeHEE8KbFBc7/RY+zlXy/Ns9mEAH5fPjNmLRc/kbAzjXhUlIrWrJsclM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUxRwL9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUxRwL9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A659CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759656593;
	bh=AYsAvDGC/HBPWblNE+/kukOnO02CnXbkDpqGxhqsqi8=;
	h=To:Subject:From:Date:From;
	b=CUxRwL9N2VRsWmnPKp+le9dGuvnUGOUb9c/NP3CL+ahBOecE8DIJ60jdVJBkI+CZF
	 GkOQ/IXSecXGkgQOqkcjHygqcRrzI0YXJ9smDoFC4O1BVJ8khs3qpvg57IjVHzW63f
	 S7IoDjSByLZCTBE/aVd1NlnbpdCqQJNNH4SE7gEVDkBuAmfgtFXM8Muj6EHkUYhUm6
	 aLpo8YvwO/tU4TezgUFOxjs9TMqIqyy/hIgNAFmjn6W97AWtEA8qU5dtt4b7Mt5ZmC
	 VYcf8k28Q5UUUCMuI2EH2QQVBvhl17APxc7jF/hJrk1fxkbo/dowey8MOAACJG3Cis
	 8MuVpWEqjY22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9335BCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965659358.8831.629774647457708969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8954194ab4d284c18f94d1b012d4ead8f4ab130c0e734859f07186c75a8765f4
Date: Sun, 05 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759656593
