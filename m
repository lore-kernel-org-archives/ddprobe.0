Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0BA38B9AE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768970634; cv=none; b=sk7JQCDLcrNuoPbjQIop0GSEsv7m+XbpnIUfLUH1DGww7Pdoyg5cDUYrwVJ/8lcOCxSpGIWBS/CwysbWTDOoJ2zOpb5tSP/hA+N6PS8uQXH5kVdn7h2b7JCUUzfVFSdQYk9wfXekTdsk8EbWVIl0t53T/4bHeicc80lQ7YqqPlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768970634; c=relaxed/simple;
	bh=9i89+91BtY6qYyizQkrFeWtfHWtkjWnh1lH23lwb9WQ=;
	h=To:Subject:From:Message-Id:Date; b=gMIqky4bOysSCH71ok9Gk3+7fSZLjsyKTx9xg8ZrTo3wZC/blOx9xpulTJV+UKJvVdroULBj48i+Xu6TepP0W3XQ/3pH0AD4Uscer33fZJcbxKV4gHWUMIvI9s4z3/KnRfpJdJLvdW/ZG+PpXbIru5yhHQCHIx9X8dUY+Vyb5dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imP59FcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imP59FcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEFBC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768970633;
	bh=9i89+91BtY6qYyizQkrFeWtfHWtkjWnh1lH23lwb9WQ=;
	h=To:Subject:From:Date:From;
	b=imP59FcFG1fbSQGVhLoM2Kw5znk0Zu2A5Er6fQw4s+A2oZuLZLMU0kSUopj46lSTs
	 asavneVY5uEVhOjvxIT3Qbw8cBYMtKDgV1oOIVE9iWe7toL51Mo+XMZRr8+O6bvoW+
	 wpBdJnGPBNsKUXTtDaiNhydl5gqEDkwguSGNn+mafawGKswIV68A2aEruzrJTid2zb
	 kUPG8hl2ytfB9O6zU+nC+/Ifk6Aj0097MaVn1wMVzsNwyYrxFvE5mdW5nvGnMEg69z
	 yrEsWdwAEoPOEe72/FEwaNmUtD0lsQ3i/dNqlGRrm48FITVkz+Ofxh6IjGpHhaRibI
	 9ozIglnwkJ+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A114D262B7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897063362.25095.1469455307562627028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa8d475868f72641925d5e015b00f0320228c725a8cdd9de481239051977947
Date: Wed, 21 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768970633
