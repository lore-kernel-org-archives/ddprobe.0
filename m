Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AF5171C2
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722799554; cv=none; b=KtU535/8BICjlYCM84APvAd0ozYMmhv7q0XrpleE7+NKpYUGR1CbAyqabyHLhzN0bVu04tImQaN4P0P9dKlA7J2TiCE8j8cJi6eDWoTJJfpLmyl4lj3TFjS8Xbfzdgwvvz5sWPNg8bjLeLMQkncL+6wMirmqLEQ3yfxlzT8umvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722799554; c=relaxed/simple;
	bh=DBonAnD7vjFHabqKDncbIUld09Wgrj1wVja0gOGtb9g=;
	h=To:Subject:From:Message-Id:Date; b=hEVC6nCoJVxsyJSCQgP3Ywf/84v6cyv9k9xSH2RmS4xemMyLAKKuGbn0wxvcXgUfhOHDrlOwq31fbv6edgbwPGjQQFMMTVLt3dpNnuCJpnmvcbmlSrSX8ePHPBvW7MybMoJljJZTSe2iyilfDlO7XZcs3RanO/XWYQjIAIrp4sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9LTCzy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9LTCzy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CE9C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722799553;
	bh=DBonAnD7vjFHabqKDncbIUld09Wgrj1wVja0gOGtb9g=;
	h=To:Subject:From:Date:From;
	b=N9LTCzy3F+GWFELKFt40uQsgRTxrbtVWG90VgenAEIPG0l8KrfwBjTfEOjvli6FWQ
	 AGp2r3tz6E3BgYtBGmce7H+ExwE9l80M/MvBnUTa4VX10jfaErhQMkR4DmnFnWE/8v
	 cyVZklygZ/ij4p/KcFghbqXlCtq6+ebSl+hazyqv3+EH+111fqHVZUPvbLM+8+2Iuv
	 mEg1buKLqax5QTLtusBPOCPVh67fr3XIhG6/dCltvWqLDOeG/KdnzYOy9Inin4IB3u
	 idEczx3xaIR7x/nWPSQd8MAidjPcaxa6/zK64hPIYML0wp3YCQ3yOmJSQRb7E0NRCy
	 VaLMM67o2t9HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA6CC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172279955362.9549.5318012851854073766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328ac689f11fddbafc10f57ae42e1421328c165dcec3fc7c46e4e1bcb20a41c0
Date: Sun, 04 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722799553
