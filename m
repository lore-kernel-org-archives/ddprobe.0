Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD9C4594A
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737490554; cv=none; b=H9gHA4CQV5v5t0eTPtMlfVRKrky2IV4ewgPc1u+la2nK6nLaNltVXzYx7nJOiojQQgCqJDohS1fFIBvzbjyq2aWsPZcPKyBxowAeJF+KNqAyCF43ebGcRHWBOEo39jOynn+t15Ud0iFl42wLF0i+fyPjhU6SSvUhfXqcymx7Gbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737490554; c=relaxed/simple;
	bh=lM1HvPrg6mOXjbQ8ethVyYRZ7pSaHl6D15Kd3TjUNZE=;
	h=To:Subject:From:Message-Id:Date; b=cbzTFAscQ3ycTjk4j0VgRUgFtiq8qSUzKX5/EvON3YQvUvyOpFZI55I1QelWhAZMFD0BAyVNRdnmkmf5MLFPhiGZNgJrVNUWRovYwkNXuWAEtC4xCTjbSoVFAo42AaaXtuPiY2ba55pii41yZIT9Z+n5mcUCNKq707BX/d+P+LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucNZKpvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucNZKpvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8173C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737490553;
	bh=lM1HvPrg6mOXjbQ8ethVyYRZ7pSaHl6D15Kd3TjUNZE=;
	h=To:Subject:From:Date:From;
	b=ucNZKpvsa7I/4JKPAlfTZQEa7iCXlGxThbf6pIo09YLJ3CT4T5d7HRItlY/0pyMDE
	 RUHjzSOo2wx9GnRv8VbMvvtsoo7ZDPQzyH2SRXQJmm/Jvppnr/H47PdhurB1pKk2Lm
	 D/gCpXBGDLKcQdHMe95reP4Mt6geYS913j3a+PL5bqscaLYciKbHomFmmSx0/ZmmNa
	 lt95GR7E2BST8TplDLIlefJkt4G9SF1e5RZqZm+qh2yqY+rls7cs58fsaqofEGA1Rj
	 D8/w6c+hbB4pOAfRpkCwMYhDGv34/xzKzR0gN/xsTvC4j8l/Pb6JQtP0ERF0oKfo1T
	 xNFFWwZp3G2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9CC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749055358.5314.11722007143470624369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c7b17bea8b345d07f76b2ae1eb861ceca5b029d379123275d349d8881c3c92
Date: Tue, 21 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737490553
