Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265BB2AE8E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752700795; cv=none; b=fv8YXOcibPEHgJZGr/GJpJtqxgvcbm6lc+2SaJp7lDuME/5q72fOynSM0FGLB2rWdOozuSwkKrsCL+jxEf1PYxIwj10adtbwshlw3A+iv2bgmIezAEFA+cCZ8MfsM+IR48uXEjOpknPCs+IB++3rp98urU4oxfifjMAvDD9ntx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752700795; c=relaxed/simple;
	bh=t9LTMvSPuuEKIid8wG9MiCdiOzzBVJ7FdIfOyq+bP5U=;
	h=To:Subject:From:Message-Id:Date; b=kuQBHEJ9lq4i+st+X8h0AgTSRMbRQe5q3GXxwhzrLPlg/xEZ5Eo4Z7+mGqtLsdnZKYBiT4BB63MTR2wNpiA9mzwV5DOXXwxUix60aJIUjo0k+wgZL60FNR99Pyqe9d1da4c1YadrAT7zAe87Y8RzjD9Vx8kq0tMJvRiMwEviRGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMNQjx30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMNQjx30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B373EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752700793;
	bh=t9LTMvSPuuEKIid8wG9MiCdiOzzBVJ7FdIfOyq+bP5U=;
	h=To:Subject:From:Date:From;
	b=ZMNQjx30TVCTMOvLGqQD3KOVPxkTivtEfc5OKf9PxpQCX5ZIEs6UOZCOpX/L4dLSO
	 4CXxKQOQ7crv97InG6IaaV8XydEADuWAR7j1pdpjin+zxKSmivdcfrJoqqKCmACSd0
	 BL7H/1E6h+cRMQOeiEzB8fMOkBSec98793bJ3GSd0yYt2838ahFYHzEYuDxATnyJ9C
	 zoI2+9q6rlrQtKeaugOLzvGjDvIzJ0WsEL9DWTJUe5kRXVUHkqCvipFghLrEPb41GF
	 a3DP3yGk9Rh1vMLtmXtJO5E7y/TB7B8NZUQwH0bwyB741VTZTq06pmg09qjpDG1Dvc
	 Zg9K50rYVi/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDDC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270079357.32466.18250462329927919598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c28e121f9919a5d8ba5faa33753b4bb6ab317365dd58367ed97288ce56b5c8
Date: Wed, 16 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752700793
