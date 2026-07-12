Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4401F370D5A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783856314; cv=none; b=gA803LvmOKtSRAg+V+Es92Dsh6AhrUC0glsMcmMjA7izHC+x/fXV0/Gj0yRqshUk6b0WUrzmqnoGRmaVFAGDC8boUfI1bgicbbbtfbgMU2tbfEwJqDkH8rxAYxdgGinaRDL5Rl+7/rwb1Gym1D+8D2en/GdWgznO7DvPWdlHY1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783856314; c=relaxed/simple;
	bh=szSK0ebhj/w8zPuC9/BH2/oomA849m6DAYI5MyRwavM=;
	h=To:Subject:From:Message-Id:Date; b=NO0jwON6G6NrSGDu8Mj/Ht+4sDne6WIXGk2KrScKVYPayT+lQ7uO4rBGSsedrH2c6XUasVIVgC8ZOoAKViJysu/yqLb0bV94s9Qlzm4bEeAtKJsIYWW7wZWuxupVfAkax6uf0wHluwli0wYQLKtb/7za8PwrFhb0n4TF26rXhcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cp+cWt8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cp+cWt8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F30C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783856313;
	bh=szSK0ebhj/w8zPuC9/BH2/oomA849m6DAYI5MyRwavM=;
	h=To:Subject:From:Date:From;
	b=cp+cWt8U7MdILRBowsGWptDrx7vRriKBfTH6ijX6i+tEmAGiG+ZQzhOi6OkeQ3lA+
	 UezZpXRa7HaglGwMHTZtCytIq4CHg4b4kUnkAflJBMZ8V8UI2hDAuyFeDKalSJk5bD
	 BIPbtzVEhfksmIikBYBnTnrXcDF9XoDqyOkgqd9zLBMQCmR8dctOJsWz7bh5s81RHK
	 VTDVgM2wxVpaXDantz9ehjYTz9FccNFeYbF6Re4fYKCEx8Zw1uJSwgB+pHhPETVk87
	 vz1ud1mM55DABcUcommsT09scf0Cr4V0zJDUwSmswyr2stPMitoYEOtyenkt7IBsEh
	 qen2No9Uqwu3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC28C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385631368.19819.505278554503535239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e7fe3348fa8868ea42e178ab8d765c4540327841e187e970ffdbad39ba9012
Date: Sun, 12 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783856313
