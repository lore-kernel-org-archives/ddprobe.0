Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A441DD889
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773893094; cv=none; b=kVtNt9gCsW87LyFY6Q1dMcdbzks8oJxz2c4CEUNJ0Z5O0vxMZIm2eCKBtWPXRhN49eCnDc1VIX4r8Uy1UqWMce8dd/DgWn31xwf4BS79plO9f3ss1CBIeroKELSXkDpBu8Rta3BZ5XFrrvzKvlaysIOHLYko38EqGrADlxnkwAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773893094; c=relaxed/simple;
	bh=LhZkOqKlqNbXqlp/Fb68jgekaGFHDqfqaOjWQTnoDVE=;
	h=To:Subject:From:Message-Id:Date; b=eehpwOKb+vuWj3XAjm0KQknI5P57xB6jkt+ATU4C2k1Uvk3Np0OMS+if3Q0ltuyIiaxDKnCfxRw1Zuk3ve6/YtcLn0aC7fRKAp5c5ItnkVYPmstaVxTCMyZptfpkW/m1LRzx2pwsg5Fn83ZWuTeta454D6DvHGbLd7/2k0xNKqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pjd/l/56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pjd/l/56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B357BC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773893093;
	bh=LhZkOqKlqNbXqlp/Fb68jgekaGFHDqfqaOjWQTnoDVE=;
	h=To:Subject:From:Date:From;
	b=Pjd/l/56aqhDX05sAQOHiqZPu8Ou/8guUCWww9Q60ds3efWmErxepWsb1vtrpjUZu
	 y9aWNTQ1o1WOKJpK9VqeSLiD7ELjeV0AJs+a0nXHutnV7wWmvlrUsVQVOsbMpJpkX0
	 nXDUvO04cB5DRoIYNRkprDmT1GGqs3E7VuFnnR6bZV0rQQXUAQRehzmQFZrtYc2KZJ
	 btWyqJF7MlTtmRQmZIkOLtR9awBOD45kZPhqO+VWBq7cpJlUmYWvmpmqogRev9m0fU
	 T1gsioi4Jf689EQywVKYDahDQCSk3eX24vhcGLeIT3CdgA411+QxATvjDayI1OQSiE
	 dddrcDEwRK0vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03E01088E70
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389309363.15479.3108194212786095123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f316c0f3f64c12357844f89fceb0f738c0db4aa56a3224590a90c1c498f2d7af
Date: Thu, 19 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773893093
