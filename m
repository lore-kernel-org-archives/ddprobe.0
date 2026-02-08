Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF0B243969
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770578034; cv=none; b=VustSB9c+W0LeK4cCmRk9cDCIBQgWs68CC1XJdwRiBKV3GX5vc1kfCOHAO9SuZQTHDoc0gJgNVbZ0hs9uRqHDWIDFVKL5OUjZzVgiwfj2pDV+fWguxfi4aJMNMrqMInX4F8AvbJZW0dxSge6AbmeejC8Rv34ewToMKF4hrBS9Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770578034; c=relaxed/simple;
	bh=q2QW3bgz6o2THREv7LLfBafP/GVKzE0ZVK5lViv8vqc=;
	h=To:Subject:From:Message-Id:Date; b=exuNcM5R8JdcGfVyuJbU7t4JAI7rbKIo0BhzxMC3tA1DFfFjaUBf13sq+TXLiam17BtE+hDuvpyRkJJoSa81wgUT7YYFrnRpvDn1RsKQtykeYOXWhC/PgNErrBjG4+tDs+fwNZuUJmweFkB3ekkOdIY4z+QGVBg+fyNCPmX94QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7j6GXzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7j6GXzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14C8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770578033;
	bh=q2QW3bgz6o2THREv7LLfBafP/GVKzE0ZVK5lViv8vqc=;
	h=To:Subject:From:Date:From;
	b=i7j6GXzSKpaN4z0pFoaAbCU+S9DsecA48rWl+UMq+Y0LuiTruAxUbPMpILG5xkjW8
	 tIvE05Gch2aYAIr6Y+tc6+89PyiGSVSntFcQGEr42Ce8HdMcH3cZbNM6kAOm6+fSkH
	 S/NTi9fzYC7uCcwMfegXYhCjd13SHtwGRXxdOtYt1zgPM2o+x17sLWcTHZGvMzJtoQ
	 fhwqHbyGxs+W2PaZ8wI0nIGVP0prn+l2L50uF4vNNG3ZivaeJznOWA/Ce4mqrhY9Pr
	 k54gyr8s1rsewY+LmMAz++gsC0d9Uut6XL/cIxllptS7r95GMOLN0YB4EDjCyIGBT+
	 pH+O5cd995mCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90478EF06E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057803358.22125.10660504823941539805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4914b4527a8353db66474990dbd4bea197e85315dd249b3faf87b1736393f512
Date: Sun, 08 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770578033
