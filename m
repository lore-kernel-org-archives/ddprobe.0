Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6174B367F4B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769163834; cv=none; b=UJHr1/0wdAncwdl3GJpN5vP37UTm0591iHWyFsXXP8fdCPn0Nm9hSENRLTsXjo8KRWM3bto7zPdKgi9Svv6BSYDSB5L+Hxbs8BybWZJXWNmIGDdcgvnZP6b6vrAwZPc6WglhmFe9wv2nuNuKWp40PiB55qwQd4mrkbuP4oRSYRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769163834; c=relaxed/simple;
	bh=ENggbrEETvGqwBD0vr3JB/YYFWmpFJneZ6eambTt7SA=;
	h=To:Subject:From:Message-Id:Date; b=SPPGguzDv6fVkb33lfwTyuJEnPgKjkyAO2drONUz6iEI9ro4oC+oN9dsHRyy5pyvuUN4eBv5XyyLncx/aeY6LxlFHOaqS4hbC55MwgpZQT94O+ALrbDR3LGkkHADsuCpKwqDrPTC0UWUE1vhWnjqJrblcE/zitC4VfW8HIgYR/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2UOxfON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2UOxfON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A784DC19423
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769163833;
	bh=ENggbrEETvGqwBD0vr3JB/YYFWmpFJneZ6eambTt7SA=;
	h=To:Subject:From:Date:From;
	b=l2UOxfONjTcAUzsv4ta1CHmFxVD+GMrkofJ+pkUtuxuEeIllXJUymAFVzTTN7qNBJ
	 pmsSVDr7zeEzjjqBsO+WtB/D1taegreWv2UsG50A4JlLyWuNF0YOP+lU8qak8zUpoS
	 7pCOrhL1eqaqIjlk6gVriJoDMSCFU2RzZF8Mn2EZW/0wHrbEgw3bOXGwtE6xca3GBQ
	 RY3uz6THd+QU+KZko3uZK5/9Oi1nchxPxybH9lgMLyFoow84THkfJGs3/JcW+Y/Hvq
	 VeFIRWGsfl5ZUPsezS0qGBWzlWVXJn5VyH2xF1Zs+PtDed5/RWW7ytbS1/Xwgyb3wY
	 k8CtaQLmk5MRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97008D7236A
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916383358.8121.8312313593817793769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be435cf53e845ebfad616c69c10ce5089a6535155fb47b310fb274932f603a2f
Date: Fri, 23 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769163833
