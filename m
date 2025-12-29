Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1654122A1D4
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766988234; cv=none; b=rZ9bjFG7c1ziC8HqkCyu+GzrB7D1EUElbXVD6sr8Bu/kxIwUdn337ZOS3afddyIh4XJObwixa8+HSnkIuUUQSAK8IS/ZuLhZo+0Q1q+6PGkwJ8HrkbEaNyx8N0lLAMgYqozHDWMYaELY3PeKPE+ETlGZq2ibllZQhIm16Evto9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766988234; c=relaxed/simple;
	bh=xnw/99xMrbu1A2RrRFtBj68i3s0YMvwLOuOqpN8vbIc=;
	h=To:Subject:From:Message-Id:Date; b=pbIVKXUg2zaGBv0AH6davKny2DjAswH2IuxGIO88JyR6T/dqN9ZkimozIt3kjJdwZa6CjVpBIwt8+DN/tKJ3JKUyluRXkUf19bfliW5guFrXaMk2T28KzsRvjmhWGh2CfWsSFXVJ7jVuUi+HLPsyBjLME58YyZcYxK7iGPcFm8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogG2H+ul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogG2H+ul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7829C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766988233;
	bh=xnw/99xMrbu1A2RrRFtBj68i3s0YMvwLOuOqpN8vbIc=;
	h=To:Subject:From:Date:From;
	b=ogG2H+ul/1eMGFAwuXhWR9noOrWGK7sPS59/IXGDts4//1KhBQMtZDShKbqh5vxi9
	 ewKRJyKdp/hBBxkxyc9Qv7ieH18p92VBQcXXAAmApFPV+LzPMVJbIBqhW9Lf1UgUK+
	 M5T/2bxTOolH0HWGlEQI2jS3+wqOsulSuv4kp3zYfN5+aGy2T3dVpM6O9LeiAiEKW2
	 nrdwifA8WLN1fuDEkROs1TJyoF7XmBkoIpOStlvKmwxguLGrbqY4AVGVcuPRc6+0X3
	 7s5pOf6suR7PdKwA1bgh14lqQ9yJXxBaPt9gFfa2Chm/C4IVhfb/04gnthxluv1F4g
	 hxfLnhmggMD0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94652D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698823359.24534.14583815550531558481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104e86286eb14ab4f27069957547c398ebe6948cb50702439d9b9e4d8a2aa73c
Date: Mon, 29 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766988233
