Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9F6426685
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768935234; cv=none; b=e2DF+jIO5V+j0yMfpdZHtc7rESphT5lEvjSEyFhKpSMyGtsgLCNLxo5fzZy/w+/fYFxgWF4Mid6D4qLEeBgtlUnggr2QoXBSpav6hBhVfxXhEeKrL0OtDvcJaj4CQRFoN9aG61/6jERASHLNE2N3f9/KXb6vMJTU4XK7XBTDoR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768935234; c=relaxed/simple;
	bh=xxdTNt2Nbe6BpqEeI06C/vCKgxk1U1HcobahShLjRY4=;
	h=To:Subject:From:Message-Id:Date; b=obFQTnM2WJLtdKvQeHEib0Eklt0SM7XfMJB8JhhhButP6SIR5UhvqLNJwTvpFgRuJpyZokkPiMhaauv1vof/80HTaYgoW39I1xj4V/2evU+ra3eV9MatWgf9W/ksk0+7XxW3J1ho0gJ0iSmIRmWlysy2Ic1Ff2uO0ip4su8KII4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr9GpUMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr9GpUMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E43C19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768935233;
	bh=xxdTNt2Nbe6BpqEeI06C/vCKgxk1U1HcobahShLjRY4=;
	h=To:Subject:From:Date:From;
	b=Fr9GpUMXt2HSzwHYEE7bDI9e5Cqz8luE3t6i4NjALebu7UafqmRfYwk7VXEQtwDNG
	 ZiB0j1xd5nb6dNU/eKiA/RQbUaKj4SIJoht6t/yGzBPs9JnWNXzl3VT1YZKpInreP9
	 lcGBQf3WoUPt1Gz+KGY4fqjo4MevQhGzIem/6VJozdz9rv/mIxbLYUuBErA6JDFx6K
	 U3OqB669PlQGBXu38UiOKpAM0IHVF3cY9E6P82Pz0IG/Rgsg3nWjikCklcSGpGRhKJ
	 bYNjLykjLutMzFNCEHHZGEVUUPmMfwhcnuNIsQVH6VP+ImVWgSh4Gzo1dXKRa9as2+
	 wNF5NGz6+f4Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90838D26284
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893523358.19668.14805304048895396937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab364ce7546fac7f86a699e5b04ad06a3db1e5cba86d43671ef4b12e15a9d445
Date: Tue, 20 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768935233
