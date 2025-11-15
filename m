Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC061A3165
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763247054; cv=none; b=M9GIYr3rfXTx92Ni0TDppdE+Jw0fj4mI7+Laj9yRCX4DUT8ScdBqiGrbAsYLTiBwvMqHlfFhRz1y/cjwMIU4npPL44SUZ/CQjtj1t2VWiKGVQfhAht9oaeeMlqNh6CEIxKtruZsbRvTbqB/gV6E35YKI6IuUkqKslV0fYM7Ne84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763247054; c=relaxed/simple;
	bh=9xBo5FdsCfYRT6iFMi4Dim/piVypn9tPojSC7GDoSRE=;
	h=To:Subject:From:Message-Id:Date; b=sFhk18AwUAYtbXfBGhnzxj5AyWEz+4Xgy7rYOK2/O2/4jLjK8I9Bko/+lsxwdt40TbctBlnKD44eBCJmEp7o4LcWYoIIMKRyZPDgAXxUWBH/d+3mysp+m4gYlioADNeBjgLxcr21DLwOaJ/XCeQlnXhOaDr620tjKtQPBic3mwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQcVuF5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQcVuF5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2403C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763247053;
	bh=9xBo5FdsCfYRT6iFMi4Dim/piVypn9tPojSC7GDoSRE=;
	h=To:Subject:From:Date:From;
	b=BQcVuF5wkuZ3q/NLyKTlcGKFxzTugWPvQGOgpjCff7ir90F/glCZ1KJuaXW60Ldaj
	 A03DTKVJgbdFNm8PK9iGqHRgkguD+8sFeV3lGmiGEvjfWK8DBC1TJeQutqzwZ3si4c
	 dh5/u8Ub6M9ePsgdQvnY5mRGyC4a8a/ec7PaVkg1P40OyWJx8VHUCrpoGJ+kCMZDPE
	 6CysY+870DNSF7hmArcKuBCoJUbs6f/gebh3MUnVe/RxeGaCtouNyJZefk+cT9pll4
	 kmtNnkLjgk28iGnp5lgIKzss0CfPuPWMZ4FBLA8Drtq9sLm1btoWBGY44VuL5de5vM
	 65HFQL/hrANsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949BACEBF87
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324705358.28007.508597883302582641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bae7a12a3085d7527221d0e1367fc61620f711a5e8d4e7c0f1300cb50b9270
Date: Sat, 15 Nov 2025 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763247053
