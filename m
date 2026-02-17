Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1261936F401
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771348494; cv=none; b=uPEo6LyAqrO9ceKHIyKnj7sMwhLVuznvpKTvPAtRBfYEMfBXP4XxrflFGvK+VVPbIAbE3Sppjqj5YRfjrEvXzPsYDR5aIKd5EpDS8JlzGCAA7qrv7hSBK4zxz8rZxk+wtyHyyhh1nGHe4mZfjrIurRzWv3qaTlewX9iiN5oxbyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771348494; c=relaxed/simple;
	bh=lKNEkQ+poU5SGnnRNVpdw2Ctqj52vw3h8PYLccTZV7o=;
	h=To:Subject:From:Message-Id:Date; b=OBr/qIDPms6V65vUY+UXa4gYBhnycyPWOiNR6elMIPddmHsfp2TQ3tm7IG5og4vtkWo7Y3vjOuzmgm+XOnSc8usMc4LybKrC8jKMaESsQ33UJ+KDzpQiEBbyDqvzssk3m/rxnXR0PohcF8wPYhO/OjlSMqIjoq/OrZLkUuwPJuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5/3aPMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5/3aPMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94B4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771348493;
	bh=lKNEkQ+poU5SGnnRNVpdw2Ctqj52vw3h8PYLccTZV7o=;
	h=To:Subject:From:Date:From;
	b=f5/3aPMx0H3X+BgwjAqVKQ5F2bWWOV8k286y7bBXA/7wW4YFiute9i1c3gNnJgEZ5
	 BMJM+53wSvQ9xtNn4Q9S24vw7xLgczyN6C7xTkMdQxqPsHEC5wU8IHEhcXgYXeby+p
	 KpCGYGBiQuap+1zzUu003L68Cc93bdaNZkDlb/3vF3kA0JC+zo0SpzQBFWMgPtO0+2
	 oQf3t0Iq5K3igwrnQ2tS4Tm8z7OrnKmGvcs06fbNslbAN6dP3NgBx1wIpypsVfvjVK
	 e2RchOl1cpcaXc+oCh85dlGVUTzalfOZ5Aa7xZ/Qc+Ze9iG87dSW8HRDpCxjZH6e+3
	 fOL86S3PItzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E31E68147
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134849359.16999.11815596130646657031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e65d8e2899135870df7189680e02c67fee7463d11796f814a42cfe802e5afbf
Date: Tue, 17 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771348493
