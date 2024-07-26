Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E11C14C5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722034554; cv=none; b=pDIAlTowTSNKbJpUaGA3NBD0kHtLln2gKLSB0C9bAuFL2P+JVrfbEZqboXfSP+nPxHdoYiDH7AeDwNkeG6/pNkzMl2prBD0Q3lxpVe610KUN0lDzEefQOssUXtR/q3KDD1rV0uIdERc4UTG3d/umzgC9IwlRAL4nMqNmVntGuB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722034554; c=relaxed/simple;
	bh=Y8SFUx+twAVw+LpWJeeuQUWAV8oHpRb33fgVmdMxbwo=;
	h=To:Subject:From:Message-Id:Date; b=rUghb7hvQNDl9RgMv49GLIkfLO1oP+nNwGKxNSfN73lQUFGRutYw9s3tPQbwaW/ACmEl/+nPHR4sWIonJSwb8kTLvH8vzmkQbVr85HyER44HkRuZr+/XxMdRnGsp+wiJNVZoaXN8kxmkajJJNrgio6UkmtP4v/w+09iKTWaDlps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYrgaMV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYrgaMV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC26AC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722034553;
	bh=Y8SFUx+twAVw+LpWJeeuQUWAV8oHpRb33fgVmdMxbwo=;
	h=To:Subject:From:Date:From;
	b=ZYrgaMV/iLtmcgBd4xnBnROt2qoTeGJC4gAZxLvpnqcnMBenaBO0p9I2fYbljlb/s
	 c8kAANEV83B+91oMSxo5MsJZp+TH+3RMSXFmR3OYTiuszFkv1fF4AzX0YMLdRV3jEi
	 xp//OtBPNGzVILOzkHKyVHSIyBwbMOhMoCVw+vfq5QUoF4oIqF2wepuTycHACMOSrx
	 hCZgctXCwchAPW/goLOPOmXaJ2PkfiGjTQ3jIGvkElEUIjZyNfVz82bsPe67F1TUt0
	 fsZpmRMtWSTEr+OMId+5vlc5Icw4nGaZ0Av7jW+wh72QuLVC0E2MDOwQwbfaNsqaLg
	 C0iwsrHz0Hrbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EF8C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172203455358.31579.141727346359059014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dceee92649f465663c04f807ed133cb1eae99ed9e941478d955433480b497e7f
Date: Fri, 26 Jul 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722034553
