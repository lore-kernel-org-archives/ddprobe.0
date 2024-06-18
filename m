Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2E713A418
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718752763; cv=none; b=peHy25gKlJIITxVtxaWI2lYpjIhsU/bJhk2GzeCt7Vx7iDmIt8hBduqRcV4Qg0fCEKdu+nQBMjqPMF0ojJhJUp4pqoOTWMUuTfn5Unzq1FygxxhuxfjManLcx7NWKKQMcZ6d3UOlp6v1Rxk8pVvYkAG+ySCtO7ybIsWE5lic/1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718752763; c=relaxed/simple;
	bh=Gx7/6zaE1K3fFD9/JDxL78oEtex/1tlJ5p2KnO5Ky5k=;
	h=To:Subject:From:Message-Id:Date; b=eWLKWEKSG07+R4mryoFBL6ubZEJ7p5wz3LqepmnnzsrdcEVSHHpIENc6u5VGazev5QOKkn3fiFVg2rnKZrGJiZxRzOHXV54eIIpsk036hHWbTxuDQL1nvF30aKBaFDLnckCULvwe4WI8r5VxMlZ2NgZsotHSAX9fKeqDECViY9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qznObmyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qznObmyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7E6C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718752762;
	bh=Gx7/6zaE1K3fFD9/JDxL78oEtex/1tlJ5p2KnO5Ky5k=;
	h=To:Subject:From:Date:From;
	b=qznObmyOsD6UdEH8KC1TqVMkgGThq7ArMBlKaVLv1C/kfQ6lqDaTaL+65wygog0/R
	 aLZK49GDLQtO8OFfZyA8RL9izPoGGgqEFT0PEe2vQ/h8gsesOv76J8edo3Q92UJnKQ
	 FSY6XKTWcPqXdfQ3ZOsApZ98gkJt6ZKTTE2ZQVYGp1zkUXVOv3/Rc+tz/NF+KhhIu/
	 haj+uL/+52JVnLNKv9inCstBlxELbU3Z74BPnR9OZyZtnFhS/8nou6LEkTfIM026kc
	 6JPwf7mb9EDA67rt1YBgCvqzPITXGMDa6ToGHiRvV+IqYqm/1D7LCbvxAwssENgisZ
	 XDVRJzbcK5fSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4315C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875276278.7651.4384223503115486049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83dbdb6705cf9cf55177dbff9136f79f3f00ada4515bcf56c936c7c773c9f9c
Date: Tue, 18 Jun 2024 23:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718752762
