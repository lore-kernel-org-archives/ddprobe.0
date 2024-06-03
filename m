Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DC713C8EE
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717451123; cv=none; b=fCAoy4PX630kXDzdkB3jHqFPJH8+6ziPXrdpOlVk38ZstHESjub39Q2Xa8mPUrcx75FY7m8snJqfX3wvTP7E2IcOyh5t/G/Mb02hJjeu/6yByTDK44530Toeh0h7pDYUkooe/Hw939WPUPia+Tu1JCkhkCw5Y/ixu2Xh8y4RdZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717451123; c=relaxed/simple;
	bh=anKP6254dKF2YQOWi7/O5i1PrC6vsVBmX01JU6qz5ag=;
	h=To:Subject:From:Message-Id:Date; b=jBP/nF1h6ceT4bkUe8NiR/4sKxLx2p9ptoSOybT5hwgQUEAQh8voVSCLro41divobpeY8FryJ2c9STFKwCZ3hSEZ6BAucaJqb8rqUldwKSGXTSX6LZmxGC2wwh6bRadvWupXZ1A/DbH4le92zoiLDdu1uvPcsAGbRU+oXDojRpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYJt/HLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYJt/HLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC93EC32782
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717451122;
	bh=anKP6254dKF2YQOWi7/O5i1PrC6vsVBmX01JU6qz5ag=;
	h=To:Subject:From:Date:From;
	b=RYJt/HLRnW519OA56Kz/CztiAGqlPO+FH+sB4LaQBjK46ib//7N0eXin5kPnT1VNY
	 yACTsodNrwQcsfHU4KTKPjI5z+GC/Jaiqo455gQuAiVCYx4H2ODk1pLhONCGTQT5/5
	 dyksYihLN06iD9p1sAuBXK3tStE3ncnSDB3rphxWWgVM9eH3TQmA8UiHOZaKieTFEe
	 tcO/NzfB/Mj0glCp6htO3a/xx9mfTLRnoZcL/3kDO9NDFUj5G4KyjSYfC7CUuWv6xn
	 7eYf3LiDuJeO9eMCj1Wi8YH/IKFg+B43mv/kEID6qfRpzpiOZtMYTApdGrvBQ4Rr7h
	 iroR55nn5t08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C279DC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171745112278.26589.13067425228089906760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48b0733c501491bff0d52fd07e2760250a25415d4c86b08fffa292d53edd145
Date: Mon, 03 Jun 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717451122
