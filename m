Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163082C2349
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779122434; cv=none; b=hp1Ur+QqF1NMh0S81OvNdlubBFv/QrPZPf7r9zd5xrymxkF474q4Ka43wp3aiKeUcLFi1LpBB1xhBnGFVwS2NJU81c9CXTFW5zgOylfmLU3Gcjvoz/cc5cqSQDIr+UVZphkeljbrNhgCycl9ewLdsTg+FtjwsdPEbEc0c6OV6kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779122434; c=relaxed/simple;
	bh=jDcpNE+SxVuPJQHSsW2pho/ZNavu2xBBw8qc5VBkPDo=;
	h=To:Subject:From:Message-Id:Date; b=TfyL6Lwco2WQ+GpwpvSvyQit5BP2R+eVm4D6EbygJNGjHzgsp+IsqP/I9QLAAABw4K1qawmfjUoVfyUuxZyZT41QPqL8cDeB94Na/IRzS/wBN8zF/vQ5so8FmhzEYuNVDCyxmiXPlExLBfD+4ft8gQIN9tCwFsmYYLzU4JvcZc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IP7I59lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IP7I59lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B913EC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779122433;
	bh=jDcpNE+SxVuPJQHSsW2pho/ZNavu2xBBw8qc5VBkPDo=;
	h=To:Subject:From:Date:From;
	b=IP7I59lcyhiqpLoaKYUBJoukzBsotQDla56DycMBHtEcIKLHPcuZYtAxZokiKTh2T
	 Lx6qTmPTWIeHQkNdwYY/wsKt+jRlUIz9taGTC3QJZ8om8IonG/hw6rh+R2d2/TqKmC
	 frWaE2XzT4xs0RM0mjEZfT9kylmrHUGKyeitZ0w+RzTNX0Ipa6Lo6krHSuCtMfCEyj
	 KI44Fph7faxW2d5d7iLeaNALlhOmQKdENnTZUJz9c02ERAAANQogJKY2Wlb/yHl0FH
	 nICZusgdMPPm9IamX9mWdMA2OxBotb/dC4Qpx95FKOOp5H98TmxtvCw1RHIMrW6D+q
	 G1Clhr/cgeFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB282CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912243369.17419.10871029638698999039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 293ecb00cba184cf683a217365b61c326ae378411a3995f31367ff2d0b08b92b
Date: Mon, 18 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779122433
