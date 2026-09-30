Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E0F4C9DF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790771434; cv=none; b=NeRYt3InZHRmh27cjhv4rWjiK5M2Uy/V0BmPXHiVeNkZYDiDyGpMGN+BYFBxgXlgcm0ZLk4h3aM8tK8JBjh0if2bh1Md9eLrdikQng8DdtenWVWZ43BlBtYlbtFu+vMk9nZozm4UqY1k6Cx/rU29igW6LqIaK4c0ZqboUERhnzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790771434; c=relaxed/simple;
	bh=JX4P1BmPSZe5HmlTyGFVyRrBhzLJZJyS14CQvhgcyPE=;
	h=To:Subject:From:Message-Id:Date; b=qLBWE7FpBRdjq3YpnIpcZVsf43FTuSC40WZYgY/jO+P4Xad/qOvNpK3oBUezayjC1V3jB2q5uNYqa8AjGsaUMWdM51MS6nPDj2A2WVxCO3zbcwubEgjfMeCPqn+Zq0dBuyBi9a3cVVFmpVtS7XwOe9u2FbJn6XOm3tupzxDKklM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdcmAGQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdcmAGQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06F7C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790771433;
	bh=JX4P1BmPSZe5HmlTyGFVyRrBhzLJZJyS14CQvhgcyPE=;
	h=To:Subject:From:Date:From;
	b=EdcmAGQ4MrHcGiKdTu+UfAcjwxB5x9dIeuJKb+a7KDtw3tzpzO2Mp7fhiwlDLZcgH
	 Jg6ZESdRyHQoIZhAzcG3HZMq++2y896bgVPbeDRZnvJZbILSkua1rUPFSR5vxu3zBs
	 fKuNpjXZrvedV11ngFQ8BVCvN7J/o7rqYJk1feUPr5cz8RMbtYlSRmgMuEt2adAEQe
	 YsAsC9Ob/kfVHdY3UmE8f3Omx26fFcZ8FbJ2PJPbm7Rmj25EKrxmMG8o+wOVccJhRb
	 5JDBVw2gS6fdOIQM8eVS07xVj7U23T8W4OeDZvPFXub8ACRUDAqAwLnEFrMAu8UOe+
	 sMcxnrTxWsY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBE0CA5FAC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077143369.16945.4713096677344284760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0b2852c5ce8f45948c51bb6089be34a32a406e7eb06ba718e3bcc66ea05577
Date: Wed, 30 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790771433
