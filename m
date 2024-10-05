Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206F019BBC
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728107754; cv=none; b=jjwPYYnLVvCSx9zR7FaG15iDERxW35LFaQ2eJqCy0pkyaYESenJ1SIL8XX9FiDiyDJWwl6QxDwX98aaVSxDQgheVmIh2tIWLUe+X5AUKQQjQQoATIbN0AOnqgYHYPjx9Gh0aPHKSTk/CMOFgcZiZ+NkmELtR1Ct1tBPMc0Sz15A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728107754; c=relaxed/simple;
	bh=QjwhQh4g2ppi/ZCYMzBrWh5WfmfzH44+v/aexeh96lk=;
	h=To:Subject:From:Message-Id:Date; b=HeqAbbSnT1RJKhzest0W5B/1qTfSt25IHJPFMqqsivLsS/og80mlXNMPzZO1dOaa4qke/piYA3xvZhKSCM9CdFGmD11e7TuVPiJ0pE/iEZvHRghOZTdgLToS7DFaWc4PDbtxFMl+dcY+11yFXpeezGqLjUbX/J1+JUoAF1bHLDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blC4Z+rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blC4Z+rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A662AC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728107753;
	bh=QjwhQh4g2ppi/ZCYMzBrWh5WfmfzH44+v/aexeh96lk=;
	h=To:Subject:From:Date:From;
	b=blC4Z+rxRJ7RJh1UHyvWwyERrXHU8UMXsCSK0xuEiJXvrIJF7GL5nz/MvP540emXl
	 2H5svN6gyhyVOgeQCztNaLizQfoSnRSmgjvMsL5r49qu5VOQef7vgHFTfhN/2cbJ2V
	 7B3vjEMwQhm+Phzz7eXWFAJsyal/3FplgiAl/Ih//gPpq8MorI0BkbsqqsUDnPK6Ni
	 ygFmQEPXK74KGcQIeHW4Brg5zqJ0Fz7sPDiH+2QRs2yV3DC9uWrz07r9CCNqHfjDxi
	 3JiuT1rLERAPWfKGH3pygtsBYqa2hgdMyVoWAOyGLNBPfJrqcJMUKVW0KNZ7RV6byU
	 QUQolfTpkW06g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966B9CF8851
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810775360.4323.2433413286697885096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc545728780d0d221ce723eea89a956a59a7f3a266d7cbbd24ec70159241e8e
Date: Sat, 05 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728107753
