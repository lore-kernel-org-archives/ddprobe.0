Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA81548C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777864654; cv=none; b=Dvpob1KN/xwzdjOaWZtKpKXEyYT9foCfn3TRKu3e13n8fNNR95OT/udTC5NrYXM3/dhuAm+l23pzoTgGVH/+fJZiaW4r/gkMN2/s0y4EL98x6mo+ml34ueBFYqPPQqDaKIicPCUbbdKq6KAOJf3reBE7GSYqMwvstbuctdQ2ec0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777864654; c=relaxed/simple;
	bh=zR9b+nOLuEdfNVLjqjf/fO7ElYizAUsmCsnQjcwtT3k=;
	h=To:Subject:From:Message-Id:Date; b=FyH0Sa71V8yFzDH9PiLAXHHLcykFSvEaATdXiA+CCS75XHDrZ5yWrBpYJNq4Z0gfLEQ8JNR5wOD85GgmASXN3k0Dn7JIv3AzHH6qfOX4P0SnLcaoTQ90f4J837FlHnhUD7dGpOAEsDhgSXnAjBXnMuDPmgEi7/sRS5JVzugrFck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjSBxZUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjSBxZUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2B4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777864653;
	bh=zR9b+nOLuEdfNVLjqjf/fO7ElYizAUsmCsnQjcwtT3k=;
	h=To:Subject:From:Date:From;
	b=RjSBxZUmyRk0y0C7NUWHfpS+HsV3/vdYuVZ5ZqI9AWD6PDGfAG8V10kwSho4nED6o
	 hJsKrLjYszDlbCLyYuhb2uDDFLM+fWX6Qz9DPhqgcOT6fRI1Ly3nVM/4qNShJ3uPKb
	 ij3cDjhlApUMAG2yDSaXhNmLsnyNvT2ba4jcheWr7//D+i3+piMWEBioAlVAq+GaTe
	 jG2awwHVuIaOHIjqrhTOT9qIx28R2lzyN2GP10irMgBdpTynK/BF+Nq7bc0AAjF/lJ
	 XYI0hlqzI8x4Ruu4leYw6yvUPYAhBidJQNg/mas7wbzQB9KwqPwUCLmeX6u3bYtqMg
	 0ww6cswTZkG8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD24AFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786465368.2625.12068101883149862786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb889dfa0b5c9f234e0725331fee41831e7b96c8685554c5daffce30f5f2039
Date: Mon, 04 May 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777864653
