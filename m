Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1463AD50E
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779223834; cv=none; b=US0cgLi04P5s8O3EUI+U9sH6XJavflto0ENujAg3fDta0omySKmqHgFsTjf4cXNjODRCpZR9HW0mSz+NvJZ159TKL0ZmuEyNjcl2rpi2EzK9r/gzJ4/AH9vgk1IG6QBueSQrouCbDCKSAba0VHanOTZKtSrp10HaYDljx2egSOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779223834; c=relaxed/simple;
	bh=6JwRYHrMn3sai2j2GISWKql7DJegk9Umvv4bcEI/Y5s=;
	h=To:Subject:From:Message-Id:Date; b=E52lGt++CfXgPxXE4ZSx+E/b9GOjh75qzbZqnHutEIQadQZnFTPhcqkea3XQBX71SS4rQkkkuSOaTGwO0NlwWcjIf/ku1+EQEnb7etRAlkJoi4ABsZYltva+YryLvlKEuXVyehHdbwqxqo2NQSC4vyPrd8iW0pRvIlo8NdFGnQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0AmA4D3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0AmA4D3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E7AC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779223833;
	bh=6JwRYHrMn3sai2j2GISWKql7DJegk9Umvv4bcEI/Y5s=;
	h=To:Subject:From:Date:From;
	b=m0AmA4D3nuCg9qplZyxMKqyaviqWyXQSqzD+90/xHP/0GinfD962vl3MiwbmEx8ll
	 i03/BDf3dn8c3OxbYZ4Y9PKNKxNnuwZkNXr62dK3Hzlm7UiJtkB58CdezvCvJdhNwp
	 btZM3vXhTOMU8IcLMe8BqRLe03S5hR/YzZrNVbDvm1W+0pqnn5TfDiJKdae/3kRq6l
	 uDYK81vEnJHdyayxMwOx2s9Owul5hennuwZGwnJtUalv8rcEm99aO9WSTaULrd2F5A
	 tYoPakmY/fcFJbiVJNM4k+/X/ak0efhzSZjwgRoH9MxDmu6gLDZ2Urj7p8mavwzyVl
	 QeQARt79aAlBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC208CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922383369.8287.1332808191064041747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f021e9f9e2e3172a998786be452ce02fd1385bca9e2baaca76525f74ef7fc4
Date: Tue, 19 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779223833
