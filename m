Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229D52581
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754953794; cv=none; b=lWy3rBpaKauu8yasVZ66JLJvl1qglpVhbqUrg75kG2aqFoD/imIRqDm001YFQFFORPraH5jNe/yCsD6Rb0mbnQEn6xpqoQCY520s6mD9RYa13pcBxFCHsRjr/45TBR/1zQCTRtzA5vj0WdzoPOc5IP2WOC8z9bVkcDznt2PgTVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754953794; c=relaxed/simple;
	bh=p+QCdLBLUWeLG1kIG5aGe0ewk9LanjCtHVzyDpb+PuE=;
	h=To:Subject:From:Message-Id:Date; b=WMPc6K/f9zoMju6zf8mqB9xTFPTBXK/ppiATzhgRb5EfmksRnNafJIAwe3NdLHL1gMcvj0KnBYPsR7Zvdbb6wYkCbJNc3BhwZcwyHTTTWOL8SGXV93j7CL2a6YlIN/lTcWEtzB8KewBrL1Newo+jjMqDcyYNUmGvAHuhmMNcNhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSkHerbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSkHerbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C533C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754953793;
	bh=p+QCdLBLUWeLG1kIG5aGe0ewk9LanjCtHVzyDpb+PuE=;
	h=To:Subject:From:Date:From;
	b=uSkHerbQKD0n1CeyrmljqH4FUjiJAEIJU2XR7/dPf03gjQLYRb5LtBmigR3gB8YyV
	 ez33x8oEZEiGF/p3djUjGbk2yqFikUpLQyAfxlVPx9wx9YVawDaoIEpDCQ/FvKcwug
	 rCDiMPSQVeyxu2eowOwVLMnCaLfH9pNndn7RWeWOQIagB1lN6Tz3ye2Ney8GGItVRU
	 hfbcHKk5aWeFPdejbUvFAO3P8p91hGp5R1asUT6FgH81eeCA97mjYFJusjIbO+Y8j9
	 jCdTGZ2FV+OjSv+Im7xBdPWWoyP6H7Ek+7RYGZojbh0csvCqLxEW0GR3SYNXdxfEpG
	 U+cLNYWuLuXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E64BCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495379357.12661.229408894922413272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d818c8a1530b954145d0bad3c7ba9e30b3c495032a38d65e6135362d29150eed
Date: Mon, 11 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754953793
