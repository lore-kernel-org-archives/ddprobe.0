Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F8E2BEC4E
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778727034; cv=none; b=jABluf/lN8KocvOb8Pyc1fubA6fG4XvLjyx0qh7aaDWqLQO9nzy7Rvvo5Ntc0nJdw+VcS3aSaOE9gZfQU9mLRsFsWg4Xx6SsjSfruBq2xDxZoA+RIPA7Nk5719JgD4NQDcgX7ihe2an0PrtnmcmCoKWTIvaaNyJaUYWnZvPMd0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778727034; c=relaxed/simple;
	bh=BxovreZUr+5/iufvP8yahDsGney9xvNM2ARP/6fLr+Q=;
	h=To:Subject:From:Message-Id:Date; b=OGMAoV6oFxJ887XbufZMMLVXVpmYMbtPvmVTSWlLs/MB0G8yaG6PbgdLTeDu9Xd5ihgLtpuCtijMith3jWN7uSY8nRcvD+sa0OOFZTt/IVutb26zoJxAwYBpBcUJ9BWaMonBT+qV1QRFdNVcR7PVZmDiNd/cAEnTF1ODMlXGZcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEjGACEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEjGACEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6EDC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778727033;
	bh=BxovreZUr+5/iufvP8yahDsGney9xvNM2ARP/6fLr+Q=;
	h=To:Subject:From:Date:From;
	b=FEjGACEUnNii7tURGVM0AwfWc+Ujih9PM75vYy3/ho4yrrF322vz+FcbxknfQ1Vpx
	 Bm/v2UVYM7HYRmhh7Dv71KfP5mlHo+xnXYJAnX78canMUOI58gCp+rSWjUg8L2S7tr
	 OWahwmUJdUlZRtAKt0+0AINOXkgIyU1sVQr/nGR4jZrTpPuI5iPTBYt4DCkOfTseTs
	 ywEoauDjM3M/tppMepULPHEB7+CueT01ADsmNAm3JmoxBDBzYT4LFyljF/C7PnyI/I
	 6aiZu4Uz71VF7Ppq+KMXjFF+/fZn7pqG1le6KElTjj21eKgWBgEe9WubyfZdYYyO7w
	 7QQ1E5MX5khAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0BECD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177872703369.21731.4163260624483892577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdaab45dd0bc45f1a5397abd95edc6c5fdec0a94e13d6a57008a9967e7f17c5d
Date: Thu, 14 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778727033
