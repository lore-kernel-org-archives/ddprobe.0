Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E22A79CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765616574; cv=none; b=GEPPAw06qEjJka6IGzIRx/lDezgpRHGFipOmMc/0F9WdPd30MVE58kqA1ATz/qj/hEEB6XIuY9mOHZZPKy649hEwdxmwmElOc0GeJKr3aK7YgQk5LDEjNudtJJx08bdJnQvwz080KIdbqgOWYoUJBv8BNoSE1d8yS5QhbimslrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765616574; c=relaxed/simple;
	bh=5zyOqn0uwewpZyew+JMpZmisdTNHGwFNJmsxZmzUKE0=;
	h=To:Subject:From:Message-Id:Date; b=gJvK/StzY8jjpftf5HDPVdOkILTQx60ky4KRnni3nxbXvfhpxmHGLPtZaT6FKht9cWC0fI6uUvqcp31Tp0EMIVeIAYZP6XZyMuMHKh8CnZoczbcZ0XdpgRlJ1I2ldEmlNJxsaQWKOVRP5K3VzycAxy4ge7nY8Aky2pC+1u6Jg6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aY0gEx/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aY0gEx/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9EDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765616573;
	bh=5zyOqn0uwewpZyew+JMpZmisdTNHGwFNJmsxZmzUKE0=;
	h=To:Subject:From:Date:From;
	b=aY0gEx/6kcMffdkTActp5EqLZ8ZERMx/4ciGGYemLDcLeXW1Ie9j8GzjI+J6B6BhG
	 X6jkmM/QjhXrnadzO2SSYB7q9a8CiDTjbs5LVDqJVemSQ/j1eWwAgbHresQQORQ2y9
	 BTm3THWlUcXXW3OiI9fY/ZN6H1HVnzHpcArvKf98pRCzb3D+YG6HobfJ1Y3WcMCevH
	 EY/mW48zTv2VHx+BwZHYQJ5w68UizYNc8LlIpfnTK0I8S0/GUg/fxi1cnkotxVcNpJ
	 6VKgiHpmvD///EWyr0m64axct4a2KxVkDzG2P5ilFlf16G56Ga4lx/tKKUrjOnYvVe
	 YRZ9x2srG0siw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975DCD59F7A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561657361.20000.3894656229289331307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548c8e87935a0aecd048831152b00e231107637d9c804626ddec6789aa011df8
Date: Sat, 13 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765616573
