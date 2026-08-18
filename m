Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8B614ABE
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787017234; cv=none; b=hy9jAUKRBCRIRNfurT4y5qyDyRpwNxu8EXmXFkYTJDmqn/eVw2IGSXzIAdMkBLX9xA2hQzjfgqhIZ/sv3ki2yXPffCdz0qs4SE+PzH/cuPMKnOMsCgu4bPli3h9G0gj2KdB3JJptXjp1i04Qh0WuQ5cj8Zy+o6dZmAk5iKv+B/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787017234; c=relaxed/simple;
	bh=5niVbTwX/AQkIjNDlFfPVlamw7Z3vvOLpu41UTy5M5c=;
	h=To:Subject:From:Message-Id:Date; b=jn9n5D80fiq0WuFn0CX/cpEkyqs/qbO+BCmS4HieNV4/LtL0qkM++fxgQEGb5voHKUgNGNK91zzbAImLxiNNQImMoaFAAwA5XftV1/Wbi9Fs8pA0bIZi3+VMkBfd0dV1wf9DbbyEtFkp7KFhkne/89pIHZFlmehoBTgsUAiECbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m93CdCyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m93CdCyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49B5C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787017233;
	bh=5niVbTwX/AQkIjNDlFfPVlamw7Z3vvOLpu41UTy5M5c=;
	h=To:Subject:From:Date:From;
	b=m93CdCySGx24X17D4oaDF4Kwrc8XR09EEIl4BLhG/4ZTPGQBV40qdYaVAfW02vaA0
	 ihV0HusEvYHdB8XDDT0czATHdzCvFu2fcX9JNaFFEPwJoGlKwW1TJuimhtn0ExR4/q
	 d/j5xuzB5r6LxrOgjKlqILbc8h2yVuIHVsuxQZnHqmWIYOqAcKdQfaN9H68eE6Uw6k
	 r4tr2VR/vRemteuwRN0Kc82IJZKRCYmczluDnTTlok/YOQP9WD9qPiwV7dAIrRJe+Q
	 TPF8jQaRRNNuRqv2AURsvDIS8HSUvMEA5NkzHhbWdWJHV+1L+igFe2Y97r0+r+A4ji
	 sY+giY+qzR41g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD55CC5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701723370.5710.16095742673553751020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd9536edf68f75371d2c094423eda8a6def2c8c7427957778bce425ebfbad100
Date: Tue, 18 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787017233
