Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DF422D4E9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791002434; cv=none; b=iiErsxWK6A89ZzaUsd6aUt9+1E/WYl3ov3/tu6yOnssBav4HDeFbi8MtAQeNymUS8xIaUgVf6VFasKN44xo4Td6ch5kTqEFB5431v9FjlaekRFQzxALsv268lBsSCMmWsGE8Rj5eb4mV6sDfh0+sAG3jrezniBe7UIqqZQYYLKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791002434; c=relaxed/simple;
	bh=pzZSlc199XswxpqBg/A5NIZX4fEFjGfKbt0nvSfdBB4=;
	h=To:Subject:From:Message-Id:Date; b=YVoepCET+xkXUURKypttHl6JhCKdvgZDT6OZGet8oUX5AXr1YFmp2PHMemsbGzFEaO6O0r8hv0NF8nv7X/CmIQndkbo/T3nCiJbHHljktBamZ7LyoKt+0mKE88yYFhQo3AEghpHTvoJ+CHgREOhA3T4ZbLzzJdhOimMvBWWYNhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNEwSOUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNEwSOUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC43C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791002433;
	bh=pzZSlc199XswxpqBg/A5NIZX4fEFjGfKbt0nvSfdBB4=;
	h=To:Subject:From:Date:From;
	b=lNEwSOUchuoF/ZeJJRfg/ARYVlKPmMJw1zo2UDQuJbiaYQZGDMv+7zLhKsuaDj41L
	 BzhYCh+js24zOoaEl4i0o78bA7/uKjva3BlUJwgc+4YHq8pEz1BN/AaUgU+XWxDSNi
	 oSsYJjPTlDEb03AsRjofybn6ExIRo7+QnDR1pqhhv0YRE0A5WGJwiuDw7DjouI8PiD
	 WVgCFASNumlMvpZEr1TogONxao+eSKe+XvVZk+1Whx5pB0xzMJepan5qIMrt73EDfp
	 E1ftMQ8e3UkRIv5GDc+txLV1+cp6F3iCzJCR7CcfUc6W2UQDErzubhsKb2zQk+5R8I
	 aefUV/DVf0tPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA535CA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100243368.10378.1936622670349003018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4274b404d508a69b4e199d2ef74d5024a1f38567864e1b113e4f74cfdbe3c7d
Date: Sat, 03 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791002433
