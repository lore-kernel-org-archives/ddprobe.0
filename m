Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062183128CC
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773257094; cv=none; b=NoCPsIPx8CwVyuV4W6AKY4L01qVBsiZ6HdCsRXA9SATttJlB/Tol+nHh9xWLbyU3fU5azGojOiSt8m9/atNRtnnXRz2XrE6haPrEylOzK32/Ca1rqJsuNWQMITz1HCXQlP11Fk2oommgnHK/IJvk4II/oOGf682FhjdUcr+RIAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773257094; c=relaxed/simple;
	bh=bT/OEhXU/U3AXsKLqTct/g3+Livc93rSWJhdj4C5DsU=;
	h=To:Subject:From:Message-Id:Date; b=qVj5Y6268xHTp6s5rltXdIHJ3bUi4HfacSqs+hA/Gf3JOLsumOXEVnGc5VNmMqyFTrQ6r665x1CznaOhYT8pDT8LpciP+6+M5rn6NURkT6uwKKDTd/9PpWvi40O10rBtFY618QhRnOM1fVRXVjoY33l738KP47Z4R8PhpSLpqM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbvAnfO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbvAnfO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49C2C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773257093;
	bh=bT/OEhXU/U3AXsKLqTct/g3+Livc93rSWJhdj4C5DsU=;
	h=To:Subject:From:Date:From;
	b=CbvAnfO8KsIY87tgUpy6vIAPDlzPv2yF6AxGtqbYw4SwWDfQ+eluDAqnT/nI4zaJ7
	 0n/YAAu5uh6RKKFWKeHgqe9fmVx9KU3CMga+6VSWMoP9+BtZ/W/Li/UF6fyGuf/Kt9
	 RSDeN6hJ1jAunDcRRG8JiiRtRusgWjN7fq7zfyjBBTR1y2MLtwSGVhRy4sJRTHmubq
	 MztQV2hS/tO/dDNj6BDhDcJ/xO5QpX+xL2WqMiaM1DRwHXlgFBl5iyUf9qI/gpP03w
	 zh21KdOP4izLH3xxGWiAhCb2UMjJ3YOvvuzd4IN4COAa31XH0GZOMzRbYY7twDAoE+
	 O3IPOdCbXgMlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BAC1125878
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325709359.17684.11088739926356361283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc76f0f4e823e7a560d43d6cb6c146412fd439ceedb44f076ecaecfc1e135c5
Date: Wed, 11 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773257093
