Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBBF1DE2C9
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772160294; cv=none; b=d3mNU7hBhLQsyzSqbisiEUftp8ISGliTR+m8LomrlIcu6lBy0/5WdonFTReqqPQ1w9Qm2MSKzPAJ5W8863InG2cpqEhunugG7oqK9eeZSIvvD9YD0DwWteNUne/5JtORzyn9bqXt5frzbhg/8qHFb4QoqNStZjHqt+N3aPrWVNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772160294; c=relaxed/simple;
	bh=CJlFl98qQmmZOmp3v19u3se5JhM0MJZC+jl7zCeyWzw=;
	h=To:Subject:From:Message-Id:Date; b=WT0//APrIGC07ECwijO/dYGhl1uuSAcV0yHW7GOdUO2TtyL60A+NIzL6Yrlcqk31izgfynrw58Ih4kACA/UPbQuI37lt0p0fnZsDrUdDHF3jcBH3DB3Vj2n80z1NuMU5P+eS5QrTmOhyILf/n9uzqnG51pedfIwGiAL9+sz8VR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2NOxw6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2NOxw6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DF4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772160293;
	bh=CJlFl98qQmmZOmp3v19u3se5JhM0MJZC+jl7zCeyWzw=;
	h=To:Subject:From:Date:From;
	b=J2NOxw6+V/IHj0EIQLABjbgkDZM82s/rJxRwvc5dwLs/N+FCLiSn26qIATcCN8Mrq
	 0kEBocNesaVJV0mWNJ/uiOCfJsTIPHYDBb19PMJLQDfUhLnHu1u14sQ42NQHWRg6G2
	 SlmPJp7ET461fX9jqbHaGDAgSm9KaYWst+Dju3o+5PuOczSuZqUsCLUexI8sNiTcvz
	 XeVsZlt72dM1PCwcj/MpEiZ7RNE8EK6WJRa9YfsKdFY/TiCkkXLFgraPQRPJv3c2p0
	 lxqRnpB6xY0zHZo6RUyXmv4iO2IBSw7fnRm5j3kJluc9Js6dcG+VOc2mj5qoHfFwPe
	 xVJp9XaHq64CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9025CFD9E30
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216029358.24221.6911942884130932260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9465dc9e12aeedad7830b39e40a2058465b5c8e63d3b16b928e1633f395ed954
Date: Fri, 27 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772160293
