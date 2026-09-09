Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450AA577E4F
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788963034; cv=none; b=DkZoqzjcFbHpxsFjPA9lz9I3+IvpzTT4WHCWFR16SNRSNZbOCr6P4jXWtAKkQcbHa3lfJZYalM67qQgeqaZIx243PamGeqMUckej6Lz3w0AI0PJ2TIkNEzPWkd35qA9VyVT+vl/hT7viJ06Fql1PD3vAfnljYm/1WD/xjXDv/B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788963034; c=relaxed/simple;
	bh=5eW9O3OCn8kjkxEIyw+z7vtPAhE050d+9VE0jzEkcHE=;
	h=To:Subject:From:Message-Id:Date; b=tWHo2tvgBiOdTCtFQsLDOr2Ldrb9e74RlGT6Wx2cnfKPCm4wmxLJsCSf4bR8cmmDskBAd33U86BMhsg0L93zcydvo3zb/SnBRa3ZWCpIk7UI5uxJ1GQDTNeAhBl6ymyCNAK3KyFcL8tyqIClUi87KZZT3whe1DFjOdHDXRrNwKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uho000YB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uho000YB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E340FC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788963033;
	bh=5eW9O3OCn8kjkxEIyw+z7vtPAhE050d+9VE0jzEkcHE=;
	h=To:Subject:From:Date:From;
	b=Uho000YBcoc7nm3YJL5NUJGA9wca27lsNjVK9u03Qg1zFXoNYBackdwv0rruZd1PJ
	 GxAH93w59sGMh1d+ZdoWwCNgO+NJBqfestD4Me4xWQK2WlcK/zYnbiY8p07A6F7zvS
	 oPxqjJ1jc9dWRCXSec81zguQaNn0aihK6mvhSeMmL1KtuYEkNDsZ9qS94ngc1dVTnZ
	 SgurN4rmrrJJZRomp43MRfuixEI2J4e8n6BtSk2yDS+nUBAgcEB8KHCWe9m+Lk6ELH
	 Bu5oZoZmvihXICR1+i2pe5d6U5kEARuMbm0IGgNSkVxDw3wAtgyko/dUum9u6tDM/k
	 zjllVZV22uj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD447C79FBB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896303376.1793.581837079720985687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42946c5ac239e197ef9e5c6b2aca009200ab06eef2c9d0af93e3732290c94c5
Date: Wed, 09 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788963033
