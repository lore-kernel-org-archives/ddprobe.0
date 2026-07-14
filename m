Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324282D0C8F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784012314; cv=none; b=fFK0FiPmLlbzvsnZpU3dPIdf2xZ3uZwydPc/OMiyBlDhVEVXOxtkZuhLENUUqISGjQN5Aiwt/zU6Mm1VlpNcjhy1EKHO3dzy3L/1su/xZqQki03NQm5sKfR/IwRKIEiP2PjmSOyMCibs6jyfQiON3/9OY01Qm3MinZdL8phidTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784012314; c=relaxed/simple;
	bh=N9wLsNdpkIp5THD4kXGh/wQkbV9toSWx1QvFi1i17xU=;
	h=To:Subject:From:Message-Id:Date; b=b/2qP9c+rZKrrJ6eUtqxvQqiCX9MUN43T318UyZDU+pAc2bueOnAi3aaacm5OiZc0ToPz+OIy0y7effcGOSJDxplBK1ieNf9bS7PhjidY1fOhLfSzfrbSWTBFDwvK+mEALozUw3qlOzZj+WPyJccySxyrdyO0OBNSbAC3JOB8N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAqsWINB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAqsWINB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EE5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784012313;
	bh=N9wLsNdpkIp5THD4kXGh/wQkbV9toSWx1QvFi1i17xU=;
	h=To:Subject:From:Date:From;
	b=gAqsWINBHF3q49G7e0yK9cleK2SPdm4B9+8HAzVF6wdbGU1X49j2jBD9iuNfLLh+b
	 v72L+jKTHzln0B04yrkenwSoGuvWLpImOdfjlf08yZCUnvTnaFLGxGkiIXSA8QZQPU
	 e1dnqFoIwObd7d14wdha3pp2k4DcHSEon0rY36CfazDleQzLEb8BSdit22Vurl+WXP
	 MVW3QQg6k/vA/m5SDr7UpmG3HIyzFWuCvLgKOkO3QzulKg787bNJNHO4gi0Qs/MJsE
	 HxAv2LqJPhU1uaaNikesBVzblIHgNXEXN8em5a7XSjGCi47J6AGbiXG7elkV4l3GUL
	 Y4vA5tSEs96xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF178C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401231370.17477.1428900636172583112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69825d67e7466715c046fdf8b5ca8369c202766e5a398abba5b78d22e0100e52
Date: Tue, 14 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784012313
