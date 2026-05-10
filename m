Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D2F1DF248
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778377175; cv=none; b=R0nkjuzrPyqSW+3qaddUJWdt9CkOpfK6gv5VHdiE0phIxYSIuFNZ7Xy18fMAk17YhKA3wk4gEwtc7JGZa3ikh2FWsTO7+GaDMi65EGwc8fZUjaKpTt3Zo/3MboWgMWULzX10f22QrpSkR8/rdwfkMxLN/G82GBRlqQpM3evCdd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778377175; c=relaxed/simple;
	bh=aakGvLfIJ+dG3WOw6NPfKVAlI1f0pL++h9NJH+/P1AQ=;
	h=To:Subject:From:Message-Id:Date; b=UB0/gnT8dM0Rue1l6fXFGXFjFrPzuX9qUyZuveE3yZwVsSe2sb36utNkWtCIFb3wzMLZyP6QgNfOYH9RNNBci3DO6pQUganpMBtgB5xhDbAkB1rpnagl4xLNiI48b6/FwLUHj29gmGLRy3lN0rbFHXfipqQEAMGABzDVOV5EF50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdLKClC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdLKClC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18FA9C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778377175;
	bh=aakGvLfIJ+dG3WOw6NPfKVAlI1f0pL++h9NJH+/P1AQ=;
	h=To:Subject:From:Date:From;
	b=cdLKClC3hgH/TGJ++kL/Iiceb4+2RE+9lPqOLLgenpoFwh00tVgnXM6AXLCNvTMaw
	 R4yo9RAw+xhF1L4iBKhVvevMVi/57okIjnSWBmFGUo9OQsG1IFBQU9JSjgXmBDfH+e
	 pqbBh8OCDGxqc7H7GifRkvDJ93xClpaW4IAptCICPzLnzHvMBIvJoVR0VwC6puK0zQ
	 OvvaD2oWdNX5PqT+VFfVKchRnwNDiig2XHi5q3hYtbJ8a8C0OnQe9Gbx4DVpXZnkiF
	 vMsy4TCvGKDJisellRIeX3wksv5WJbBFSxVX79BDpPVbLh6rHNjQ4OTYzr1NpMlqiP
	 f0b96feP4iRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82EECCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:39:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837717445.12682.7709850280802482601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f37eccc318e9a0658b74c362b4b5ccd27e52950567c58cfd81e40306cde2393
Date: Sun, 10 May 2026 01:39:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778377174
