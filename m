Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1646E330D23
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777420654; cv=none; b=RgoQl3tURI9AC6XY6lokgN8UUnLiz7ywf8BKwJ7604AvYSo+xWY7nWvZoSnFOmwX2SP6j+78qZeSel4pT425S39gyzWVvVKl9Nh7ajRn3bidGe3zb2FV7xl1XpmerPWAxmt5tyAdB9XEo3V3dZuJvg4+pjafplE7qQPgGNIqVYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777420654; c=relaxed/simple;
	bh=5KP3x4N7MqXUDKmzi+R9oNQ/DsO6vZk4m20i1tb56Xc=;
	h=To:Subject:From:Message-Id:Date; b=Z22/KkcIGMzWe4/gzFZ1sivpwKW68ZVmgLbmqdQdMA+EmKwfT+TsLvZKkZBbXQwEwwcAoTyFotU0e6ALBl434Yc+GxzfONnO3ZUgAH6l4CcW7ntVRDrLRJ+wAFC++waIIFB4dUHVKTJl0x2FTxLA2ClwNxf+ZEoKw/Tn2TPudtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oK7f0sbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oK7f0sbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74ABC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777420653;
	bh=5KP3x4N7MqXUDKmzi+R9oNQ/DsO6vZk4m20i1tb56Xc=;
	h=To:Subject:From:Date:From;
	b=oK7f0sbDWPivt9+aFO1TZxchnmcQtLUt9O0nXm4ms2o00SrRkgBSda4J59cP/+hga
	 8w+anikCfIQUkUgUmaMVCANSKtl3ygQxJ5g4kWdgIvUvupKp9E1RK92xvRo42jPABb
	 NP1w2PyHsAK5KYOgTK+dbOwfshV7H4bT+y4s4ik2Iud9cRq7U1gfGTkAXwDFQyZMU0
	 zmPCT2vjXNc6n0NJKhXV74ZdT66GxC7DUDljmlVdDosYCYu40fgPAjcOIXSs8s75nR
	 L6HAbHETWrwHAEKvLZOR525m4tltro4TTTI+NTXZkRfCW4LgEy9sOQEo32kcnQQa8C
	 iBM0YqE99eV1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CF6FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742065368.27115.10236221054525288717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a46607b2b6f709198c2b11e3c16371e3061307c276530cd7a57e43d5c5ed9ff
Date: Tue, 28 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777420653
