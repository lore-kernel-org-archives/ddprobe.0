Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E44380FE5
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781684794; cv=none; b=XHxE8oX8XnWF1xYnSEyCTZGjS2DsoNrYyu4eVkp7CstAiKG4lLYOH651fkIshlLsCjdJXyMAorK3WxS1a6nbdjbGWqvBwZVaZdARanbLc+JLOTB+bxVD+hVuIPaGysxYSIhdxhDyUSOSFJhKNYSFOKr61PpdhK+I+Wl9lNbl/JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781684794; c=relaxed/simple;
	bh=FfEJacIE+FYX2KVrauY4JgUrrI7vNCwCDhlEs8l5imM=;
	h=To:Subject:From:Message-Id:Date; b=TEHMRc5CEimcsv3pUGSNvGdLK2yD52dGTo6dK2r2FVq2PfWTzvr00KPW8/dRMlATy1trvB7yk8vuxqLHrpyZqGNQUfdWjYZrljMODUEbAbSNV6d7fVVZbZ51GesJbaTE0mNsNUyFSllX/7kJ0CjxpLPslm77frWfyj30o1Eog24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVAl1F4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVAl1F4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7735C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781684793;
	bh=FfEJacIE+FYX2KVrauY4JgUrrI7vNCwCDhlEs8l5imM=;
	h=To:Subject:From:Date:From;
	b=AVAl1F4tpYLLdoFpTIVDLO5ou3ASqrmHOPrUjwB1D7UPa318cLqKUymskCkSIi1Rs
	 4B8Bx+X1Qr7KzThflDL0J+d25/UQWt4YfBB5h7pEEpGvp/xEBzxYgpKW6ncvffHBr6
	 rFF4Ec/mS1ZQKcHyIHAa+Pu1TG8nTWLCukowGrLc7oAh7LfO2ssNIjWmnC5l93S7if
	 iKsMJ8uWxfN6Mr+KFjzAWu3mDBkCVZXPKuhDOOzcRAKrA3Sz799nCInK3+u1sBLioO
	 LVkhBcaBbvmLg8BwxkPh4bXl9/+Scacc3RVikj01H/b8oCYDKO1YtBIJ8pbuTQULUn
	 VzQe0OsHuZLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB24FCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168479369.29262.1555302193138091674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df86f7188a06b00f11bbf103ba938d12dbbe050061f0c11031adee0e2238e0c0
Date: Wed, 17 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781684793
