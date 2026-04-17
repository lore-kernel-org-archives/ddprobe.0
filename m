Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFB039BFF8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776446254; cv=none; b=mnQF0p8kGhudk0cVHS3dVwNTNdqXmF0qqMC67g1hrhgPaZAzHDIBcb3n4M5vYbzUVuqcrBIDIcR070327j0gtfNxcXclXQd2JPlnUAvPTxS73X75Rc6tjqf2IY+rH90CIFPVud+tKUSSeSCak347gnN8C02UhH8MkEoTE4INiy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776446254; c=relaxed/simple;
	bh=Bk/1mD3PmciorNV/q+VoSb+pyBS3uoutxWINVgLjPbs=;
	h=To:Subject:From:Message-Id:Date; b=SW4VPYOuob+n2C16YTlVFnmZRqFyJK2mhs8jnfc2Su9JwKdnzQdWHTHgr4eUPeMbWRl9dtcDHmVhfXaAgfsH9weExrr1kTwik5y7OVgABjW1moy0NahK2CwN7Y3i6/hEgc1RKIHISAQeTzbqca4ySfbN2HFLm1VCoW+QW9zRpSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5is8VF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5is8VF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1B7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776446253;
	bh=Bk/1mD3PmciorNV/q+VoSb+pyBS3uoutxWINVgLjPbs=;
	h=To:Subject:From:Date:From;
	b=c5is8VF0wRvEIVQ+F0n4OwyUm9ZdV8Y5Ssq5hEsoEDoWrH1Um8ofkUy7tBOowEm+c
	 QBFpSE17TD/jKZ9Kpu/bn+XzG+JgQmpnEeZlRpSLd2AXnt+rlbtrudZr8YB5WlKafN
	 wFqCaotWpw3Qc6rRE/R9RaPf+p+1aOwBjwSFWnu+NCj1oczyAMkEJfdw4vmkENnhva
	 vlJhTxlQrgWycZewVXQW8J4F6ey6oVnCwZrjHoeSsXACKNCo1xLUsjhsdRoQDrROh/
	 8Z7QGmnjsruwZXohU3+Unha4HG9j3LTR3011tR9pmXK1tgC/RV1AYz1kW4j1pcNRzM
	 RHBLbSCOpBYnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA00FF436BE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644625368.28007.7506767348717954267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073f627abcc11164a391e918ebcef55db2e720fa2a8e70e3f5c0a62c901b60f2
Date: Fri, 17 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776446253
