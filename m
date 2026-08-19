Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9FD30D418
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787112034; cv=none; b=hjgwkIMyuOTThsXrSzI/113PhS/wYhvvDDctKGCMRmsbiLEKIrxXydkW3ERBv0lzoQLCjUvQmKyOhSrFE1oPogXggMbIEknyW6NrORd1DkUVoFH9a4v2b5KJ+8NSGBx2jvrmNCQl1SBo6Fz6s9ELMjJnevXxrYaYOBOCAC1WSt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787112034; c=relaxed/simple;
	bh=MJBQXtpARsPnb1cMUwTOZtcVt0UoT69zWGhvqLTkLho=;
	h=To:Subject:From:Message-Id:Date; b=dEqPHdVQMDM/MfF1BrJ3psv1ao+lFN581XPUYCPokUik3XlRwbbWoxRmZZVcjiByANQpxQ0GKhjCIMGvRPCmxkjt45H8uOD1XkM6e091OavYWJm3jmBYVoTIgHzR5yRsRCRKZxzeyP1OCuMmL0q6Er9GIbMjbxtQ/c/tkPqi+Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9yrL4w0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9yrL4w0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE913C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787112034;
	bh=MJBQXtpARsPnb1cMUwTOZtcVt0UoT69zWGhvqLTkLho=;
	h=To:Subject:From:Date:From;
	b=t9yrL4w0U4M2fYxTwfGr3ojmlWtxT7mSAQurFc7qoOW/7WTqHHlEDKDawvvOyDp6f
	 dyv1Ua0rwfR3gGFbO4HQ7iNtFhN/DPzFhbg8feYa0MwFHXx3EmWufXBnZod68VsGN5
	 eLVyuMr3jb7oFq8p98s4u4mCsyC5Cck85YJsFsOZQkJI3oLLVsX25tJFqQmHSUe4hh
	 UCSy6+2i6JwZc9MRfwE8Ug7eGeR0hFujrrJgk0DeSLaHYWNyPB+/jLyjwq4wrIVX4w
	 mIdwKiYhQG28zDPFjmua2ds+cZX4l2rMS54IInGE3MvPZm1BltlVEtrkM7ycS3I7in
	 ONJ6eVP1Lv3Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36F5C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711203375.15909.14535844109219658789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ad65b3364f2ef0e9522813f958127e2f6188836f6d5e2721226f6ea54f071d
Date: Wed, 19 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787112033
