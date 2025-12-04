Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6ED20C490
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764856974; cv=none; b=KOOvfhTX0D6CyuALg1CAQ0DDvkAdGRnKvXnbuuKh+hjk4x9kj/QruOdHeVT48JwCaJVxZmOsBWEAPY4sZryYFjvXVhrzwz1LvFN9c3Qq2/TjGmZCI4lu1hqlBZkCcoY+9m24reihJvWOpGotxnvFTVgaTCVHy5gdTp3mF7UjD10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764856974; c=relaxed/simple;
	bh=g2O2cVUFISS0pfmjamlMRnuIshpVg9SArm8oaLk9pz4=;
	h=To:Subject:From:Message-Id:Date; b=MgR4dGgrfoG+T5tRuhhxpPs8e8dJcT9SsYNFu2oJHWqMR9+bMPl5fB+yA1F/J7tvfJhLYyn2NJobrDfMqtjbdRLW9om6A+rJeoFXfSaxo/OK+DTZx+OHV+veY+a6/UtIXXfimbyptc41/G8e7AjVzihdoMtb77Iro2/Ibx5v/pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI+Wlb+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eI+Wlb+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E26C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764856973;
	bh=g2O2cVUFISS0pfmjamlMRnuIshpVg9SArm8oaLk9pz4=;
	h=To:Subject:From:Date:From;
	b=eI+Wlb+GZzB9/ONDRk5nyN3ik40Z6CRJ4AkgTljDhEEhA+ZMNUSEJKMKvw6acV748
	 357Y8pdKUkpzPphAF+qTpEGy6C5qYnefaKyiW0C2pFputzCxA2blAY/H0KDWGLBe2G
	 gTrYvFWq38JawtXqpXEqYIJYv9DVtmpA7mj0/GlwhcJfLUc4cih9bU7AHJau48eSp2
	 CbaM8NGH6rQ3CE9qvWkG3pzUVz0gRvO4xkvNjw4zbn7v1qHVube81XLPIXGdjB+zwq
	 6mc8d+Nt7akgkN+MXFaDszXYZtflv9v9U5fkN6QgpOyC7uBJErR/TRazxqYBDc2TDF
	 eTWhg+oVYAo4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962EBD2069D
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485697360.25778.6104254274343978818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798e40f2efaf14aa9f185bb43c423c49a3bf0c0176bd82f2d2878d1e57979267
Date: Thu, 04 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764856973
