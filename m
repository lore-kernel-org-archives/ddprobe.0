Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7113451BD
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779292834; cv=none; b=MynpFm/KfUHra7Jgm385tlkts/l3Zx69p754IzRYFfEkxP/yi+1Zf7urNlaQiOYgdSg8g+Ux0ogHXCDtQp6mM34MUqP/D/46KuEvDnDzekCOCLASSq+s43l1QXa7sz+ZUXJSXpEVeHaxMi4HrrayJwr97KcrIWEFVHRwftNdF7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779292834; c=relaxed/simple;
	bh=XHQdidbX09yZw/j4HlqMDvvJqXdMCxxAt7S66QAayqs=;
	h=To:Subject:From:Message-Id:Date; b=tEqiu2s9GhBuuL+IhobCtys4REHozrjnfPOQTVkNHOYu3HboTKbJ04XVQvVx+CbcEs3vTk+1/oV4tYcS1q8f2rMVBXW7FHOEWuue8S0HJ0+1tWH+8cdXpxwotvJW/J6unr1NfTeLca+1bR18DI7ll0y6PuT0RGZm16OHzNofPEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmuVhFXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmuVhFXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FFBC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779292833;
	bh=XHQdidbX09yZw/j4HlqMDvvJqXdMCxxAt7S66QAayqs=;
	h=To:Subject:From:Date:From;
	b=dmuVhFXC9/M0BrXKARHm7zPfofoFIIFKL7aOHJsb2R04OgfIenea/zu9Dj3BjvWiA
	 KaagJWUyaVbW4suczRpjd2Wzkwzb2BN4EUrSmP4sbjPkR0VQcOQocDxVJ6ozBnYo+z
	 c1wyF7KbTeI1LhxjFaPJRNHiG2dgGoaHBRIp/VC70N/DAuZQ4ouaMnw/CgVRB+PT1b
	 qnZjFEnaTyT14nTYuWy0DkCZq/AYoCZ6CE5dOyntpFPT6fG8unA2f95lQlOxCOQQU/
	 sE38MJfVVItksmpyryHIMrx3vpPrBNsxl7Yt1bHqVvahKwOCMUbyLQA65jySPsI2wR
	 EXSYYsRbi5fmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB70DCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929283369.1822.9875200482723627565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af8527bb1ae11ccd338fa2e92d41a4dfe709e412ff4a1953ebc8802b6458196
Date: Wed, 20 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779292833
