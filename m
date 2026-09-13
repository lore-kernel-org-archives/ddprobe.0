Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6740A1FC0EA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789261234; cv=none; b=DZ4rLmSShcK+YnsuOmXW9plzvx+9/BQTyR9Ntny9MK4qMXF6kUo260BKAetqiBWV56VWLqnOco/Hk7a8bpbMlEWYstdZHWPbMifVrOPHbbcMkep9ch+k+pYdUuHZH+v1CuHZi9i/59pgJ6q4OlgwJo8Rh1rvKJxW0bHQLXHceeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789261234; c=relaxed/simple;
	bh=GlbMUjM2kSvjLTlVcSX7vJwzP9KdRE+gPuu3EGibnB0=;
	h=To:Subject:From:Message-Id:Date; b=ZDIcUB4nmQ91sWonuoUmSYfI61E7LhiP+pGHJ1e/kGOKG1O0qOTS8QbXSKBDbyEAqmIVY7udQ1jwRpvk/IdsRCOu/AcynA2ft9KqLRoCA3C+nXbXxLDev5d8znnTgh5gqyhz0VTJ0c47NS/Ku5BpbkUhbh+/0dVMJyKKuOl6Ke8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVzquDBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVzquDBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7559C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789261233;
	bh=GlbMUjM2kSvjLTlVcSX7vJwzP9KdRE+gPuu3EGibnB0=;
	h=To:Subject:From:Date:From;
	b=uVzquDBHzwtR9dUbSMsfkx25vKtXieXdk5um0yLsZIZdLhz1lSWoGnj3X+Qh8DS+z
	 2SgcvVA+q64OvDvVf6D5oscgPTQuhp2Dif/DkjJdBZKixv8dEGrtr3OAlfeQbWCStK
	 pjGAcUuP4o4G3yGFMG0XM+jY/83/e5Yh6LOraByvySmFVLvdlACDjs8W02YachMJ+i
	 lUQCvdUu6vkAs19cXMPfvUxrVD2EwsjXyCHBuv1GdA87yQTmoGULi9gCCtRlvFyGPT
	 khRYNpQyb9Z0yF73P/zh9P1r9GOUxHVbfcOUJdhn0vt4tIY/HSgVSRXdnWJm4nYTma
	 p8073OP+AUH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF602C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926123368.24868.4336866709505016161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c4b14e5acfcd9955422c08022fe0736d1ced4ba4604264102a2540dc435026
Date: Sun, 13 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789261233
