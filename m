Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C9F625
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787716834; cv=none; b=RVg/5FWHLkUB5uTSqLi2Dl2ZiMAynYw8ydRyLE31zdgDTNBRb0zM2CnYOrOXG/3qpmhML6Afe/YueAAs5KacsPIE6EgJ/RzMOrg4IRDzdQ37bAnYHNPHYwDKVdjg1mXlCx3zN0UkAOt15qI3fbP0DCtbhxboPxixAOuO/bFgEK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787716834; c=relaxed/simple;
	bh=8hdGHNzwdNIvqZuLMKgmFk6WXQA2kyUyxT7gzQAAFiE=;
	h=To:Subject:From:Message-Id:Date; b=b6C3JOBFzOZz2HpClH1cMe1tHMvidrjhSPgaQ26YShbE+iAqMIhfahZ+OsIr3E0rjCCUO50REo/SRSsAAcGEE/1XfQtWc+wpVrXcH8IwpQLPlJoxlc+IIkgtyA6GZjhoyTVGjFruKDHM65ycXepG9NkiD4k/3JYNXXAnOGhZRHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCNsaTCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCNsaTCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65EBC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787716833;
	bh=8hdGHNzwdNIvqZuLMKgmFk6WXQA2kyUyxT7gzQAAFiE=;
	h=To:Subject:From:Date:From;
	b=MCNsaTCNs/mfcgiDuEU6GAAPT9wzKHFqEs+snxGVgpKOBEcphFjZHLuFxSqC4A3SX
	 /pPr4+gSjNBGVDmKiYFYT1Dn1QusUiNViCthBO/t1iZexULeeefR2I+Z7RFJzJAJmj
	 1NCIvSOnUL4YULULJlVRF24vtF80ec4fSKQ90/pFCS5sTukRZSRZ+RvJTWs0WObBQk
	 uwkBnpJPmRhNPW9VIeiIq4iN6m3euznPLbOn+9ZSipzQWYOohpVsgLjaDvQRjAQsvh
	 ZsIzXNViVpIkPVGmHEMOYzLXqjOi8AJZtSuCtbfoEYY8F1dpLR1N3YTamFz+MyI7cD
	 fjDI0QvIR+bKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9BBC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771683368.24735.10792569909204574427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfc285e2b05b2b65b3e63855f5aa025734027f27266b87c0502921eb30e4253
Date: Wed, 26 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787716833
