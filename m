Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6673516849B
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719001343; cv=none; b=DfOFL73nCCF2juwjJqPIFPHW8t2U5znkk1ZysciqFzZTpX6KwSMDIu6p2zfecvlIxQ2ali3mACIcKnejvHXDXYvWqP/sLQ/cXtYRqrjBgjY3JIdU1hxnt33Oxuqc/OYYxJFJ3rxrWW96gfOaCSoPgD2shpJDDBFdK8VnWEMSkp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719001343; c=relaxed/simple;
	bh=MMogw0ssiJViqpPFNEyi5Ji6dUBVT6Z20GupUTAdXcQ=;
	h=To:Subject:From:Message-Id:Date; b=L81Tma3fB/hHcVRBGqpHPMOO2pbEmqWRXuBm6N4DBaVGtKuttMQ5KKokou10fHRdAySt0zbpEgUfDhoy89+KNitKc+YFUL0zN/4xF7rfHs+HZ5QIlfuaP8bBLO7I49gD0wZyunjqaT1uly2AZRX3xDlcIeJsFgThEvEXN7JW5YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMCHvZsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMCHvZsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2395C32781
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719001342;
	bh=MMogw0ssiJViqpPFNEyi5Ji6dUBVT6Z20GupUTAdXcQ=;
	h=To:Subject:From:Date:From;
	b=MMCHvZspz4PE62vlPpEmH33mIrMSF0LrqEqQhZ39oHoWYc+NrpIvJK+CZar0mXgKO
	 /odGtKTbF4PMPZLRTSP4c5bACI0iQgS/tdx4Ujrv4a/zt7zXFv1eFeOeKfSrqYCbyr
	 CqQicBgA3PdHiaV2KRHW+4Hv2aiSn4yiWwKSEktMB/6saoGwyBZWxbCAAJvytaeP/U
	 FIMJi8tCTLmOjCvqD3bs8xIjFKrm0UGnO93e2BrzWQd0Zz5QGn1AfuCLHt69NFxfU5
	 H9VWFAm9pts/ptBUuqvEXNobEG5AvAlov4Wd8OCgXoWHGJbILWCcJO9r4hccAFTpQl
	 vK5fluECDJUnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB3D2C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900134279.15387.13964950284244710219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7b1aba56b1c88cdb476d977b99ce0e1cd6439ad798437f395fc5961b1d6791
Date: Fri, 21 Jun 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719001342
