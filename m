Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212CB8F5B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763674314; cv=none; b=BWK2iP+GHjIX67WqVM7oH474j7qc9VIBqpRm6VWtQm4pzB4eFMmC+bQVdvyuk4ep7+Qltj2a/ryxT2+pSjPfC3hR0R8wKCzJGduGF4ph/+vcnKH5aEhY9/9pSKMTO5tII5HSAkUTjdsTk2RUcPscf2ctffI4Ppd9nPY3rHcWJZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763674314; c=relaxed/simple;
	bh=bdxDrPuMDjX+ZjIFfAEY6/0/S/OeBRDIb/QsWm8diyc=;
	h=To:Subject:From:Message-Id:Date; b=oVlt+CmqWj7SD6KTlb4dzK411b7V8WUhiMmwthay5aSHBaDvfm6Fubz3nmcjjk3arTy9zKuAJv87cuZv6Tv5yhp8sWr+truIJ4jfrMq1KpuV/RR5D/R/4vOT7IKznc7cbJ3178X9cqGroEGiQIIP0kf+JUIaHLUioNOMFQZxsgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4EixfzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4EixfzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A48C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763674313;
	bh=bdxDrPuMDjX+ZjIFfAEY6/0/S/OeBRDIb/QsWm8diyc=;
	h=To:Subject:From:Date:From;
	b=g4EixfzAbH521E/NhzJ6652v3tGTe3qEuqKQrAGTWoSHcfnWK4YSVxKM1r/VX06ID
	 WZAUzKhDZQeK6pNcPHcm/gp8b7hfdUWju8shhfmPZN02bJ96tHPLveAngDzDfbDThF
	 YVi0e25HDKDk5kJqMxEHMkE6s89s3pf7UuZ9xjY555lliga7pHOIFu+DSr6SlecswT
	 cd+mRL3viW11xqhvSGnC7wsr1tpCANHQ4RB/SFE7Scfp2vuQes1SdE8zHJXi9BC43B
	 EmMceCYUB0jqXyv9h+L2XwGA3tU5+R3qSQ7FJ7zCxTMHlukNkebyjs3uDX+49/hnYi
	 tPEaHYY47QcLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C58CFA446
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 21:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367431359.10130.9577045617274365619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7055697476fc407a06a9da4cf931983ca6514e82c66a2504862df35853111d
Date: Thu, 20 Nov 2025 21:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763674313
