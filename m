Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E2730ACE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791047434; cv=none; b=VgmxWRvDhmiLFNedVKewSBdq0Ly7JHB6kDonTmGm9ojYPi5sAhlpTCREPFz0fNpfIGVcFZHHw2C8vrk5zdDnkznl/eJBS5fI5wCo1agYm9Q4k8c1efHvwoIDw1svoYvdj2jX/vdH58wL0DlyOjcvZoKJgowegRNsnjgiWNBoVtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791047434; c=relaxed/simple;
	bh=ZDZ+3rT2qTvE0OKaGxQe0tD82ryaWBtyJA/Gdz15tKc=;
	h=To:Subject:From:Message-Id:Date; b=FPwyv+sTrdMafo+PNVK+wysVXWgd75jgb1Vwvk8EFa+Feu9aYSDaF4OLm0zOhAJoenLp7EHjB4zXxBiMOJAOb4pkB6o7jQTJolWIjhieP9XXIgqGiJvJckfWGTiiXwAQcZ/KYxqSbW/uY4UnuocSACLRL8hEoArXSXPULNYkCnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGCKBqh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGCKBqh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE955C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791047433;
	bh=ZDZ+3rT2qTvE0OKaGxQe0tD82ryaWBtyJA/Gdz15tKc=;
	h=To:Subject:From:Date:From;
	b=LGCKBqh5wMjSFQ/TdF4oHumEqsmAPO8XEM+X9qc30HLq6BhbgyzPrAnCVuQBhKaQM
	 1PbuZpAh7AdwofxFnLw0ILLax7oNfbktyIPg6qzqzY8jiAUCsr3F3nqWmhP9/m9fOC
	 2U3NN3/vOyzFUXjPZbOahOPB05RQ6gkxELAI+umwNkHsPQ4N7jT21dVVxNF/qj0nos
	 0y/xV9ked2BfF2ZKIehr5aJIJhaNGtFPY33akR0apkOj14TV9W4clPONjkY1hToHfK
	 IHP/8D3VmKoe6Cfb0TglM2ZBMZXxd4joMlc8aewiDs+C/5fRR6kyrmMNU6zmG8Y0zZ
	 1u9ItAlNNuTTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA617CA5FED
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104743369.23236.15809718471062670367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1c1c3586b5b6f4fbaafe0ae86d9a24b67f7c235e78d146033a6577ef30cb5d
Date: Sat, 03 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791047433
