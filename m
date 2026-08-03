Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502C420D4F0
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785723634; cv=none; b=CTaREvl3M0TzLl1pJOCB4y1TC9Z/KXBezV8OJg75H7zN6AHXhIJSoaj9MLksRDhFFzzpHCWJz0qGWQMGXKLLHeSJPoqJV58+/j+nJxOPd2eQ0zNwrErDX3DGnqQvmGiJFV+O6vNkxub+hJAsojKKLDkD90xX5Ag3MfBl2jP8tmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785723634; c=relaxed/simple;
	bh=0freBThAq1bmkhhMTuHVRr1pUn0WwqPwxAUEO5UUQmo=;
	h=To:Subject:From:Message-Id:Date; b=ZMXn2giA9i0k5ggMYdPC57YoNlx0EEO5BYEo37GEaDuysikSa9JpoMPKkYcm+eoq5bN1tTuGgunpJiN0R2jjf4HW3Ch11+qYJEdl7H7bPfWYw5PMdx2QOLmcqaAdhtVYdy0utJflhKjbJ/XV8s+z3ujXk0gwucl6QMhiYnbqAS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs5MLxOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs5MLxOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11DCC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785723633;
	bh=0freBThAq1bmkhhMTuHVRr1pUn0WwqPwxAUEO5UUQmo=;
	h=To:Subject:From:Date:From;
	b=Rs5MLxOOsvf7xgTfuVMlYSwej2fCn//37IwApvoTBpQZfls3iZzxDyDaBz7We6L+L
	 zQBSscVlcNHiO2+oCKphktHIrwZcmGpbc7klJVB4hAPO0b0E3MESfUwKGuSXF81le/
	 v0qDMF1YCoOuTtTKtQpaPIl5JDPPrAwSdE9y7O8Pj43P7H0bhCTSdVd8nZUn2aZD2z
	 zHnUIMPUcxDB2oMtewryNVT66iJAkukm7qr+ZKywCJHlYMc7p4oQj7u09CYgaJzp2e
	 5bdRCuf88d+h2W0glE9ld0lke8U12JSl+2SiNfXmg+JhBK36Rh9ZdacDOLg8XqKlzH
	 m3/xQXR/jiakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D9C55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572363370.6369.9020245432147660461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03048ea135b7b826e5f12ef8cbcfd961c0485eea8c568f7e586521dea2248c1
Date: Mon, 03 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785723633
