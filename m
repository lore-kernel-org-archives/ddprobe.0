Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACAF482FF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755698395; cv=none; b=RWFV8HaOryQfKOxcR+G8Re2wjYY0JPvBRA5KAWETiSXbKhqOkdbcbRMO3zHVyy3EHiqEykiKTI+7/5o3aLfGLP0X6PxoNi54RDU3X2kz5n+JQHzz/FMNSTJdn9seOEC4DEvsOBtdiA03RFjRRMZ4W5wIMG/7jQzs/dULFB1wF7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755698395; c=relaxed/simple;
	bh=IGxMvFnmf8U63w+sqLd+BEbrlAkqsG+7axTpZXSNiTM=;
	h=To:Subject:From:Message-Id:Date; b=EqHCUDgTrpCh8NPZOw+TKMJR9Il5O8deEhShi4PqAtYWOFQWkBJNu7WlDEC+5LHEEoRCUsJnUzMGo4kpxExU4A0twSKJRnSiVhLmP97NIjYOQU3H3crVCeYjUmUrtWPktgzv3QzMaO72TzJLBY5bJZhM7xZW/sVs0I4VKXRIC4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlORS9ZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlORS9ZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4CDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755698393;
	bh=IGxMvFnmf8U63w+sqLd+BEbrlAkqsG+7axTpZXSNiTM=;
	h=To:Subject:From:Date:From;
	b=JlORS9ZI4RsDrxPj0vsIgjGBfY5FctSMxZdSbBZtU67ygt0tezKh5BP7+oDMDCpSW
	 cSRtCaLmcR6/CjibcwypiGyYkkog8hhHQdgdVZiDduHCU508jONA1rBYPUCSWHvsZ5
	 dvXFqQKMFNfQCUS0SincWfd1Jm57MUDtogubx7KBi4FI5ynUHr5KRNvsbAhNicgy/e
	 d/RI5AFGUPCpAJ1F3OECFDH+AnFzOiDsrkpEvFkhnVEpS+NnYeI0EUbjWeMNH6d4MC
	 lmVL4WokFN0bS78oB7AAKVBk+NF/CXSRYo7iNKdkqKqyMLthMpI0c5vn69fmkk9Msy
	 tL0hiFB8QHtig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6FBCA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569839357.31639.15622731249310796308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6ad5fb29881448c2acfe606350b6bbf9a85f4ae355fcce86c346285c972d86
Date: Wed, 20 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755698393
