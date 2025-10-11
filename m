Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290262BAF9
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760206194; cv=none; b=tZvadBPo5K7eMEj4T7z9VSNK90y4PvgB34z9nxtKl38TZrc77N6Eoj1baTiDe6YNoQiYf/9JK4umFhqSApsT/SWY2eMMAyVNzXp8tDF2+QvAP70fpj33ZeU7o52A6m7hbge7Fa7S0FnxFmwAvKqJU0o+w/tIOLrfXOm2GhlkOoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760206194; c=relaxed/simple;
	bh=uSAsI6E1HDYFgoL4BtmkVNEnRUkKg0JaqfcocaPZtyA=;
	h=To:Subject:From:Message-Id:Date; b=aiw7liW+HX83aNSXbg0jqXzKCLFLDSg08x8V8VNiQOlJDaOO1aAWXhNWU3JNZYaaEJRgTrmW0+Gj0o4KgJpw+BwAUICnJw8zv7XoZIubR7HC4+BopqDvyGINpdQ+UMHp52W+s9JmBh8GU3jm29CX6svkrLFTGt16/IIjeyswkrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWNdhGKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWNdhGKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC6C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760206193;
	bh=uSAsI6E1HDYFgoL4BtmkVNEnRUkKg0JaqfcocaPZtyA=;
	h=To:Subject:From:Date:From;
	b=QWNdhGKwIHYodi68B1OFajxmANVSYhd9xHGdohP5i+kKeQV3LOgtJScgJIHwWlYie
	 h40c1WN5dHNmT3wm2DhnRQSAnBDLwSzpEeDCc/KVxrYLZh91A90aCt1WxT4F4pUrwl
	 A0R0DTqVrkZ5b3pMOaxkuwh/EvmO8Xu91WrQtnYJwweh6fufJfQnLaLJClWCEOWa3q
	 I15+36WvXXbTHkvRByr0DbvVpvZgVVRtRKyWtLHsey6b3Gj3z2I8I2Db6sR/sZkOep
	 e5MyDLTeOKmafo7xo7sHl/dn/q1AJvD7P52RlDMJNLwcV5A1ExkTf82fsPu7gKANdb
	 XMRM7yndAsJWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFADCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020619358.7675.14903007605573706456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a33e064637a0cc25554eebf270459fc51bb36126448bae8c164d9230416d2f
Date: Sat, 11 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760206193
