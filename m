Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FAC1304B0
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729962954; cv=none; b=l84AW+8zRQCU5d3sDjASuZwOYrLoW3ih9jKvA4zHmmSWX/TQQblPa407KyfcKBOtR6A8r6DU5VUM698m/K/+l7zIQcrGwbgakcjkjSDpWPdfKHc/rH8QScAmpw6Qye1HygVJlkw9wKfEP3Zis1iNRAaJz4Yp9oegsyHIrZSCoq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729962954; c=relaxed/simple;
	bh=HYejCr0spfSyiZ464HsH8E/5WhQ0kjtsQUeKznjjGoQ=;
	h=To:Subject:From:Message-Id:Date; b=VXyCPijaiIpsL6UH/+li1f31MxxRZ4XG0wHWAh0zBJFf1uyX6b00vhCc+8mWYTqZsDzzJUExynn3q2ekhf3WZQoLSJ3LxMxbCJWDRJxlzoy6eENOMNFXpOOpjxTpZV65dvcvdgwz8i8v9KIyEIIS0u2z9eSeVWvsLFh9HFWtaMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfNmIfiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfNmIfiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9ADC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729962953;
	bh=HYejCr0spfSyiZ464HsH8E/5WhQ0kjtsQUeKznjjGoQ=;
	h=To:Subject:From:Date:From;
	b=sfNmIfiZypxuCYtY8rxfRkr65cclYsjafzl3mIngjUgFlB39lQWpJrKFj71qDdMCb
	 OU1nxDvSEPM5l2oauk/19LsCDuWr/DRtruMXonXyo+zcQ/Rk02h5M0S659S8rFGTZz
	 Djj89ehA/6o7bMbuXOGGC36tvgaS8N3UF6x5xQXz7VDEfOe9SahlL1SuGIME95rHF1
	 kRwiWufQfQsDfTWLMHTfJI/zKgsFbXYxtnGqp1JELa11MLvBdQW1Ybi44+jlJY8pag
	 C8Wzcs0WVjQATcfhSLk7VoMJDbU9umLAfX2n8RivjGexXu5qENeI92bNtoXzsCViva
	 szD15VCuUSbGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947EDD0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172996295359.28307.10638216337281133784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46d6d7657fe5cc3a2c2768b072ef01c46d5e6e8f6ab6c73575185039498a141
Date: Sat, 26 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729962953
