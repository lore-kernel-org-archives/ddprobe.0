Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112993B3BEB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776260854; cv=none; b=Pk9pnMGaZwtWmw+N295ddrh+9fclZwi2QTPqStfqQe833PZYM7T1OFHPHo6Ra4BBC4MFDyotPURg8oeVp0cz5hqmV8g+6WjifsH403Q4LvDHpEbg+BTlkJK9ejdXNSEADKKBPEso+L5n7Y4vrJWVJTYt/lKUP6/cTPqi2p9QXIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776260854; c=relaxed/simple;
	bh=TrLGj9+BOFjwRRTwl5gcTi+MTxMKgWzn0w48ZQ2eYgU=;
	h=To:Subject:From:Message-Id:Date; b=VgKEUCLEFrVyhVw5DkEadPKisH4lU0GY85SYz2IEXu+fE7K9zETGJZDna0Sa+3w2IjCFvNZWMhSRk0+7bFUgLpOfYl5RgGZZSyR40WYmrC7qucuXErfeS2mLa3uNnngyiESkd6G+EYPJSJCRTPau4kjkNxF7i/oLeKGfSNarZb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qxp21ywN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qxp21ywN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B985FC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776260853;
	bh=TrLGj9+BOFjwRRTwl5gcTi+MTxMKgWzn0w48ZQ2eYgU=;
	h=To:Subject:From:Date:From;
	b=Qxp21ywNhYbQP0JVPB8+3J4aVyCVBsqYqL4eVDUYR1Ry2SBm/VWy48xR9UX+YFBiH
	 PX3wBVWADvbjaVYVJFoDeGH+FNS6w8+r62QPnoMLxlLRKnVOZ5H9dMS+ZGCTskPOLk
	 hlSMKDsp1essJ+h9iT0/9Gl6dNocAL5rdeimcJ2XCnSRqVtuBoPsLTlw0aMWQY3pzm
	 Y58Ji2NKpnaw3OmQ8/pDcLLfEelTWgGy/UEA5WAkKd6JHrF0Jz7tMUAizwx8HLemXt
	 oAkDXfJfwRlXyH59Diz2HgY73q/fs+/uankHj+5YbQzLZrR4Cz21Z+OptddiiiDnng
	 69WCii7awP7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10CF419BA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626085368.17929.5260461812933054656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d0434c3ecae33933c2be9ae120075ca378ff2cd8b2c6b91de31cd54ea715bf
Date: Wed, 15 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776260853
