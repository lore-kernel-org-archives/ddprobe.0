Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE80131A60
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711139896; cv=none; b=cz8axJq9Q4+VqQGJ1UA0DGy2Ub2Lz7Xi/a/hU3aSbpB/W9hV1OBpI3qfck1Tp27hzIpmPtMVxf1pGmCr2atrcgWJ6wNBYU0Su5SB3LDv11wCfQb3TqmU1eycdF6QEzxDhJ9rXPqX57pwdXgM9Z+CB4xHBDxqaEfFan7obsJV7H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711139896; c=relaxed/simple;
	bh=6GvwE3EKx5w2h+Hh1acY9O7SC7s3OKsLSLl0MZx9jRE=;
	h=To:Subject:From:Message-Id:Date; b=nuEKKKmFAzQwMLgMj7t0WF1BldM9uMX0oZPZ/AtsQZE6fcyY87B31rJnTCZrFZ7Q8tKVlDUQoa4m6OVNL3B/9yV061iZJ6aMNUqm1iy4QU5Ryt74laRH6VtqK7+tBW5uubFr8+L4VITnseu+Z9r1Z9phog4sFRZJkWDM1O1LPag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuRFzTxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuRFzTxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF47C433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711139896;
	bh=6GvwE3EKx5w2h+Hh1acY9O7SC7s3OKsLSLl0MZx9jRE=;
	h=To:Subject:From:Date:From;
	b=XuRFzTxWd7/ef27wjVtUUN0fc15bHczC5n610opS5RefeFEb/cNBTh0M/qHKHhaI5
	 IkRaUuKDArK//xugbTwQaBsHF3kPEcM/GQ9jf+bTid4EvlPyvtESuPsQfi0qDDh2fs
	 np2QOcueCzAMx206gzQcspti4bCgKL2wI/EqkRbYmoGw9lSFXAUHKTqcyxGV33LUQx
	 3lsc9uuzHkQWbXE1wyWbX1My2p5/KzUPk8DGMIXyGdLKUykQIctvvHYoHgjrR7W3SQ
	 3u5zSqVvjTHM0uEcFxH7X2EPbzSI+eBOI+D3wJBjQnuUpeM+IacggHmdaVhpIbczL+
	 81VZ3l+WHLSqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACB6C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171113989642.5333.1657833006455391345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51765fd01a5bf9c1272ab3b9c610e015f8a18934e3afede739155f92c7b50245
Date: Fri, 22 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711139896
