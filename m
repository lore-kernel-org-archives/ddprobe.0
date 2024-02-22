Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0552A382
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708576697; cv=none; b=Z/eyAsHZrMXg5msg+sSdvLSzvG+ZSKIqqS1jUKJz4PPMBF0qbTCzemx72MFm7iB9H5btu3au8Z104gKk0CV2UQbFn1hpUG/jmaiaRtA3oq3dqmaos/Ho/h6vZSedbZz6rsZ4eeBPkpj79zx/atC3mJg1FJGEy3jMaUg7ukdyw/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708576697; c=relaxed/simple;
	bh=IagghZqJ/bwAJbtIrcndFn8y2dDjueHeDISfLIjlT9E=;
	h=To:Subject:From:Message-Id:Date; b=l/ktN+rfQkr2ogadN83j1dPKOzbH88cUZfc/WKaVEZNMcqwGLuQ2FFbM16bDsB4W2L4xcIH5B+I8Wh/aUWt8AtTAxVWbodsBV2mXnYJDR1uKyiQpoFspJbtOIysNJH9hgpLNq9vQxI/kbNziK/A1iiWkyGG59i9amZ4d/MgWX8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBUF/hmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBUF/hmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B67C433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708576696;
	bh=IagghZqJ/bwAJbtIrcndFn8y2dDjueHeDISfLIjlT9E=;
	h=To:Subject:From:Date:From;
	b=KBUF/hmco5/UpakNjCo5P2/IUF949yIs8xoKZSPfsm2mzYeEyq+kiPv/D9sQdPghQ
	 JhVnC5F6pJ2Y82mmYeLsSyUZ2K+NmM1K21PGpKCiG/IUAlSJI3mPXhJ0K6OYl7nRF4
	 ZySTF6SvZV5LpoSTNS+17InMLEwPqvH106IFrlWUsO/Q6o97DUV2ACSls1brKAYXQe
	 13MGhwsF7QYMxbc4XBQP0L8aHdmCgdYbI7wK1vkAOLQPDaz9TO92Lb3gjdOpVlHiQA
	 laz4PJAGBK7tQtb79ZWO3Oly6gpGTX5y4pH0jUA/LlqjV3dK8ewRPUqpCfjTATdACP
	 Yof3uFUX+GmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67117C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170857669641.14779.6413248007584124353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc3aa44cc4d2d3394fda06c99283d05f66bc530e0484f1c7aa6d263f265627c
Date: Thu, 22 Feb 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708576696
