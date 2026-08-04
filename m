Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0DB2C2363
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785829834; cv=none; b=pGqK53XO3qMqUQ0iIGQ76pa03NZ7koiylsV6gYiYnoJbuKWODI3Q05Ohh5oB0P+InkkjLfjx88wDTJuWnNhFu2x0uDOSUddQcbbo0q1a+R90VtsIZKmkAaDOujRBlCOpMQjP1TNPtQGVWBQkjIeHemUfyc4LxAx3K/0SxP/JaPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785829834; c=relaxed/simple;
	bh=9n8M8IgTRXmBydrReNRpRkBrIrv2oxVofHCvJMYvDgs=;
	h=To:Subject:From:Message-Id:Date; b=VMjA7f/p0xw+M7IBXqXkxp7alrSr7Hm4oJPo1emkNUzyL0q75dWFx7cPNJlHcna+InAhF+nK9VwPEa50pQ3T5gwYr3+DMtubTgEbQPm+iACfi3FqIfw9BqAt97fZHMnC+ys35CdUROQ+NgwaLbbyQX+5eR++JSBpxmZXGWiTWV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFBIQrTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFBIQrTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4883C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785829833;
	bh=9n8M8IgTRXmBydrReNRpRkBrIrv2oxVofHCvJMYvDgs=;
	h=To:Subject:From:Date:From;
	b=kFBIQrTDNXFZ+EQ+G+2UWG5/EmX2s/JlSejKboxj5f+oltYJeGuJM8bzFscvREfkC
	 gAyVpcrId+HCzC6Iww3ES39OHZyQiv1JEgke7E+HF1BHnaOrm9bb+Z4CeSw96nK0K0
	 gzUmefLeKsJ9gTSgcE9noTOaWWlwvIKSPCyHUXhgQJopZ/cVLkuy9RyW4zYbwbOz7g
	 Msxln6rk0JN9kRXyyrlFIulXPGXRYsi2vem83BW/BcBkCo63/5O2mVDe0zrs7a/FWD
	 WZgd9sPbmwmhfOjXQZE6S5JdMFspNBRIpIMQOeVMn3rBDi6l1rQxCY0mj7pognaYiN
	 2OaCFEcpY4wFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5CCC55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582983370.26196.1584491747914917956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badb6e46d534bb0789232e056a5d2546eb658f64549707fe5ae1220e0e51bed0
Date: Tue, 04 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785829833
