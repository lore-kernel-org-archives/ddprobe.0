Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D7729DB6C
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745921994; cv=none; b=ebDR4lTYL9qj6i0z7eqbSCC4ElYJvVxMQH5WILm0b91hVDbtekCm13EhtfXN58moi/iBwEmMp6JrF0j3klnNrCOsTlx/1jS8Nx5WS5NLRAIcZf0nTZXnCSECk9yOmAROAY00SlbxOTfPeyxxFBPepXnQjwxOeF1J6eJZEoA2fRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745921994; c=relaxed/simple;
	bh=1kH8YDcnO/eOaF6q+EpsWq35hWp3h2B5Dmix1PRo7Aw=;
	h=To:Subject:From:Message-Id:Date; b=DXRsenvDUNnSSmi3BWV8Iwmf+LixWdExkYsXllSCHYaWjX4ki2QPinK8kVc8hkjc6U50GPfAibzYa1CqoJk+4W4FyqoaT+sObGuv3Q5beqonkiE9CYUF+CQ9y2zzAxPROIgIxkAsocsSnk3aCMyJvS8HlVx7bzDXcKVHZmGkbMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvyqrM8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvyqrM8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C90BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745921993;
	bh=1kH8YDcnO/eOaF6q+EpsWq35hWp3h2B5Dmix1PRo7Aw=;
	h=To:Subject:From:Date:From;
	b=IvyqrM8rgHyOoaxeoy9An57/9VxKSMAwnnQwhhW/ZiEjfhV3OcF9qFNTYlwEgrAjP
	 6FuBoS/oGFUnSmlJuvYl12i2Uc6ELH2BnRGQN5uxBsV1ZluyJh8CQZYmfDjz+uzoNK
	 d8zB9NY5TpA1sSff673RwmqGFL3scIHGtJTzEYeK4f2yCA+lS93lA50sTVrTWq8Fpi
	 QIfeQGKkK/wvpo4JG7E7BLXUPPUKAg+XFCOHyJ35PWa0YKFn/oD/Qjh+AI+tltIpp4
	 2GArKoGEjUluHk5DQVLT6CIEueqV/7ogFxJd+h1odK0rNar0EXT3MnYVL1/y07GSw7
	 xWQPGiSIclzuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E428C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592199357.6176.1893391006632155846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e40ae73eadd43e5af444b30870c0d79992f0f173f9f4617adef6410adeedd5f
Date: Tue, 29 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745921993
