Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2916037B00E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781724994; cv=none; b=NzF5u/YLmpj2Scco6tbWinQZ6EYGWvP0+ii85b/2AAw5/mO4A2T8Zd0ymGHPHRUFBJJdjWPSKkFp6vyOcHkyWdATxC3FWlERoBwqvGu80A0tI/qzjK17xPaCQVyrL8Y+fzrNjrKzT+mFxsbfZIukTT4LDef5HJpoUjaEd7VqMqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781724994; c=relaxed/simple;
	bh=9yE/QswnMfF0J09n9jpi1jXRoki+h3m4TEdsU/pEvtk=;
	h=To:Subject:From:Message-Id:Date; b=SaGCcFuNIlpa2ivKowtX2fwx4lN8s9GGDCbXhT+LoZKUN88+GSpapmcgSuAx0SsqwYj3d8ZSwTgT+5zEd2rQrJX6HmNaJdHCyks4rTwl6n5q5PLpcH/3qsWaMCR1a5yM5RlkxLuVNisomE2hXOPQ/xiOWKem4Ns79eTssEdX4Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhjQQlsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhjQQlsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E0AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781724993;
	bh=9yE/QswnMfF0J09n9jpi1jXRoki+h3m4TEdsU/pEvtk=;
	h=To:Subject:From:Date:From;
	b=NhjQQlsbD3PUuLKPqCQy1GKXG5ri5AAkGG+eZi8KhBA0xtjNIL+13VYiG0h78VS4+
	 bRTZp9EgOiSS8bGIuicE87deJqi+P+fGguPSeLo718CCNXf0Epm4ianEZlgm2gFU8H
	 bKnfcJrCWBsbA6t1OXexeypDqoxfKBqB48DLzy3kxguNUnAUG3qt7S2AFhglXmx9uz
	 Rh4lG+ugC6pTvf07o+N1X5i6g//6PeJKlxCgVGs3ee4OUGPMGL5Tug0IDvADDOsMe5
	 UyYVdHg/JfZ1QvKre5cAMYWJa35WWCvWwyRbTtGcUiAy4duUP/k3+sk5p8BkG2/cx8
	 a5YIfQAVcLTrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2B3CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172499369.3059.7958054112188258227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a25812c21582b571cde2fafbff17535ebff5c293218b971869c6db7bb35e053
Date: Wed, 17 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781724993
