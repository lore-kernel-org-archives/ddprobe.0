Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AC7367B72
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790547634; cv=none; b=a85wHWEKhrVQF5jdVqrLdmYNYa5NX3MZSSxtmLecaUIqBsHtWL9dV8omcAF4lZrd9CbJZEa/1lLql2ZB8NgQNkWnzu2M7UHqpzBGm0tC749/4Ff/ZJa6iKhhfrGtSFl17Z+Aq12yZxVsBNw+pAEYonmwY0/Pl0fr/QY3FXsQ2XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790547634; c=relaxed/simple;
	bh=grx56qFrU5g6RRBXG9fQ/eHwg4YLF8MeZvowlDto558=;
	h=To:Subject:From:Message-Id:Date; b=s1EcvWfxYKqW8V3/HdKocObMEnl4jdHloN8tZALd+O58Fnw/KTxm1rOTbGC4lkdLgdS8eV8AlrFP+w8bycJnBj46lwexk+J5zFv6bJYDpQchvq+bjZbbyvTI/1J22MzLj3Sa+Rk+SKN2uwGEZdqadutFQ2ti5e9uVarg3sf1jKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRVWFj2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRVWFj2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5E4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790547633;
	bh=grx56qFrU5g6RRBXG9fQ/eHwg4YLF8MeZvowlDto558=;
	h=To:Subject:From:Date:From;
	b=bRVWFj2VNr8oKxUEIhiL6kUinqUOoGZsvVTYQFxHWAiHw9Tm3iqWh7dInqVwwCTGw
	 mrxvJOuO+aW0qwUNHFv0K9Vz4LsqLyNhHaqJpYZhqtQ9SiOM2qWFRVwBUFGupbC8fq
	 xdfI55v8WQW+bUPYuvLgCo7aPzmuRPR2F4EpAn3pOkn8kUA31kdZyLXp5KzfEsTn9s
	 DSf1KltaLwTLN6GNcw1HLDVrXzakCag8/STrUi3U8E3VCtpFO2Hsi9n3nywNiPU3mb
	 edEOd1UWzqv5FflCR4tlp/I7T+H64rSzBsxhjVoILZQWeBzqYE8kaqqAo/lli3dRm7
	 u5C4vDffQmMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CAFC98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054763368.26508.10111013221907984782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964d993b5218db1839ab1fbaba20d859a3795e0d4f6a1511c5f9a6b91f413a28
Date: Sun, 27 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790547633
