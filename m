Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2379139CCF3
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784327914; cv=none; b=d1gURpJdK3NPAfHAj1kGqZcQA/479lZoFf43pf6xOS91anhZVGAlVyiarbseh5NUMArBT2iakNmtsVvKUW0cIGQfURls48IsyFyQdoKx8Si47PoogLhuSHfqzEztUo/gb/svv+FIGzjml+kqqT851rjzeWBi84MbYMjxfQL0Jqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784327914; c=relaxed/simple;
	bh=/O4o/IF4JA6qIBN3TymTDRoafxbmLKm4iEsxTnXT5Hg=;
	h=To:Subject:From:Message-Id:Date; b=SWEqLsOioyh6Pz2vaC2MWoWeRhadqUKfqFAMx9od3OeVQJiGFk1XYqsXc8kkTMr7NywklUa0M9UcdY10i18QLc6Q4RobAyyag5rT4O5wflBAuFNaFIBfmYR4qTK+IORC60jR5e17pg9jEyHfUcQsxXA930ujj4AucJwczdH8Ia4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJUXZOZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJUXZOZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF632C4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784327913;
	bh=/O4o/IF4JA6qIBN3TymTDRoafxbmLKm4iEsxTnXT5Hg=;
	h=To:Subject:From:Date:From;
	b=RJUXZOZle/HcZb/CONsOlcT+itmzyW8IvnAdPMOQTPgRXCD9fpL42xpdADEiE6BjM
	 bEQ5sQ5Lp53xh4wK4ThUg0z9yo6NnSpqxRGEnj2oNJYAaLa0P0INNbb1UvCWP9tzPu
	 Tlq/iuNszQnq2uvaMIRZB0lca9Xgj9CcE02KMDmugcbPWQk4QEqXYmli4Rfg0hlxfV
	 av+MJ8P7UFU6GQ7fEg2rjkopdXNIUmctMAguxFp3YiVphbU/lImpD8P12fsRXk47vC
	 j1q82GZvsFSheUaZT02aCNnt+oZwarrcvp6lJwwsp+c376NWBCboA4KqNo2LbPC+hn
	 kAF0IusgaonBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA618C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432791368.10200.17616043265997500264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b5b683d11d4c7706982ee26613177e5e1e2ac4351576b6cc3aeedbb3c33026
Date: Fri, 17 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784327913
