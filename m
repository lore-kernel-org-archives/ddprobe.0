Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14109219E8
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758776395; cv=none; b=jS6IttT36PKJgcAbJ79Ua8WFUxjYWi9Ay3+yK9ZEcCpIL9UEaQoVdBQ/gf4Qf/EmNEKKSoACoOs/UXFph3zGSJYlra72tYrn73ObYy1J9G6qVfzAXFZoERUnSoj22RD+iMuu4zsGY7UQCmUIklqCtqMK68hVSGuCe13XxVjQ504=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758776395; c=relaxed/simple;
	bh=9Dgi/YanVZ4TKVN4pxozMlHnFE1MLRzYpq35ALjuINw=;
	h=To:Subject:From:Message-Id:Date; b=IyKW62gX6hkfpSuE+/iY8pHt9oU2gAR/AxKMK7H7pCObccoaSSeJYkE2J9vVR2BAQMR07mC9PuSJsox4BPJL5D2qbsdldcn5s9MejUJzLTv8hjSEchCn3CWJWrDCZs3r8vFWrrXF67AL0yRkwMk360vwRnwzCrXOhtajYITfJjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pian9o4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pian9o4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758776393;
	bh=9Dgi/YanVZ4TKVN4pxozMlHnFE1MLRzYpq35ALjuINw=;
	h=To:Subject:From:Date:From;
	b=pian9o4akHDokzTBXWPRnJx0u9T4dFgWk+ExSLNjFTOMeBpV0ck4pOLC1iAaIgZ8q
	 ROKImRY0jrnQSv/TPFfChdcxMNvj0jdJAUbU4myCohXnmQDmQ1UQIt8o6iKOfQBZar
	 hcZUuHW2hQW24lgMGZYEHOdUZJvP/brTkB8RCtmR3fm2giMpjGcyfn89gXn1supf+D
	 MNkJh4AUeVWEk8p1xrtQDCHQGdg4KbRD5ZvQRFdUOqkE5KyYbwKlCX5rwko4jGV5rr
	 RjYMIoYQ12fZI6ShXJ3xalPmiKWXGwLSWq/cpG8kGR8UxTib8afbGzbiOBiCh208ZN
	 s3YddnaHJN8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC11CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877639357.3835.1786044875290240230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366ca07dafe300b838ccf8e9920a4a7067611137ba190fd93ab1bdf8025e86c0
Date: Thu, 25 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758776393
