Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453ED632
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782218794; cv=none; b=Wk1klsLsbzKXIKFMgNUtF3lGF+afccgO+HJA7mn43rF113cnX6CNN+/VWmHXgzskwCypPERT1pMBv0BNMs/XDGxbs9hWh9+99GCQQYQCIkp9f/9tDnT8Tqx5pvcHSApIvC3/WR8ecoEOytXMta1bvH6Fqx/BVAFVjmrFR4S9JdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782218794; c=relaxed/simple;
	bh=OD5moERXLrW49afdWr+Hi2DADi66QletUukefPQm++s=;
	h=To:Subject:From:Message-Id:Date; b=us9ptUpQwVOxrd0SXIknTVC55PuRhPfCd0KO6UIR5cLvDzcTLJ6GXpmFRTcHMVDhN5QaiWP/dHw7pWov7WyIlVbpNjLdE7vvSh2giQdpaZ0QpyZXRndrijJEswI+rkMWQZLlx4TQ0T/ZZB55kFaZRl++SejGxLt6TDqGaGORkYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7h7FGSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7h7FGSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3904C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782218793;
	bh=OD5moERXLrW49afdWr+Hi2DADi66QletUukefPQm++s=;
	h=To:Subject:From:Date:From;
	b=i7h7FGSmp+y5Bb+4pFxDEJh4uhaFee9FeO1Cm6Q+7OhqciTQ+GiSzYo6hrKqiNyvf
	 0PPHQep9R20Bee9GjTwfR7zSIBa1sw31uZ3rNRync4Rp6QlUjL9jY321JzxdeTEKJi
	 K5ZQjObRrfZUw5w2V7DIsMJAbqbTAbfAWX7P5rhZy0kt5yS8/Rz4/R/2Cv0028x9Vt
	 fqSwH1MLSrDyWUf1dFtONZEdyJCdHCn1hWtV+sK+zSAzuOKU8jV8v/sUfM7eCmFMSI
	 ++c+JUxX5I2lsQ7NaElYVjdENWy4sDlTURyEvG+lhjGgLMYB4baHE/ywd1lf4HXfGw
	 VZU3aZUrkW7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEECCD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221879369.9238.15547825402233258674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c92f2a62c6839dc5a7f0e3110b852f65c0d16078044f5ae027790e3864c4a5a
Date: Tue, 23 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782218793
