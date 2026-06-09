Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1213AEB2D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781001934; cv=none; b=FrQ4+EGI7aoehTRtQ+rBhSO8nMCJMNk1FhLXXECU3mrJgIkl/OG9SV8bwnHQc4y5+Ifp3cdorzeA7xr+akufNR9tdqZHQIVnpPLZdPJENbiLguSz+joo9K5fSuvUyxTpFBUVyasIC86g+mlkR+GcH/sbcsnslCHpxQqoCiRiNnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781001934; c=relaxed/simple;
	bh=OdADtSShHI+3dvsUdWal1nTw50nh7/7VjWYRYKNCa4c=;
	h=To:Subject:From:Message-Id:Date; b=LRdiQIcoGhtIlE6ANKGU3q4tZ6EL8oa2WaN2Ai/GXFhSqq8mCxYC3IsUHwaTyyzTMGe4m1Chlx3XF4fmpDsuA4q0ILxuikbvCB6jIRgz5GJxhHQxoAImSYqHjZmigYafYlB9lkzJhGYvwK+AKZT5ID7XV+ACnrCHGAHRs9CVRy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1i+nnuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1i+nnuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C45C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781001933;
	bh=OdADtSShHI+3dvsUdWal1nTw50nh7/7VjWYRYKNCa4c=;
	h=To:Subject:From:Date:From;
	b=C1i+nnuPW3I3X28xAarxYAiPbhsFoiIgfBXWDu+tnTxr16sXPjOFEbHwzoVTwrfL/
	 BYAndOpvvrn+erpvgHw+w4KAp9fGcvHWURFdOYtSovF0TRWwhrcz9BWJS3Bt7W+vH7
	 LeXYHWaNf7BLobG6+LM6vyixbvGScjL4iy/xt45EgN1v0lU1q+njrF+bKWSZ/I1rUw
	 XYnKNSa4E1VlDXJVCrwHgpqRG2uS0yDpfvdYwB2W1yGy8YQJEqZ4v7wqbHjiQ1cL0N
	 PpD2HZN2niv/Ab1Ik7o4bXeZoGV8IR7LXmWgB4RXjqWWLCRvsQNsyGqMEkXKW4uYXK
	 MjjKQpsGPrv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B204FCD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100193371.5360.11894068650716109266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c016406f6f22ffd012190c741c77a35bffd983b57c19a7ee6b12f0a2e662eb
Date: Tue, 09 Jun 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781001933
