Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EF8361DA9
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775367934; cv=none; b=qEa3nU3N1kVDK4iy7a0PzEWxtFDLdMp3E2CuqTUXRrrcSE6spn6VirOEuvzByuwO6e92QnfUNaZjpG48WN6tTX5OKeOMXO366o4N2MwFdCkfVWapMzpncO/5857OhLb8Yp6ebB86ZU+tpTke882o3K8UL2f7YEDIqTDtNTfE7AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775367934; c=relaxed/simple;
	bh=hQue5AwUfzflMSq0mjYfYle9fjFJUQbwQxmStDrCJaE=;
	h=To:Subject:From:Message-Id:Date; b=afPv+MNPOhnSSUpdb0SEVZ9TN+PDYGI5Iu5smvYqt/xwuhvlzSTWo9eAzdga4u+WS4Sxpbz8dmIGovjo5EFBbqrok51puBwjBsMPj714RCspuEnysVMQ7Hh3Ga+bYEzVJc0mvwzENnaFdyx1n8pAp60QNB05xGmguqnGiSjwESk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWoDuc3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWoDuc3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6903C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775367933;
	bh=hQue5AwUfzflMSq0mjYfYle9fjFJUQbwQxmStDrCJaE=;
	h=To:Subject:From:Date:From;
	b=SWoDuc3IKqO+MORcbdeMV/nA8Uu7Yr7/J5jDZ8OeQMFPJSIcgBgCN7MVJZz6Z4qP4
	 rMe1XRXKpyhv0Z20jc8P/XYGdJveohTMzPGyZqj4KqvZoB8MFh6MOjv2YekuQiGVw6
	 FdVZ1G4hO8iX/Ubk7x6qsXaCca/ID8nw49B6l5qQ23o5usBZFY+/FWx6sfGnMHiBoc
	 hQtoW+iGBlA+TcdPP2tj02vIDBmT6tHuF3jUMAAAsCDVCz8MgdcfWLl3GXCBYQ2s5R
	 h1fgGX5VW7L5IrV9/po6ffA7P0c6MpYbom3WBp1jv1EZ41yPCZDL1PZhfvSh+Ww5cK
	 4xFUEe8GHWGdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFA5E64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536793373.18240.10140757159168158847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4bab7d39ee473946fb7633eb81fee8324a3a9c2f1c513457541ae8ec5023d0
Date: Sun, 05 Apr 2026 05:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775367933
