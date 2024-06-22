Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E2914B09C
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719052943; cv=none; b=cKllXPebe2TFmW9IkWzCw0OxKk0bXQ1nuBC6zhml+fUeY3t5ddaT+lcny9eBibZMsAWjIj3U56un1i4rCDz9MYogj/Q+pnnAQiskCR8mt3arc/d/gHzt+hfJQ+ZELq5U3sfvtKVPRlAgW/wlOc8NrEY199OeAJRXd8K7IdNUZ2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719052943; c=relaxed/simple;
	bh=TphIRKBqBKW8xwhmIaylTT5XRPqFSHw8Pm0TrBnkxmo=;
	h=To:Subject:From:Message-Id:Date; b=ocVLvtUuYhEBZh4Ox7EtPdzpEWFR7mAQYwTinBqjMUJRU0N2yRWeVWLDAgt4fMzUyR1BfxbSLdeoNDWEF7idZozW8UND4R/i1zKlpnjw8ATdp4BXl21TnaTjgVpP1o6hIwmnByYj/DUwY/w9//zLPQDm3y0eFo8yjv+lTPy1VHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVotAFik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVotAFik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E076BC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719052942;
	bh=TphIRKBqBKW8xwhmIaylTT5XRPqFSHw8Pm0TrBnkxmo=;
	h=To:Subject:From:Date:From;
	b=QVotAFikiUxqj7FbIncPt4IJr97OZDCbu+jaRlbzF2wJ3MAJRRhzZ1gbrWgsZ6S5W
	 oJ6tATJVaXax2Tw+PmET00TSiu4q+6A9xdVivxC4261A8ynptDOpFft9qZKicd0mae
	 ALtaWe8JK+Bozyo5cRu1s38Q4gxh7mw6tV5/FzLyKuAvb6MNJOFscbtvrAOFys9FNZ
	 7CYUzkKu9eB074alU+A6R8OvaTmHMZvMGZWnzYQjnL0HwXh6Ptp94eEbH8zUsb5UuZ
	 QNWKpfvvA5E7dY4WiC9liSLI58LfwVSe/GXqbNpxa2xtNRELBM7/N7Ca5i0qgD+JA7
	 h66nZTV7rYkLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C598EC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905294279.17298.4992830529203754040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf977ccc8af7b3a31fb9dd7262f27cd6da745383d08148aeec5e50e42926cb8
Date: Sat, 22 Jun 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719052942
