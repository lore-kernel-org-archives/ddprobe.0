Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4483D1D516D
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739377734; cv=none; b=OJ8bpiEx1cG1kwn/6ndCHl84TwWoNX04JL7domc3Ib7aQthRF4q1QXx79rX3katRv6EZjhtC83SW1p3xNu2stguYo2BiywFEDScSV9oJ2IVRp9Y/DnS42lFzYRreLzVtji8cZpmm6xpJR5CpL6t1qBkTK7gwf5+lnNZMJtD1mmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739377734; c=relaxed/simple;
	bh=JEiQ6+hmf2i3+mAtKDoVcO0VJ6pZy1YDH9UW5KGlURw=;
	h=To:Subject:From:Message-Id:Date; b=E9efAxkxIyLiRTKPuuRP+yQhWrZXZy1C7PfwL32eTFK5eg+dIjqVNUsnOQrSDdINM4fIv0dS5jDYnYGoeTIC710FnBPBHpIjF8XPG9WmAuQzynlzqfiQ6dz183Q31/dlI0eqQfKfK7Qiblwshfjr4ffZWBTFTYXfIJQJQk56N1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPAJLBMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPAJLBMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3778C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739377733;
	bh=JEiQ6+hmf2i3+mAtKDoVcO0VJ6pZy1YDH9UW5KGlURw=;
	h=To:Subject:From:Date:From;
	b=IPAJLBMBoh296pPjxFdKyaB/yrsuFGwgS6E1ADO9f7+UU/LETzSgGkYW12B4JgtSI
	 ijUWswRAsBQDmOD8iYYW9+NuZFiw4OK/mTY9HsWcIiaCh7drQkMSM7mUsQOyiU0aST
	 X1ABUs6vmVH8YztUZjSmtgJBN8p4bLPKXBNPdgEUwIUhJ9Vg19kEHtBP9pT/hN3RDm
	 rZHjFT2th1SLNgvl89lyGs5/IWk74LLG+t871oBBIhgUErLbnK7BsNdB9IsOhOVnTV
	 o8/C7AXwJ3gAp3y96gCULA0BR6yHRg7afx5wtOwyh4jmdkWNEqn+IOeSbRUZDRFcJc
	 fdJKMJQFlB5KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C204C021A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937773362.9746.10282392666522292710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e688d78ac70ab7646d3345854487622acf863cc926c2170da0badfa6c2e3894
Date: Wed, 12 Feb 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739377733
