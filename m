Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319C21C84C4
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742633394; cv=none; b=Nxw6L8DJqpMWY/pfYdxUfros5Em9qP+DxcI9ja4kXXWr+pQo3AYfcuLFZugtnYr7xAAfDK/7cyjUQv4300AhC2etJeoIqNDfWghZB3zF/SWJrvDGs3IVA4k3lU/SU+ZFO2RLg90UlJSHjmF/SQBQPwtb9e95aEqtiPGf0wFTg1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742633394; c=relaxed/simple;
	bh=qdVc6ffeh4q2WwI+FKUT7Eilr9r4z2Bv52NilOdYuLg=;
	h=To:Subject:From:Message-Id:Date; b=Z5RewXYC7bKrcG5Hq8hFJ1yddFyvwmhOk5ONx4R45F7QOa64nTkqFHJVVb9p2qPG36Migk1CntTibihRidW9Iaf8cNwq8hsCsscWMslsrAepuePXoqakm3wnQeRSkvEY9DF5BghfnQfQM9ylzeTmaeHMLxMCv0h3Nbw6wWUvSWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIS1ypfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIS1ypfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7F3C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742633393;
	bh=qdVc6ffeh4q2WwI+FKUT7Eilr9r4z2Bv52NilOdYuLg=;
	h=To:Subject:From:Date:From;
	b=hIS1ypfzNwCD/ph658mOwBqVaJbA1Zix4VmpSeNpd77ci/R948WMJuJYJ4+xlpCxo
	 CeNSkHk+qJjqa/lGJkXw10pLw2eAiNdmfcy1nnCJRweoDpl0/3j8R53HACiiO9/go7
	 7tRbC3/Jel1NKLX6T4vszbhirJq3Cjh0lDEs+WxL16ruWFu3ohAi32OrrDofEH3VYj
	 nG5gApwDD/OE3Ey/6dEVGNs7Wv9TJNoIz+e2eIqA622SyDLxckZEEvEM/eecT8QgGx
	 zYJqmzIhxjX7PpnHHmA1U3o3R0Qaorad5zBdXRpQ75GrI6rHHOKFBPU5rptSBKjaUn
	 nMJJ7Li2PRxnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E88DC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263339360.25896.12998639876071908913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5056fde03d4179f5b78e439aca01af1e498c5c14acb1ec69346c80e846915ab
Date: Sat, 22 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742633393
