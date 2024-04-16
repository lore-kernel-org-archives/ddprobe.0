Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3881E4A8
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713299963; cv=none; b=MPYuzdiqyJU2yNX2L0YTXuhjzIDEaieNyJVyssvz/t1ffltwlkybuPaYZDDvjs4SUtrLhbUjZle267aAw6Nzdrn2J2/bUB/0scFswcymbsdyVve8GzrlbAXa9Q/T/EHwlVudOv5MkmSV45XxqxUmzqQchdBPooZYR6GRT2hzkdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713299963; c=relaxed/simple;
	bh=9BnuWc7fVRH1iS7tsY9OjMmFi4A0bzXfQkdrSBnRaTo=;
	h=To:Subject:From:Message-Id:Date; b=KzYvbnVexPnwRTeFwXZD5Ji0f+o7HntNY5MbGHWEetioxfqnLPnjYkAzK1gImSH+xRT5AdHJPiZ6Js2LyQ7MmzgK4YjIcXbVfC1PL0Gy27eI/YHuBAnixuKvBvaPXQzXx30L4Zd8Kwa/qN9bpPwm+5VMhGtgJ5kQQpAl1+qU+uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lixPAqK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lixPAqK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE01CC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713299962;
	bh=9BnuWc7fVRH1iS7tsY9OjMmFi4A0bzXfQkdrSBnRaTo=;
	h=To:Subject:From:Date:From;
	b=lixPAqK2ZloNOhU+mnh8trL0OLVHlYxydxrTGylZbanDt1wfXBy+CzjdvPjr24Jrj
	 1+9TD/cK5vtRRShfr7IYUvmIX7Qi6cTI41Q2GtNtaYxuCxQIqI6f/20sfm3iX1n9b1
	 WbxLY3G6+e02NEfkcmjMdzmvX0MWvWh7sE9Kl6jpd11M+0OHM5UHAMFpN2ATH3A6y9
	 ScpBS+sv4wecojE1d3KAVXe0jDc+bgH6iFOhebhuemVDJzbrrnNUVCvMmGwmzahycO
	 rTe+M+ExV2t8S17Y+2IMTSkbRK9i3UgqqS6k1MgLbiVnZ6J3Z05oEBjN0Dz8jyrM6r
	 rs2geqZ9d8iPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C944FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329996279.17649.17716433398615480996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d22cc6454641345b154027ae72d736c9a89a53246eff24c5e2d984b3c0bc06
Date: Tue, 16 Apr 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713299962
