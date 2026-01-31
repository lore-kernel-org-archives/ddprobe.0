Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1489B32FA29
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769830434; cv=none; b=hoYeT6iSRlPXt6r47wZ9h6h64s6AZotSXFCLENmkUuzJO+oSBvzVt+8S7DRnLKrVx9wxNOP/WveiEC6Hp6R6A2hi19nLuh2k5r0jYYFnKGovnLLA0g99+dstb9L3tc23XNq0acAf42jJ0oS27AUBrtn7Sxz8mgjM8EhxNeNM2A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769830434; c=relaxed/simple;
	bh=cqIelQ+hUUcgrtA1DET8/fSiWgUsPwdxK5M4566k6U0=;
	h=To:Subject:From:Message-Id:Date; b=spWsDXb51xJCjtVvInxTPDugrLh+i3UzoVPBWbbqvR3I62SzLu35LWYrxLsPmhGxvytodFkYcjDcxMZOmATZuovlULc5CdsctVCLaT+PxzpFWEWOkHMRIski4JFVEGq9b0xdDsC2jGdOW5q3b5qU7J1zWZXbh8IHvY+m4rjgoAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHqwf/MZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHqwf/MZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4393C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769830433;
	bh=cqIelQ+hUUcgrtA1DET8/fSiWgUsPwdxK5M4566k6U0=;
	h=To:Subject:From:Date:From;
	b=OHqwf/MZ4+JDD0ZF1G4NQmqgl9+tkz7VmEQ3qY5Qm5eSBP//XjHKW8LJO+BARf399
	 foQrN0J8pSHZH/xKrAWlCuXjHwNWxn09aw9ZNFMCEo19rlKD7dY2FQmwWPWebZzcCM
	 rGGCy+mpfm3KAh/Rt4IxnYIMzdSaRx4iPS3mdPxgmw1ceq0vePv6cfaXGgN2RALt1q
	 sXOodKIlztX8C4UtPFRqJg6arOArGNX2m4PoWDBWEUh+R/a4t7i3oh/dKW8Im/vC6i
	 tNeGr8fJ6Nt+RRAh4ufpZGO8xnrMLy5GxJPSaMc77Cy00qSOkxHMTewHYwp+aj/dQL
	 V+j2lLlyHl2Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF6D73EB1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983043358.21093.1293165649521727208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c78c8d83ac2d2c987672f2ca626e941108f22a683e5dc980b6bce36275fb50
Date: Sat, 31 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769830433
