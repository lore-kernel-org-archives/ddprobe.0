Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC3137F8DA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767865434; cv=none; b=Mdk0gCZycEvnhw0O/qwg3FzaTI6avRq/JzxEt3EdZmXPNyCtiHVQB3pZvr5CKJE8qdOTIj4DbWFOcTLXpOO3s3un145EcxHn6jNS0ixke0yIxpczSyyhIa7FTv5cuamXSI9FkqZGZfUbBFI0Q1zbQ2jV0YIiGNLuOM3If2eZrVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767865434; c=relaxed/simple;
	bh=wkLEarE3OLLnOT5805z3M/HpomhcsHfEIuVDLQ9hhXE=;
	h=To:Subject:From:Message-Id:Date; b=i9EpvuevF1a7NAy3H51FbcwZhl+28ntDG1K/kdO/ULk9Xb725XTibMO/VJSH0TZ+95IMsE1FGErtlvpPtqCgf17bDkiQ4Wab1ajZqyvXxzV9raVvkDjMyNaxTA81QqsjFeCeTGruftus0T9VoLS0gHCWtO6p3ziLcFnppLueWsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqYtER0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqYtER0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C399C19421
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767865433;
	bh=wkLEarE3OLLnOT5805z3M/HpomhcsHfEIuVDLQ9hhXE=;
	h=To:Subject:From:Date:From;
	b=HqYtER0IDzeGAN/XQ4dNOrrwnaAj7pa9j/s3Y2pvEIG9K5xxrRJpf/9yYQXyMPOTZ
	 IaFpLckxrcFs2cacIRFZz0pnuG1OLPHcnt89OMlTuhzqtIOOgvG5ztUF0v/cYaQ7VW
	 22ZtL469cgWaH82znsJV+PrDoEwNCRzCu8lCzAu7hzD1XkT8eQy+Y4VXXkNnRKNARw
	 zYrXVu11oCTUZaCp2odBdxkveNsZsYbZVYlytjRTozohs/SP2hwftHepjcBUpCD139
	 fwG8+K2uZzM+/trrVo18dzqHyiERgZcUID+wEpKpe0GxFTW3aVWq/6RzogzdvHmqpy
	 GSogUZRIkt4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA67CF6AB6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786543357.15464.10466196618923735097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e57702a5cd1ec44cd7cc47e0290d1f4098c969458c57f7b2cb614538fd55207
Date: Thu, 08 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767865433
