Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2402E35E529
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778736034; cv=none; b=d2CVzpPfz9gjvimJP0gadt2dAyv4kYBc6iBsxesIom13UWjwfsbv6VkJvF9dvuu6JesXsl5RmMauwlE7dcVYAJt7aHNrR2BynwMVUi4dUeQIVrAWCPLkG5yc6iJFgCvA4AZNGzA6bDqFcXKJCVRfM/qXde788u8Qy7vsxWB695k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778736034; c=relaxed/simple;
	bh=51aL9zLZ8vv225dGq/LybYQ6TPdqzsCUSDWFWmoq6K4=;
	h=To:Subject:From:Message-Id:Date; b=CQCGODLsIli7YYCuDLdOPgMg1bvZ1q3G8tgay9HypsxmOskV39tMnDx7jztCdEU6KQZIVU8vFuySjvDepK6WNhLFu8OdMFau2Z0ZbDiTskN6b5MZRb+5srEUAAWPDxsJ+8LsGkLZ+37kLWDet6X3FsY0t5OPADG5VZi9LgFvK6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIvgYpTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIvgYpTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAD6C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778736033;
	bh=51aL9zLZ8vv225dGq/LybYQ6TPdqzsCUSDWFWmoq6K4=;
	h=To:Subject:From:Date:From;
	b=aIvgYpTZDq/IcRiMcnuRm9xtbrBoJvzFYPjJJ99NAk/s2cu+OMTM46W0VimpF1jBV
	 qNY85EXvVifLaL324coRssfglSZHLcgJ1YowH/v0/0YS9u02/e0y0RFWEMib1azVX/
	 g4GVPiZhyPbpSNXudMA103tJ3vOL0ltYWOdTBsZ2XUvsPuvIJ7rRBRC6t2uYkckCpk
	 ifsvtwwCrNw1AtPr+pL+tWq1R1xcnI0sW/mepYtKQZRycjgAlPPaxWZDKiqnIqlqJe
	 n558Cj/vccSiOXMkO7kMIVdwq8RqXBz+iWha5T7DWgg7aGvigv4bd6kinjYM7/Ji6B
	 DFz8Q9FPGCVkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE77CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873603369.13299.6473578476121160009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d8208c4bc1c3b12cf7f2eafdf1ce457ef1176e4772c7a7b51e93573d7fe40a
Date: Thu, 14 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778736033
