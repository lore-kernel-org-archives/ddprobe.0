Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402B31E487
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756764594; cv=none; b=aLJf2S7hZlhDVlsv9dUKY6G7Jx1VXNRrBBhmJjp/y3BYQXqSWp94dQtuAF1wzymwOivNLoA1+MHuxlI7WoXUHDCalrbIdZkE1HPnMrltGwWQAjQ+Cw+/Z7pJD42pmVBPSD4MvyEoM4ERdMbBgiQ+XGd+bYPv08tEQPXid1sptAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756764594; c=relaxed/simple;
	bh=iGVRCshu+ASdlyspYCVrgSHQqYG+d/gDUthgzpm0mrI=;
	h=To:Subject:From:Message-Id:Date; b=DxS8cEbIbLvyauFx/HP1rpap55C3au6RKxvESB7zuakpmtUsmXkUu7njqBNql35lFm0o23ASQhxs2tzSUKGQYuu3zcQFB7F5EuNlQJW/skn3D8mdpF7GzzDEZMahPRlRwxqcrI96y9t2+fXHaMriz/VYpT3XsOH4J450nHbmjzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obrqfTIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obrqfTIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EACC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756764593;
	bh=iGVRCshu+ASdlyspYCVrgSHQqYG+d/gDUthgzpm0mrI=;
	h=To:Subject:From:Date:From;
	b=obrqfTIS18KAaWLomWW5e5QNl8VN8lGrYTsxICCTWG7oBXBaqB3P0ix2Oqg+7XTcE
	 N7hsZx7P0f91fatZPK/V5heJhJZd4XBxs5EtbDirjyv9afWBcvuNbCmWOc8SV+N9yy
	 nqrQ5FKCvylrtefU5iII7h+puvz/wI38LF/UWPa4vQ8g0o0c2grc7wiFFjXU4hqLdn
	 4lxgFSRiCPiTDAOCn1dD2lgPYXnZiNdeCwkfNKmAMs6rgwZGeGebKElu5JQwvQ4En6
	 BruowwuKzr8e0yt83d0FyclRuEm4NflaDd+vFgzvQ2k49LTddRHvXjQj0jK7OlIafd
	 VYkf73wRdRNJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADB9CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676459361.13196.15457647076111232479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f020aed4fc657722a339fe8ea59a7660a844b6f1fb5bb9a56537ed674c65850b
Date: Mon, 01 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756764593
