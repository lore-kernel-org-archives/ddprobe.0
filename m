Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB143C3BFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791519634; cv=none; b=QO1DrS9Tee7A9yns+dfLZEVzXHUHrd7OrnzNnuwebXM9LJRiNU05aDBvTnbOQ9rkvvURwsbZdbssPouB3K1GTkKEyG4cYU2oHzPY1C561AQcqqC1ZIhpC7s9iStExAMhvAzs4kaKiNVI0VH0QxJNhhE34ReZA1W6+evANagfWgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791519634; c=relaxed/simple;
	bh=ylwyDPt2qW/NPcfNleIad3MY+zmQqRzBvewF2CP5q60=;
	h=To:Subject:From:Message-Id:Date; b=mEoEZHtSWp0WiBajz3c80/snPG8I6R9P7ABjOseDr8nJsWFs+mz3FbQor6RMScvBDNM5UKgd4NzE27rAI5dlA83tTMbLkSfUwSDF6K+yN362oZ36UjzJlU82lRYtpJB5jRutPaxBeKzxrSi0q7DokuLBZceowVQtEgKquJ71HM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEU+2EgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEU+2EgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D0FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791519633;
	bh=ylwyDPt2qW/NPcfNleIad3MY+zmQqRzBvewF2CP5q60=;
	h=To:Subject:From:Date:From;
	b=nEU+2EgJwD9ALSms26VE6DHTNsg+6yOoR9uS3eGDLsK5pRyKPPyIipVJwmKUVmbPN
	 bwGz0fUDcs8qXM0l14CSs6RTD8lH89gjjdRfDD7QQqq9hP1vvmsG50qJBR0adHDh/2
	 U31rsOsYdmzAOAD0j7d78VS9LXODgtjuevPY4/Uv7SmDsh9b+nU2K0ZzCk4PJ3J9xP
	 ayF4CA+KIbzTC0Rb0SroCxYbcwK/n0IBHXMPszPBIF6WYZi20ifbr1mck5l8zI6Ef6
	 tCcE5IKhOOthgFtf8gWSpzzNuKJ5jZKUOAAbPLokwwPRD9HMclwm8lRslNKtmolYds
	 sIajpD7sIHA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE83FCA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151963369.2671.11698854527510844901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07306bd96d26ade45e513b8d5daa3b95e929098ec217d79834c71e8344e2322
Date: Fri, 09 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791519633
