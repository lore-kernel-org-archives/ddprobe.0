Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F99B3FE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754354994; cv=none; b=k2Olympix6+kHmv3K83abaq5+AE67R5lPhi4DUwhM8zoQKUciGDfEXDkUYoMq5BhgS3HPVa51TY/RaxR6TdBJvgxF7IEk7lVfq1GrI0Vr3S3Jc8j4WdPejLUUF7HUUSWHznnXyIiMfM4OOf+nmjcTiMIoCzbnjvtKmee44922pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754354994; c=relaxed/simple;
	bh=ArI26M6XdVXgQ62CQjTlVGYJYYexNH0WDK4ht9XfX9E=;
	h=To:Subject:From:Message-Id:Date; b=Qx66l36wO7UzKcQ3QsG/Z3d7+/haZ5ZOHEzdhfgG0ASNQed85B96q3olkAYZMIli2BCp1SAw2xWM0aSC4cVDzPJl+w9P3HCFZHguCsvXKK30rSWjTCpZ4/QpkgbR7ixlbtLYlSUbmnJT85UYqXlKGopgDKuKDn1+vI8olw8yVUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vr3HxH6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vr3HxH6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F12C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754354993;
	bh=ArI26M6XdVXgQ62CQjTlVGYJYYexNH0WDK4ht9XfX9E=;
	h=To:Subject:From:Date:From;
	b=Vr3HxH6zKWrhhjwzmOjQizk+CUqc1PRXhPFCKw8KBstF5zCBH/BR1AgTegP4P7hR2
	 z2qKhUujR+B353s9UiI/dt+EExrlL2JtZM4GfksdAs+5mVYUd2hIZXEBAZwn7znX0b
	 kJ4NF2K+SV6sdLGXaJqhNWTUn4Dcg+pRpebuvzgyii6fNqoSbAcCaVK9H2le/Xrxpw
	 BOao3fIJNxqfBvC1InuXqK+BLHV9zWGB/ltKpLuuL7gfEORmxzA4Vu13UjuDLmmf+p
	 s83Uzkw28B277MC5DXDpNUHW/mJjFmJMZyv7HxZWfFORS6noiN0QNi+hLPYgBv8wLu
	 KNZemfcKGPiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359BC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435499358.32762.6760174376832736617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e6c91638247dcd5faa671ebeced8a1ca80f02fda9011ea6026be7f224f87fb
Date: Tue, 05 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754354993
