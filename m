Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D5E28DF1B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744715994; cv=none; b=rWvv52/7QMFbeUEZKtjoYe8Ttxz/j9MRj61gP7z+/qLBV3tuM0JYqB8hG+Xa4Ux7+yR8+C00VxqYkTpbs2EV2tj3xP7FLegk+NN5xa482iR2aT6vU/OcsL5oiToJybbyJvzXMWRb7xmW6WWRq5MIHX8cdmhE+O/L/ivjcxTFEs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744715994; c=relaxed/simple;
	bh=DWbuQ7PlMGm8Jd11rIjkin0JF1VFY9m6Xb4aeQazO6w=;
	h=To:Subject:From:Message-Id:Date; b=VgEsj72M3oe5c7ChcGTDYOpyAAmNa/pHbmYDGDODNDbLY9qtr4wiIQInGoM1PD8M9WP1Go8uPrTc7XunIT1aSh9hABToBC9O96LdgDcDjTivKpXYqUcziGr0aouTo0FHxLo+ByTI+hUxphxsSqjZJXRIVgSXQxGVYtdE6SFahr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fS6PkNwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fS6PkNwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E96C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744715993;
	bh=DWbuQ7PlMGm8Jd11rIjkin0JF1VFY9m6Xb4aeQazO6w=;
	h=To:Subject:From:Date:From;
	b=fS6PkNwpV0OppRyfBJoTkQumkBjAAZ2OTrCu9O0SNnmwbn0ZTzUpipXQpz1hUiJJG
	 ckwmMXIuohBv7M/84a8dLauu7/mFOdNV5k7IIk6j9xZkXTyLbFE37hVF6bvMtzggxl
	 HBGlKTrOKYayx8EcRBfDseEaL5+0DhdpgDg9zjFae7phRZaOyseeBXkwMDgh4TOTeU
	 qBGzELVGgWMJom/4xb0eATIPRjpOCFCEyyATleIudXXCjy8usqnFpuO57yhXxokdE3
	 x+zB1ZW3qUpdWycDciDr+XGgwzegM3pCZaUN5gJkFLuz2Nv6dZZomTPXq/uS8Qs02C
	 cJekiwZh4nodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6D7C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471599362.17400.7243302175090231454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7313364fa59fd1c02dc16ced87122c90171dae4a71196b3df7404d3029c9b7e
Date: Tue, 15 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744715993
