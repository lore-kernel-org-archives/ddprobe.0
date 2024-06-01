Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831054690
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717267523; cv=none; b=tQCOahNU90jxIVp6jY0txbgisFnmu0r2S/xhaYq9P73tt64Y+hW39XR+nEmzh2cFz/1OryhojNyLe1WEwBpQIYZvZVJ5zjbU36/sI26TONTPQOJDB55c7EjfPC0mbCYaZztkMXEmzRJ2iV4UTgpmeFJxZtbcvk12glNPPyKiGWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717267523; c=relaxed/simple;
	bh=5NzSmY9IFMpsVCIUn+troG1YvlLlRTBrrk6VRZ5tQiE=;
	h=To:Subject:From:Message-Id:Date; b=WBQZ08apW2VbXMwuhO4cRjtKaqMvr3d1/XJxyxZyIRQ2ceHZweBiHfHIcqyhUxcvUxf4plJFusWQZIp3yn3146pZoF5TQvU2OPgn0916iuKHvKJIQoojepjRaUKbJzA9ksQdMNDsdznLD06zrNOOdFYEUWmzmDGrW87RTcDM4IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxfIZIqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxfIZIqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6AADC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717267522;
	bh=5NzSmY9IFMpsVCIUn+troG1YvlLlRTBrrk6VRZ5tQiE=;
	h=To:Subject:From:Date:From;
	b=FxfIZIqxDHN9/060X8MozsztcbwdFiid88sstBAUaZgEW0uaSR9XDN+wrmyQa4Tu/
	 XfW8FL2t4BuE5dzYnYqwoD3ejxkEp4JC5bvuAn16J5hr61aLtiHRF73ZN7zK/wsS3c
	 2H2ZHbqYRzHEc+CYMeQTuF8XM/ts27qYI3ZfwyHjmaL17RvKEDwykEAfkb7BdCGBir
	 iHScHcPV2KyPvtNKWCwfKgHDefgFJNv/BjSwx7gECWz6JC6ck+3OsBAWtZko8g/5Ho
	 +VfSsaNBUEVpsOqFbaq3fGl8SkYkpbnW/Xm3ajkehbDNP6Lmn6PTpQxoaD5wC1HvC6
	 l8BSkijRAtvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D24AFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 18:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726752278.21451.16569745939760017649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65751ed28b0481d58e1799e09727b5f0ce0237f78f3b138b836dc129c16f0e3
Date: Sat, 01 Jun 2024 18:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717267522
