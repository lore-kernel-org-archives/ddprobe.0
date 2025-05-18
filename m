Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92FA55
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747547395; cv=none; b=YgAcY1zCZLmna/O4IRlgzvgIC9E1xJbAAcCYzs3NR056i+ojLs8mZWAvNgRAfVt1b8UCGwiSV3dWh9MDZzURxrtHaX7kLzWDlGplywB13dl45ia4hOqDYPD2kuG0VcG/Tao3/9M5deCw8eScQjbUg5uHT70F1+HDHpT1gwcTuM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747547395; c=relaxed/simple;
	bh=w0uYWoyJiKm7LtbgDo0lhupGCL8DB6q+bvDgxmzZSnQ=;
	h=To:Subject:From:Message-Id:Date; b=in9HWZFAXDixofgyxVEg4jL2qc4cq4+fHO+qFSK9nUZ2U6jW75JSVKyEGqbG/8REbR8vFKyHCMpgSNmUhU94DPkl5013RRAWdwm6pUeN7XVrRBuR2JOc4avJ11zxJX0nIGB6Ng5LSEZx7ak8ibYngyzL+Dp68XktgxTQff8eGGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXgFVOpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXgFVOpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BEAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747547393;
	bh=w0uYWoyJiKm7LtbgDo0lhupGCL8DB6q+bvDgxmzZSnQ=;
	h=To:Subject:From:Date:From;
	b=XXgFVOpyX4xyHum37VDNrN4CheAV6Gyk7TxxgCcIRWJUXfx63aPVJW7LjL98rh4wg
	 yOlX8PljXPjlTNTU1uNJKNqEq4rWeNhAyrO4cdAr+GeFllBMFFkif31NRzrURpob8O
	 UI64B7hhqbdEdVTAINtKrS+qYHmgWpqHYxwxnx6q5Gp0VL3KyL4Vrj0ci7w0u54xbv
	 3B1A48lVKqCq1E1wH5PXSw6CdJEkOLbpPPaPvJCb0vqQtlEFAKyPSpHrMJtJeqFwSF
	 XNolMsntmTm7HbXbs/BnQYlvogAF4LHRUtzcv1sF9BBUIVKOHtBko/BTKzGoPNQ0wA
	 Xx0Pnx0QHMKoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB79C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754739357.22456.5247442429134080525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd5f9f235b7aba98388b9627deb3907a7b5b5e8b9f80e864a8a929b31dcb9ed
Date: Sun, 18 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747547393
