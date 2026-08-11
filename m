Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8703AA1BC
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786461634; cv=none; b=er20ozgTAHU8k9CdhG8GGbL1CgDBMzn6EUhRGOav0FOT+/wyHS4P1/fmRoJeMkeFkYQGZwYWk5LCj3xHbronaBv0XfR8bb2sOxQkEh69EzmKoahqbx6ouZYX+KHa8zr0PCyxxF64ExNWDrt14rAamXDSG/Pk0QoYoS1OcaRnkvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786461634; c=relaxed/simple;
	bh=zqwx8baUD91rkcbuDM21jmg5ph7xPP+boYeR20bVXGc=;
	h=To:Subject:From:Message-Id:Date; b=KngLmMI+FRBqA4wR7lbnd1kH4q9tOd+5C1AZtQ2voLTP3pKufYjMCiNNPMnGDgTpHkmEbD05japvTgasgkFUs9XjPUyIES/+rIn2Ss0u6VypMOIPz6FGpPDt5hhGIpShtcSy1aIf7CCw1YchAMdhYOomYar3YxU2RMdfFRD29gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLiAz+0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLiAz+0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC216C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786461633;
	bh=zqwx8baUD91rkcbuDM21jmg5ph7xPP+boYeR20bVXGc=;
	h=To:Subject:From:Date:From;
	b=tLiAz+0Kn/Re9JNJGaS3449q/59ZpOYTO87GVblkpgTlC4+kU5XlJgLryVIbVLA6w
	 f5jrRUx8cG6sxjL7NECtyu0WnMlTTJDSs/4mCgxGCqV4mvlPTp7sZeO7zXxtHGW1Mv
	 feklDSvgYqHrQZpjfZ9q//+okAQ5xNovZXnp5tHfsamg5QtAQuRJbKiUajLRiCTmYQ
	 aaK/TUabtWdXeZGpSSyeHllQHWSMkFQbrd7HOipzLStUmlYIDOxFaLk0T3yTk5ezuW
	 HkqHVR2IWgKe+oZeBNWEy2h66uEx1WBwrZ9YPzt+0ZdR1aWgjZkeglMCzmmc/d+jo4
	 kGBb12hkoFY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9849C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646163368.17173.13148648397423181349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f93bd46a90b218a53d74bdbd0a81bdd695643356f6723a116443dc1676cad7
Date: Tue, 11 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786461633
