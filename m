Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1023759
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722011154; cv=none; b=bsu1dup00tW4XHOo8GSHdfoqC9mdsfmBstexKCVz1fROX7ecHT0bcUnb/t15g153u/3nL2yVwR2NB/41yEpN0tevB2bUvtwH7wX7GD7wAfiG/e1Pvdo4rzrkaezViO9eTZl32QvxJUK9KyeWAVD0KhSyr73CzXD6Y5oRDQIESbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722011154; c=relaxed/simple;
	bh=tRH+DuhP7ufMnftXCFW3Z5n2rdRByzKWxWsnousxA8o=;
	h=To:Subject:From:Message-Id:Date; b=RSFe2yFVnJLQbkkRrH36Ao4I45W4h0LTxVIlt5Z30ufJ7mzAP3ozbUIGob5iYzVDGZVmORSgbIfjdL2YvDroLuMSqcedEq7s0t+QeJY7wWAETvGElsjbpr0Sd5jlbE+yYH6eRoHvdqWIIE3nYeJx/tpor6yLDhkRwDhseHBXlqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5DVG8ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5DVG8ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA723C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722011153;
	bh=tRH+DuhP7ufMnftXCFW3Z5n2rdRByzKWxWsnousxA8o=;
	h=To:Subject:From:Date:From;
	b=Y5DVG8ieLOFkRKo/oYQ+r40TzcZdl0hjvec6zbIf94OVYG4C3D4rdXxgW7s0zqTro
	 4C0AC4rUR6xSvgQ7AoIBQiW/MkNLWI1eT2jRp/br6idxXbuwsNM0WcbQf8kCCPjyv1
	 MsuF733ABC/pAxqYggAmGzsh66+u6vbkVCWez3vDnmEToWS97dPpwczwWuFGiVe1E8
	 i8tFab9uo8cHEWtrspqTNnLSVwETcd0h+i7UWJRG+BX2NyGEOwYBDcYZJAUUoJ65Gu
	 jlzZd03xeuxIMDrGPBvoPwQtwxooEdwkTMwK/aUeb9v6ShZKR9NFEpQyrbmKrafHfI
	 LrRProfa+Xg1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97692C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201115360.27491.5435862034443012159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c154ddcf5d179d3b266ac4b2b50389f329c649b645896651ae06a5bf2e71806
Date: Fri, 26 Jul 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722011153
