Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C9E1991CB
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782543514; cv=none; b=UqLyZD1jIjQdIPhRWnUULuzOvpoG7p9fULuPoNI7m2aJChr4DfDy9RyIscmkID+RgwL6ILUYHs4IZu4k38JJmZZhM/D+hGobeRSYJMIoAXh1rw6DVgeSyV3+m+y8ppBQ3XVc4yv2lEAcI+9d1KB1CHyjRzLjEsvRWdBrnXiDUCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782543514; c=relaxed/simple;
	bh=l9C6nHqrXlDv/+C/vj7eMIu65NSxfnjC+GocesIG8Cg=;
	h=To:Subject:From:Message-Id:Date; b=hElLNZda4Q2DGRL02mJlarr/irveDvxEmxo9JSoSy4F6q93/NHnOqh2Oh0pvrkpmAuWkY/tT4c+RxE+42tqpAlyjSAbVs0fAqUCpvNSeKm9FRQiOZ9VGH+bkbIBloqFUIXyfRj4OSvYuYUCt4ev0z1qIzAdIXz/K4XnhKzfp8CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYPb0Tj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYPb0Tj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C415FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782543513;
	bh=l9C6nHqrXlDv/+C/vj7eMIu65NSxfnjC+GocesIG8Cg=;
	h=To:Subject:From:Date:From;
	b=iYPb0Tj5WMElBTpfw7mpgZeNMLoAUcJDIhloi21FIPFfxleahEpdpkKM5nCRUVUUh
	 ZplgjL62YXhz9ZN4zHLk7jwwoFdJQUqPezxMDg4zKVOAoH8iqjxurPLXxZJ1EU6Ja3
	 kWVmNQdqGzishxo+Z/mFoe5XuiuZb4NPeH+jCf3vPwTC5AK5Wqd86hI7pQKKOpZfXS
	 ieeMLc2qdzygO7JxaxGFt9wV0dFeutSAYoDQCTfPlZDLFWZvWf55dzPs1q2hgow8jl
	 w9aDlfJHkK8/9duLr9TYSr2hRIZu57F3PY5FrgxqEso6laSOlkRAqCX/EIlIP42RqG
	 nkK2cZbLALD4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9467C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254351368.28181.9044148670326611031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88dd8436682e8a74421deb66297941cfcc27e2e0fed376cf143858b701a635d
Date: Sat, 27 Jun 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782543513
