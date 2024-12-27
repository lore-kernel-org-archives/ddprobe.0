Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233A183CD2
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735275354; cv=none; b=ccmNdfv00Drfs8xYKqFISa1rzLHGb//XEuELpQnQjnNzbZaMXhmU2jpldx+fEFrh3Iu81dHLoW0YADZDeqP+Wfpgcu+/0NJi1yVXaP4SM9AMi7/cKoDUOcMBE5Vsx3mwDB+uYz4Jd0s59GzU/docCgyOaKktDW+UWy0BDJvBXws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735275354; c=relaxed/simple;
	bh=9Wu1vJFQXWJGcKYUI6meulvDGD1jXKRNHwF65/SiTjQ=;
	h=To:Subject:From:Message-Id:Date; b=SPuqVKp9DvE54jflFbt6mwYg4xxovXtxnjlWjVeXXtNUAMHLUOQSfwzoLBiuwmF0MtXvKEV9lcG3R0gVychnHdyo+tRBL92KqxX/s8+PkPV2T7At9FXpfpYpH9q9UYd6KWyFXdm0yiOEIuBz9SyCxhnRVOemz6ha7QKFmDbRq1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4TXvexC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4TXvexC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B8C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735275353;
	bh=9Wu1vJFQXWJGcKYUI6meulvDGD1jXKRNHwF65/SiTjQ=;
	h=To:Subject:From:Date:From;
	b=h4TXvexC7nJ29W+ipQI1bv4SbCYxXhODTvQOcsSC5WQYdKDTBlhILi1R8GJPEOnsR
	 meOxF5lxaiVLGxi4x5SPsdXe5QXfJPKGzdSP45grGG/41nF/TlTCYbgQg0FkOT3y0M
	 RK34Bc133OffOtCnfhudqvuJ37Kkx5pI0yptUxSFhy9TuNTmKbOBZLdb/m9kD/MSM0
	 o3sdLitkAG72bHSPJnTKjXk2WElAqQFUQgQDwID0WYmCiWyxgq8gWF0nQBIvEZNtLI
	 tGpHmGAc46J1V9SK6tlZPJQEgNEqoMG+I4NKDSfgHfXVHy/ErLzIZCWw6LcNzoltNr
	 /cAZOtjDvDnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9491CE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173527535358.12435.3878426476363779268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e412fb2312449b0edf737a868064cd93ff8cb5f11138b3fd9d8d279cc5377eb4
Date: Fri, 27 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735275353
