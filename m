Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FAD24D7D20
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790772034; cv=none; b=VbLz8CkDnTrHWRmB7VwD5z+UzqwyCGsIUdw6ST8gO4fv690IOQtXW9lYztaumth20dlu5JG09p7PHKLWCxQj5dwJ7qOWD0ZHFAznsEYr80+AphzKYyudbxp8h/ON30rTPzKbnz7K+PaWM4oJoXtpeXwBLW4P5giaG9EW4NmCCEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790772034; c=relaxed/simple;
	bh=yvhJB6lF4GBEEnfkqU/juQ4w9duwgEfWsbr1UXLywuY=;
	h=To:Subject:From:Message-Id:Date; b=VYwDyu0EoAf3ofKM4VH4AE+TbhzrFkI6+qe4Fu4tYA3uQ6Pr3NYIi801Gva5vVTBo+TyxdBYkZSk8sCxo/DSYo47JmJ3R0SyHq8YyVRujjIAlUzMCPvM8UzsATohKKWaeK5t9PDZ8GcG0VF4dvm2siC0XQpNHh5l7rMb1roIpos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn0wfsCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn0wfsCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4CFC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790772033;
	bh=yvhJB6lF4GBEEnfkqU/juQ4w9duwgEfWsbr1UXLywuY=;
	h=To:Subject:From:Date:From;
	b=Bn0wfsCrawAp5xYrTZH+LEpek9RR1oSbHOmg121q0xQYpemJnGxHj/roveR0S3jOm
	 HAafm6g6uawSk7WOOvncScBy5YQk97pB4aQNbCYEe+Onf5NVfo/U0/xPWNdHueHupL
	 wQT3VMNQyuKvnUHvCOWuzBC9G5p5MOftFzt7chUnEF904mGMe6eFoRurisgrI6wT1z
	 +aMY/ijkwGI0wzXEsuqtpgOz9UO89N1CbXFm1dTTql2deH9A16AIGiMR2MNFCpkYh3
	 r7114PmNvBcApjgP8N40+SLf4A19GHDmMtJuSLYbFn+TMyEQbvxJXDXAOt8nSBsDIm
	 9s83vRhylnauw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB2CCA5FAC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077203368.13531.15658630592542541652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b7c2d5d4c311ff965349323527b74c7ca6f2a3263fc77aff84df73085fd99d
Date: Wed, 30 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790772033
