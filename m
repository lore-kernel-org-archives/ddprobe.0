Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4786E2AEE1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 06:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741933135; cv=none; b=a+x0N/EMGQdKy8B6wbUHiFRTplWk0eqOmnqqQByikX1zgWeO7QzURlZyXefIePrh8PBqw0AJezY+/2yuUwzo+yY5/fYGJ5orW7B3AhT0KK/MPmpx6nzMAlrJ07fnfh2QzluPs94cWeFcMcKUag4B0Id7JcMOcBoDINe7wT1QaSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741933135; c=relaxed/simple;
	bh=kruig0ElJlf/YA1Qh7lMXDAK3PgW7oKkuvmy2rpyLa8=;
	h=To:Subject:From:Message-Id:Date; b=seJlWWsSO+mToKeoS4PP8iakbY71qEhyCndcJnANW5AgxqgYa2W8mykqmK+V68c4kUzqyt8Rz86n6nVqKCUlsOZw1vrDRN/UkDsc+awqydYSaH3q2g7oVANpM+nvViS64UoXS3kxWuwf17Fq8rabBXdoOB9ECaNJAivwxYaB/IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=og5sOaWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og5sOaWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7766C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 06:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741933133;
	bh=kruig0ElJlf/YA1Qh7lMXDAK3PgW7oKkuvmy2rpyLa8=;
	h=To:Subject:From:Date:From;
	b=og5sOaWcFrtlLMC5RQYoKhnGLmcFZjBteeXMB7BOP3n7Dv2jcOmf7nF7hwAdcn0th
	 oT01v8JtC0oKB9hu9GgT3V+9wEN+7AqAe6JITAGeYoU5Y0sU6YHz0qsPlVMzITVtB6
	 rVcmDDYM3NkEB/CgjM1+gEeB/WF3fMrZfuTC6KYZTEbt1ui0Pog6NhGII3qTJAec43
	 SB2N0YGGkytJG/h0Kv/MSbbTnv87fpD1aL2BFw536i7rbrcCHuCbt+PVKIAOeRGnl/
	 VivYJZNjAvACONNsM/OLWZe6t+Jn0wiDZkRk3XsUAz0jts53tQ4vXOwlL+tIiC/FpK
	 QwyWmJpQ9okRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AFDC28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 06:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193313366.21141.3538681002514946231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42babbccb4c2d2876c1005895aacf21c12b972ff78d7ba9da8350206b5882742
Date: Fri, 14 Mar 2025 06:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741933133
