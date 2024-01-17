Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A152563F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705529897; cv=none; b=uZpPMjIPZO0U6fSckjePqXYFwxvIkDElOUgX7xcMM823ngT51LMrBjfEk1QqwLJEqMfmxSUfOvVDmzn7U3JaeJWNhGP4WJRYzfTw3ZMiotNoZZ13kyRM29sWmThXzc76m8NpiTSLTWGpG/saXZskhKF5KnVtuc6a2ZaoN+e0CUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705529897; c=relaxed/simple;
	bh=kAjc3djZYzmAZfuD+GnkHibeyb4UW0E/xhkFeHTJiX0=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=V+4ZfMEQ26k66Yefcmtz4e3+n67P1fAWKOM0BxgiMvjxCS5few8RQnzfR/0vR4pfSa4DCgMiYjZenbWb2sv1iZx4vXe7IbmznvTbY2F6URi9UxpiMRKawvdTzVcs35Te+kTXJn6qhno+wFGbrLfEoevGpEQXC1B94qQ4KI2K9xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1ktJRBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1ktJRBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F8AC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705529896;
	bh=kAjc3djZYzmAZfuD+GnkHibeyb4UW0E/xhkFeHTJiX0=;
	h=To:Subject:From:Date:From;
	b=O1ktJRBexK9LB88RdvRS7ymtr4b9CrdiIQ5mSJgDneaGs7qahPQXDpNBzyO/LUg0E
	 VccQ2zGJk3ArjxnVu5DLlLG6u66RSjsDv3l1C2yEyL4p6jDddGxD0PJJ4pqNy40jMB
	 V+tb8/tKIaOag78zouOyUInY3TDr8Zo6mcBAA08ZdYSY3nWBOvsZj0ZNXPlectuP/k
	 CBECG6NJadX/t5ZVuRIwZgKmRJkY2uuC+T6sdpgbneDUQLERRm1ROfdnn9cupOFpwQ
	 VQEq63STiJYCEUWGMBtac+1+cypp5oz589Mk9jyx8UOhfst1WWK69Atn7fkwiyYFsp
	 gqcqR33cjD45Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683AFC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170552989638.19975.10892614927774490348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816a09f38dc225c62b2239c6ac5c03c2815977522236766a4691c009abd9b62c
Date: Wed, 17 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705529896
