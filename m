Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0605A2BE7A1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764008514; cv=none; b=MN4zT501ev0NRb/RoehmSIW0diaAJMBtGRN03WieIA1m4MR/KgUpxeoEI6mBhpsx39M+JliOGqgGlfGAwwn3scceFKO09f4MdMqc4H4x2aGA3dtU9LJSu2/D3BLdI6c/LM/Aq2QgIMc47CfmMooA/mYPhQGbMcsAAGJRhflBkOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764008514; c=relaxed/simple;
	bh=aXqGM4Iq5sZDtabhWjHUXviK59a16BqX3E5onA+8pQ8=;
	h=To:Subject:From:Message-Id:Date; b=GR13B50psHuBFhw5wwa8dcdu5Qc9cSvDwhIGz3iSFj7jbkWdUP9+yv0bAypz4AwSwSIcEAqjOHVhiZx+rUYlUb1uUPakU+XW5qM8YO6Pe5sizR72CfuuvJrs3iwuNnUkGPGOChYb8o2PRlVpxSzVb4Vfym+hCc7VY6+N7wK4Rsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5KX95W6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5KX95W6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96A5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764008513;
	bh=aXqGM4Iq5sZDtabhWjHUXviK59a16BqX3E5onA+8pQ8=;
	h=To:Subject:From:Date:From;
	b=V5KX95W6/dfSPIgzDQ5Yq3gHPBBhkZJACIxgDJmIwZaeVhuJVPplaEh+ehpJ8kXf/
	 s97BeDWR0I/zN0Rbrdt58lbYZCUI/fkoqLBf9DpeUfcWPq3m8S0sAiz5F6hVRQeeMl
	 lOOgf5y97E4UZixzK0Wvy3pm582rRxa+mS0JGX2eznUDJBAtPNw13QOZHbwvDKLZRA
	 B24qTLLUNGtoWf+28pmUtmQM+qVIaE0dJko5Kfyb+t8NzYn1HQaea9s4hPukidSIr+
	 RDHrqTTi3GWiVODKoxOQAYNDDtGWdsUrYu3pm4h5KOnBaRDJXpLqFW7wUe/oQRU/DS
	 EwGLQ8dDEgyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C4CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400851359.27154.16764626648981760648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e178c818ad2f03439cfb40d1206e091cc20be018e4d9dc473f8b3c9f0add7c30
Date: Mon, 24 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764008513
