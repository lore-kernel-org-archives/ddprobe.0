Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6A2261565
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744202394; cv=none; b=jK6aCG9T81gygF0NiQ5l4EC5c0x8kDh5IRnJqAFLJkrdEM9NUIOJU4OH/GnmboNMg6ShUih+KONpeiMzHZpjtOCWcVufTqUNWrUWq582jyap8tBuCt3OualjhEsbrLUVrXb8je34uoUDK2k90vWr2zUlsFAQhYfo7PjngHXv7cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744202394; c=relaxed/simple;
	bh=Vvi/5PadwWWzVfvH0JXhhwqCaQE5j0LQLHmyiGhEuqU=;
	h=To:Subject:From:Message-Id:Date; b=mf6p0p84vmtT+3aZ/nezJG4YTZ959dRuFQK9+/wZxcVytnf/P4Xoa/FcCe3Z+JopzL9MiSPsVqap/vdJFYJD0GI7ISlQwEYsleosHez6UVdkRr3QJLGpYP+PBsXYptTpIQen6MtDn0hMOvOuUgdzbfBiI/7a8b/99lz9A6KuBFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8GRrgu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8GRrgu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6388C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744202393;
	bh=Vvi/5PadwWWzVfvH0JXhhwqCaQE5j0LQLHmyiGhEuqU=;
	h=To:Subject:From:Date:From;
	b=N8GRrgu5C6S9OPv+B4xACV2aU8XPC5ydRRCcH9bF9m6V35sl+6OnPQ2cV1XpmK2Ef
	 VCeo817B+SO8OKCuULQUQDZb8jmsz3QNY1F5UfhhT2ziKPRXYAipieCrnilL/Z28jz
	 6brUYrHWdeDAdnuNSDmHNe24VuOVjIIyTDrdjPE/bG1IeEahUrUQ3Acm0CaR27SUQz
	 K/piWfvY6LgOiiyR2NHO7NnABlFbyATUHECpA6J+1jT2lkcb4HftLUOOGo/u7Ds0F5
	 EMNA5OfxKXZtf+IAXx4vNfCtF8x85O/s1ZpXiCvhYvLKhZ7LhWi6YkdFUwnEp9Y2Zw
	 MLLmD5vg76yIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B3C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420239359.13022.7899494646450460836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddae238be7c2f59d0830fc28bdf82e63dbbe056be14602af96f63e0a9ed3af8c
Date: Wed, 09 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744202393
