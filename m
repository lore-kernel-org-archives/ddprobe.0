Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121A172618
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772427294; cv=none; b=Ywzl4AktnjqSKHVawHQrGPR57++G6vtAuujdU2TDlZcF3Js7Qx8aJ41KPM2N6cLmD6bfRRMKjES/uwQHx8KRiMGcm06bS8MeFAUG0ucJdswru0HDU4JT5MN42XKnjeS7lJ5r5jCrQAKjt89Ajaio2b/PPKAO07RpnTzdQvce9IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772427294; c=relaxed/simple;
	bh=rPy88RuikdF/QOSTcs5PZFwSjNyuD7CT1QwntetmiRU=;
	h=To:Subject:From:Message-Id:Date; b=mOTpIsPpvTSJDqnnOdnfwb+qSCRr/Yzo5ZxewOJkOfRVEtzjH2K5uIrHHUc8EVi3qormG69Edne3UJ8Dweagk2UuzlQHt1wcuujeYHcYrXzW2RgFCGRrrE/TBMLRJDVEZVoffhWMl4L67qV7bfEeNLmhIJ0hPGn8HPOkzIKeB0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4/Xxobu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4/Xxobu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9C4C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772427293;
	bh=rPy88RuikdF/QOSTcs5PZFwSjNyuD7CT1QwntetmiRU=;
	h=To:Subject:From:Date:From;
	b=l4/XxobuuSOoG9VBSVDNSlPtrc8Nz6q0YUFJhcO8kKeAz25r3VWZRdkRflcSUcSK3
	 T+Wu1NFW7DVONz/Xt1YKrUG7fYs2YE50UbpYHTyrKU5kGX6BKTx5Th8ayaSrVvjOKx
	 qbE3KqfWkxMrFwVPfUXUCwv6Gd3F/E/Hq/k2/PCnkArgvvFpV380FwG0zvi2IvJCEj
	 lliwAVbSPWp/YuQczuwm6HwwCpODCUCcp6dQ+3RVYfeWMreWPXom2I0J5xMZhn8xDK
	 3Zhne9ymnxztsk1U5xkywXUESdRSHEF53rcbKFO1U4Zz9zMZjtTXWDOB5lWgb1tmke
	 AHgwEB6bYQRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F84D58E4B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177242729358.30374.3981777734477741288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736ca32fd03d0904c1857cc58f4b06cbb9192e01964bab3bdd55c10d03064676
Date: Mon, 02 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772427293
