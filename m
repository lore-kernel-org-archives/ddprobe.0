Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7CE24A078
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781417194; cv=none; b=CARuJSaJYuj+sTOAh9aooXZcwkVUMy1mvYD86d2gvNJunQiyuDxYCiWAgSzoczPotp6mfU66Oj+xEVCGFGW8sN4QF4+UWDbfFB4pA+aSw5eJNJj9tK0curV4+RXDMTL6JH/PzmIDvIdwRQ0jowrPNA+fdMHmhw2O+5BVGdgD6yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781417194; c=relaxed/simple;
	bh=l26oCmWyTaCxyuWssCwqYga5BOsWYVjmy5E+5SxZ2Y8=;
	h=To:Subject:From:Message-Id:Date; b=gJrVedpEvINUGwOs/SrAPm/AyS4zvmlPNKLcllhlMbR1ASAKVq+Hb39x1QiM4u7/3elpuaOuUEOMGYnh69tmY+G9hw7HeTP3ebeKrwIGH4FaAEzKdR6/WukfRefzflHjCtbJ1rjq5Sg5L+5HPNP98ZixR+CxuW7+Sch8oIgIbp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzaSy67l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzaSy67l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB219C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781417193;
	bh=l26oCmWyTaCxyuWssCwqYga5BOsWYVjmy5E+5SxZ2Y8=;
	h=To:Subject:From:Date:From;
	b=MzaSy67lLrcbSVHspCuGoUUCrc1OqXMMMQ5XA69vdaWeMGXcnUh6xcU1z6DBOMdyI
	 qHrQ3WVMM3CA0fhWme0TnztnfBPlGbOdBM2QZ91SMkvcz2mXYWSyBV8ZhrbT+sGrt7
	 52I00zHgp+s9nmkiB7ewhAwTMqMPaVo8K2FzvhCfVPktfs/4TU6lH2fMB+nL41/CIx
	 xvov0SCeiI+XfPPS2bUJsZMrM5okz2AU1J4umbx8BWlbplDFOhENTRpD4gYq6s9dT4
	 vtESNi3YKj9UnGJ9EBT3t3iB2TGdZqgeFjMJDwP7vGQEorhFUwjvygtaSR1YT7eeUp
	 IvOSTQ9X/gEeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4F4CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141719368.13649.1945764581405488558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd5e51481c0d792ace788cb8f9da3e62b0948480e4b76ea2077350b82f8b103
Date: Sun, 14 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781417193
