Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E161D12A14F
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712695097; cv=none; b=WSGCrLHLMy/QoLA6epe1bQ7hNKmTQB6oYu4oL5ZlwSdM9jJVNYgbWT6nJwsVlMM4TFltQoRSuXEYSD1ZsVL1krq1n4kkpHqENvD9425ZdXQ++FAZ3ucS2iRo/AbrpT8PRTixsGDJuxQCAceku1lYFSCGEUeACdJkX3tp3MQA+wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712695097; c=relaxed/simple;
	bh=wngW/OjHNSmmffZbRDQF5It671PTgC2PRyuUny5zhIY=;
	h=To:Subject:From:Message-Id:Date; b=j0J9bVA8e9TW5KnBaRDcLH+H9NoLeGhal92dDyTwo+sEmArjgVNhW9ondptcLfQnPTcS7FvXWDokWpy6TQ6VVHaocKgVOZQyzuPN4S/KcJZ1WsI9IWC3bwRENQGyC+QcOkFpbQtLLxPX1JBo+CbwvSIalhRTW0CgNkNOD4N/Wns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkftR7UO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkftR7UO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87AF5C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712695096;
	bh=wngW/OjHNSmmffZbRDQF5It671PTgC2PRyuUny5zhIY=;
	h=To:Subject:From:Date:From;
	b=kkftR7UO+qoD0yHrNXZ7vz1hpKAKWeUo8SCjqx9qRVVWUC6YJfx+wAeUo5+6x8F3S
	 Fuz94WQKIyvmf5nplCb6FeueeF80J56fRi9fEgoq05ii6MGgFEv8vnOd6jiP1q4zTa
	 JVNFZAakHKPKwKlpp75wnFeMmKgOW9RTrPCdOFn/A/8x36DPAG0UbBk9u3SoJhI05s
	 Wj+87bKsTihVPhnGXgTCvA/nM+45R3RykvSsHEzF9KQHzz8lEzbpvmIf8RGt/G40X3
	 syS54iZwSWT4BoapmqZJNRm0yiQzbhHp8EVo0je4Wua+VYLpO0nFGHFpJ3fu73bbdy
	 xFVikfQ4PnldQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71850C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269509643.3252.6401374118898483738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5ba7e128f6126dda2e8be370684138e3e9e2b3e4f7ffeafbd2d80ed9b476f4
Date: Tue, 09 Apr 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712695096
