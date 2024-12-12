Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC582905
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733976954; cv=none; b=HxGo38ajW5QD7P3hJDDZwNXXgj+9DXCxVIZe8iFvR2YNK14h5dy2u25S9tDl3Bu1AQ5jZlKKHogTtcM3RpF1G0QQAVpbmsbeAgSA8fzv9kqMp2mcE9VRlVj6+2ssOKUuT9nE/FNLPPFXxXX8BO2WCrfgxH7z9CkA8JaBsBKlm80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733976954; c=relaxed/simple;
	bh=gOn5tVXWsULHrARr8V10FElH+5M8NVcTJ1VQ8CuYP5k=;
	h=To:Subject:From:Message-Id:Date; b=KZQcC+7XqzqUh0GOsxCVwIkuT9M7pPdHu42yhD6l40bxH04DSZiC+aznSLmzdNhJz9NiU2Ns7jXQLTH5QlUimIag/BI80Op4m+2vQulkx/Z5++ZFV18ytNHl9zNVd5iqff2c1alNCJgPt7aW2CEgesInV7AXVM4YBtSUFNXpk44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDe2Lvct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDe2Lvct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A615CC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733976953;
	bh=gOn5tVXWsULHrARr8V10FElH+5M8NVcTJ1VQ8CuYP5k=;
	h=To:Subject:From:Date:From;
	b=hDe2Lvcta/1q8Mf1idZWX19WRIyk9MnODbtWq9s4zBM6YwD2fo26UTanVGYy29hvO
	 zHPMwEP/a1ihgHNhtSqawfXvhKxmSLc9q6xpPiiIuouVr6VTc0X4CA9uLtpqt8MV7D
	 w1zc/7MyMdAApQ7lV8/tR9mSiSdAzjwsIx/bWvjPi0+uMLO4jVIvEsIpLzGo00j7Qo
	 hp9h/A3TsQmp5R6lZE2H5pbuppoO4dIpMc7kxJQ+qhzvt4FkCTqYbTWcO91dgumsnE
	 vpt+lvqTx4Lor9DIkQ64seCWbV3HUPY8MmR/x7VPMpalOrEzLpFickzGAkgJcFlj+f
	 4t0JjdrH6LFiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97478E77182
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173397695360.12335.2242689687147671303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82db9e8980881d3c65ab1d61063baf8d2cf036698a769a48a0e213a7a0b7d6d5
Date: Thu, 12 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733976953
