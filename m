Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142824071FC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781705194; cv=none; b=alZNkCRQWWEJl0HyxXHpH0sHnNj5xL4Stlp9dml0btaXdWSmxm+UZls34+W0zYCcaYohL0rNuvP0kRuV8b5q8AEn61PXb8VjEU+EKL/z1l0tOihgmTyEtQh0u6LuIR+9P8Zp40GtrIEooseNDdyPxy5yaciphAMds/oxmUI9CW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781705194; c=relaxed/simple;
	bh=stQd3JDZgCfFt0YQXJo1ntnbZdmgQfGH//al83NjurM=;
	h=To:Subject:From:Message-Id:Date; b=qykivF+CE4OHy2KESINb0f3Ag7iandJOejn25IcQkF2r0I3VCr1NmPsPq9VS1mDOg7oBkcMAbrLGmBTPEPVkFoqddbwPxb+rnEudQ8IKXrFgfkk2pAXbM+E3f3r5A5pQ5t1EooxWA6gt8s4wPF9Z+r0zkQi0Tc74lfD1yqaF0ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvSpFhEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvSpFhEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA516C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781705193;
	bh=stQd3JDZgCfFt0YQXJo1ntnbZdmgQfGH//al83NjurM=;
	h=To:Subject:From:Date:From;
	b=HvSpFhEQ4L83odLS3OM1nmDT7htMa3DXxE81550J/NyseHk4rcFcDWFNcl74F0ehO
	 brhYjFMMBNkgAYrXIz7WyUSzsf8ZaQUc1HZtLEDELsHCp9ZR1f+nkMDkPDLXw2UP6e
	 ndVyL3bJEFwvZDWkKabJnb3+87h31pRJ+QwYnhwUhCzFv/QU0QJc3ChP4rLfelCMva
	 cOXtzOHXEgKY9KZ7GI83a+bveDAv39r1TJ4zOmCNoSIhlPFnds+gxkqIe9gHIeGorp
	 jJK3Mvx95tBvTp5RWy8PYds1amBL+ZDI0n7Pt21qjzrzjLuAhsvFckixllTP4jGQjG
	 po6FGiLTyYV2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2E6CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170519369.29984.8685005575067858834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b2fbdd1778e20d75ed0a97ba61ae7e13e35e14ad4665c8fd90c99669bcabf0
Date: Wed, 17 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781705193
