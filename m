Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B0D14290
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718081903; cv=none; b=YjFgMqiIpGEEB2pYKTXfq/Kmg0ydLmxQ5U9OepBV/Tz92OyGUVdyAoMCJMjuNLfy8OLkS5XmOqXQfkUNCY6X5uzTcgP1VC4rOH90TzJ8ft3UtmCG4V9KaI2/StUASvtW3jvtYEuw/PcDNHl9dyWSnLAnKzx8i28343aYXH77pD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718081903; c=relaxed/simple;
	bh=grN5VyfcRRIEM8nat1vhTN8+4y/blvvTgDuO8lIx5dk=;
	h=To:Subject:From:Message-Id:Date; b=nbi9W1C9W1xiQuyKgsfLZWHyLuIA3jTnbf42YzSpneqWpysr9PUeZhgjKg9PKLsmXGweBtJzQbgEH3iT4G11li1LvGMMJUYRRjBS5jjSwZKY/dzynuROHDG51gAfMP9qMKuVzImsL4nfEwNtugKy+7pa+FHMTAP+fgib0mECTTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XM/n6xHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XM/n6xHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF08C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718081902;
	bh=grN5VyfcRRIEM8nat1vhTN8+4y/blvvTgDuO8lIx5dk=;
	h=To:Subject:From:Date:From;
	b=XM/n6xHrMJHJfHIZs68ANGb0tDlF+XcwDGDYFhHPjqEbw5s4vCHdUQWu4/DD+vW/e
	 xKVLSJPFpUTNhSVTuLoCxQtMFT+wGSxEW3Pw010Y4MATN9rEyVKpqMOwXbg85+zKzx
	 1ZghANCwvw8FgYqPSXErSvp4iZH8T9NN/GnDzu5CSbudMlB+dDgcFOzjuKl0M6OKBp
	 MkDsTovTlDKxuIZ1D2kFy4NV39VcfVLJwyfjuDs7E4SaSCN84XtdXCnLwVcX303UEl
	 kKMh6jVlCxEzSere3DRnaG7nK0SHVVQWW8tOHkoVzfTmHOlO6syd3jk76SKwthdV2W
	 QWjERa2pCF0wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BC0C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808190280.26117.6968853033392744107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecfdc809f78f2745a2ec127c9b73131ac879e574896350485a53c5d2ad42bd2e
Date: Tue, 11 Jun 2024 04:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718081902
