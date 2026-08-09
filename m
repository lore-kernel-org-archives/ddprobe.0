Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFFB2EF67A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786258234; cv=none; b=HRe8j2CEZAldguIITVv5UofVx9Km+YATnGZRcGRunMpKeNqPRBEMn1/B8VHS1YgTp0a+S5EB8LRHfdef0f+NTAeo+0MW8kZVBhKrTB/AkFY55mrv3V9QnQXIaceVguAgl+LfrrqRwdtMf+le7Banl6NBD9fVBWgMnm4F5jNPshA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786258234; c=relaxed/simple;
	bh=J2QpvMp/f4La2WUNKJlRr8RTu8ZlMohD4ULZetmIMTI=;
	h=To:Subject:From:Message-Id:Date; b=XINyM0KYOTpSDn9+0bA+Dz1BEPObAVZaM+UQQy9Xu7JeBX5uGx+iw5arzhH4d2nIc9Vw6XvLq9BYXdIykYi2opXOeBeVk6noWim3ACX0fEm3yq5po7NNgDmkr/AVp0MIT+ihuxQ9//1/AmpcAqIopkhH3DCKK7drXSp1JVMs1KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye/iCuuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye/iCuuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCB7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786258233;
	bh=J2QpvMp/f4La2WUNKJlRr8RTu8ZlMohD4ULZetmIMTI=;
	h=To:Subject:From:Date:From;
	b=Ye/iCuuvKBYMvRNMIAlcH0ISN0clTBCtsMhJKXXCO4Fllq7PDCtjCiX78mn/1Gl2G
	 tdeHZ8AcyB2iIwr9GaFTwSPGb0NeFEUAFVqBQZonJJPwjvAiQntFJiPH1+SPmfZnn7
	 wKTrmXLFseCGuMCL+zjncaC16Gc+caJ8oe1gomKbXUwTRPrfZ1McDs71l6KCr+s7gI
	 2W4poO/uk2G69NGa0EbcGPLDM+WpoTc0loTYeIMU5i9wHqcBXEayfX5JQ0UmWLoKud
	 1duVNvfwvUOgcWa/uxj4v2l4ObjMYDcBvtzVjfVHnIq2YEZ6nlDp/HUrqMhH71HY1H
	 5zEtJ4pcT7hyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2792C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625823368.30911.13017694590534622920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb210c279a12c5eec3c31ec7a608d31fafdf31fc1f45a5b0ae8028888962deb1
Date: Sun, 09 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786258233
