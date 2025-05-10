Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BA710F1
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746850794; cv=none; b=ZbhGEZDw0mVgmUEe2X2Z7NthkSpwQ6GTAZEh3KGdZ6/GCN+RCatfhR4BCKh+A2HdQ8zWqYwbWgENzYOydHckHC7KiMXhu/3RRsQWH3rWA0Sz7IhxySIaxUkFrzgnU5qBCTVgTvs3GNNzd7mpgmGu9xbmohhoHMOxLmHAR6jbras=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746850794; c=relaxed/simple;
	bh=u86zgWXjDieYEUxYG8fo483PrL4SDMFotKCiXi6dEGc=;
	h=To:Subject:From:Message-Id:Date; b=UkqnLFsmjXB4yHWWKNJk49v+W+HAVjUU0+UONvSf7S8uqLD3+BDPAOWSIMQcvvQPDtmFPLL6uKK7dverLyewhkpza/5FqouB5QIDXn55/sEYfFJppPF88b5wyKsTZz5OGV9HHr77nUwZLLls6nZnf9zWlVPbRen4kxHgAMsmKvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB02jg44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB02jg44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C574AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746850793;
	bh=u86zgWXjDieYEUxYG8fo483PrL4SDMFotKCiXi6dEGc=;
	h=To:Subject:From:Date:From;
	b=DB02jg44/dS6n+vzDpygwYe+Ye0dLQCHFJ81p+iCt8p+8uYGZG36wzzp7JNE7ed/g
	 g5tF2m2QPsCZW1pzyDXywxreKAVx2eZeAF0BqbEXhtLlISv0++r43Y1rt/o44fTHda
	 FqGgELBXDPF0pzz3Pu1LTqIQZ6AZ8jLydqzZAmSPT5hkiVvTy62ghkARJUQ48DMbZf
	 28iufye016L64mTIUWX2J3I3rwCx8A7d8BsSXUePyYNd2VA/jUxeKqtfGKowmsHEES
	 1ucko+fuAKRKITLXgqvAuX8o6w1S1xxE4svKQ/2o+3Di8ir0ZBnAcXOemlUAexR1DQ
	 ZUslEyqf2mAWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CA3C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685079364.20109.7763641453434439492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5d45220893a0dad9f1e38456965937fafe37b0de8018f08aae16f3da87930f
Date: Sat, 10 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746850793
