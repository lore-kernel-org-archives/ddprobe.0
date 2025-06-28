Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC5E1991BF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751107794; cv=none; b=fUcWRoXjVEeJvb+SsbnGL+G3RdXjPY29hFirVYpuAi+4NvwdYuQi0YNbFduShPFItREPjhO9foFed5UJrgijkvRKBo/wQlFC0I4/1wkTXKvHT7frXspoNDmBvRAmjemL6rDC4EqokvPKoWGbk++D9VURbhkMGoJCkKo3ecmxHdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751107794; c=relaxed/simple;
	bh=nD8OAFstLxCRWMbfNeY3LFj/60i/8RpQV/EU3fRXsXA=;
	h=To:Subject:From:Message-Id:Date; b=uUzKLUc5C7nT6p3ANgG5ZD4ivGbntJVX91EzpsaHbedBkIleHrljIX5btvYih+bElPvz2UDDQ/5JldvRuwuq8awuwQp8emk1SDR7tWs5dmEfjgGgOPOTtdcJZ3N2fcqaj/WEs0ZyChMZ56oHrEnM2FF1um3kJQKvO5JlVvKbnmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyvjbbcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyvjbbcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850FC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751107793;
	bh=nD8OAFstLxCRWMbfNeY3LFj/60i/8RpQV/EU3fRXsXA=;
	h=To:Subject:From:Date:From;
	b=oyvjbbcCDUtzACjdvGV0b13wYEnhJT5OT8eMxR3eJ7lowCnAfBXYaBraJ+JBt6CiT
	 TdJevH6Ytdih9KZKXAOt360i/l5af7On9QcB7Xah6a22D2HUDvH+e3iV9/KAWJoS9o
	 p6I0aVKkpGH16sWPWawkq7jxdDQD3piFMxkAIvULPWUuXq8n34HD2RAVN7pmjpTX/U
	 zXmf4GzrjjWLQvoJhkrjhkS0F2m8O2A1xoi5PX4TQUc9lEuIcQYMTofenOwRrk8fIe
	 +vQhaFQVCnJgKeut9+EaVkIgg2GhLkaOPI/kMXfWUrEt5ycE+Voe3aqFNwNXEieVNr
	 ftCvX32gcPHrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E45C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110779358.8923.14545055276757499019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11102bcb60bbb79f09cd4872760771f8b0c33c8d98412a6ad2b0e41c38966007
Date: Sat, 28 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751107793
