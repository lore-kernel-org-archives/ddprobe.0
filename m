Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CE02522BE
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760281793; cv=none; b=MhhL0YvmHoe7PLRFOR9N8HnJiMb4euyY4KA1BSqHa5GUdh0YOt1D/xfNsJvFdWcW5AjY0AAN7sMI6R/v+QtFfaFCMSxRk78bNQhsVHig8N+I1FS5kD+LLIi0Yjf98nLZB9hZ1+JXnDoSpKQC9UwzR6KtJf04Y6BTq0Cu3J42h5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760281793; c=relaxed/simple;
	bh=Px87K4pxW5N4dXAPIwNxunb6/ZDxlGgvEeZbLHjIYAc=;
	h=To:Subject:From:Message-Id:Date; b=PvrLhNMvASFs1vXvw0ncnANdWxaKbmUodMEwrda/U7llU/n3peFkAHbJYsmZo9hmgRnaeoaINF0TR9pmEmmmDg6ZLZGcKKaH6g/p/iNSrSptpyQ+r+tFHOndhSJ9h197hYFaNcfuLUKTNT6yoAgBgyDSVyKlCejDWc6tFbpWOPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYj9WaR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYj9WaR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760281793;
	bh=Px87K4pxW5N4dXAPIwNxunb6/ZDxlGgvEeZbLHjIYAc=;
	h=To:Subject:From:Date:From;
	b=OYj9WaR0tihnxVt12K/Lna0CcU4EhzxPYaDofZ8KbNkarQtFwc6I9/psiT0W9cKJO
	 0E/AP7WdofTeRPGr30no6cBHRzGYPhMCPylrdKtt+n2laGPuWvG1TdslOy5VEEzgcJ
	 XcwYj3I18dxtgqwd+3FiRW3pPuNV+AAKkhsSs2YinwvbrTAOJ6iDIipnOZzBXrVD9O
	 r/K+1p3u5hl4TWT/7KoziGQb6xOuADyRW7vY5rt9rna5ryoihaYcUZnq63wXu6Y7JB
	 PF/GkInCGzTM8m/zwwtvPpM1jiw1GT0OWkupytIuEjPmUcwEpjnbU8J6os+2nxbeBJ
	 TG5KCjQL4ju2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D2CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028179358.29295.10155148826016036897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6e23a3270cd468ac95a121c76691ad88be12665a1d0b09e82484b645a06cc0
Date: Sun, 12 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760281793
