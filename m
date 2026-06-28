Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB2E2110E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782607714; cv=none; b=U5PV08OapuS0uZBaPlK3xUViFbnm6oucXZiAn4ElGCFdTuWMWIiBnAdC3mIE4TXGnGCH3L0CGgkWPIMErCmD7uZ2CQz0AXewqdGrcl2jCo1EEr5Q7PESMt11iaOwHY8sS77hamBeKFScVGIdcTJmuLty9sVsX69vUT9p2uXbHJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782607714; c=relaxed/simple;
	bh=gg3rI5HGKf6aS11jtAGwersNNoOTuT7r/CGyaEQe44M=;
	h=To:Subject:From:Message-Id:Date; b=nAwP2tjppAPlpaN1/lTZEzd/cYsDXE8IJ2kkKYH4wL9/QDX3ylZr9TM8z0SDFDdEtCvEZDtBxZWliKrMXA9AFlXSl9/R6nZzotRHlBObLI/nB7hj5Hmk2Y32PJDknqIz7UNnNsesBI6qlcRl10qG0BbEFg19CkNf74FhpyIqIcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6GkUGON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6GkUGON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D320BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782607713;
	bh=gg3rI5HGKf6aS11jtAGwersNNoOTuT7r/CGyaEQe44M=;
	h=To:Subject:From:Date:From;
	b=B6GkUGONX5qEzVFwB4qXD3dqvfvzL8kGr6tsxiVVinkIH0fmDds4b0s/yacNs5cS/
	 3RRUQ5DQMkZTtf4JGRL9/KMYnfHPfkMpSnBCEDIVYKaLSu5mcJTLhlhNeOT4MwXkO3
	 BqOBCWCa/+mZ7MfeVNu2+o+yhuErRuDlyJ0L2n+dNRJyTMNLTzZqVAE8ix+uBclxIR
	 UjOQhLe9kdpxAPaxCvm+I54PiyGyEN8Jika4E4P+218st4L0cLAuqJeCKsVOws9L3n
	 mnzb3VR0RT+hD9m/MZ8LmekeSv/NYY6fhO1p3L+ymQfKYjHZa1BpeasSUnpxaCH7Ax
	 RT+nvaVrpC1jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE72EC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260771369.32172.2325976981348337419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d32e1ece20253cf21391eb8704744860465bc460bee2c58d1fd04dd3111daa0
Date: Sun, 28 Jun 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782607713
