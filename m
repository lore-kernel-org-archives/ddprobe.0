Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3D23B19D1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784595514; cv=none; b=RTcxNvk3qEo5nwG+Z69/cDpATArJCAygJR5I1QfxpdwCJoIoYWt2/U5CJ1J+FbtaZbtouKJtDayRDyVmGk2Gn0pmw1or0zC7/hi1HcgkSzX0A9NpLayUDYglO2NQoAjDGhfYIpF1k2da3kTsxP0THTP1bwTvMKEGpAG52wDHOMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784595514; c=relaxed/simple;
	bh=ZGQMYv7A6uT6bI9y7g0LjQRq0lfF5KFZvYL2rHRTXqs=;
	h=To:Subject:From:Message-Id:Date; b=RRQYSfulgZSb/oJm6flcOJN0sMUzmbBKrWHgySy7Hdj3aqQZrmLotJ4kMI82+mjClTYgEtMDDZdrLWtRv99+ZuWyVBclQWyAqU/IwbaEFA0KMuIsJHddjBya8fCf9lr6JJoswQ2XeOiaxjjHjkSTTXsnlNqvdQwL+Y/OESxaerk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2fHXwF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2fHXwF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C00C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784595513;
	bh=ZGQMYv7A6uT6bI9y7g0LjQRq0lfF5KFZvYL2rHRTXqs=;
	h=To:Subject:From:Date:From;
	b=P2fHXwF0nqYJuwdIfYSdXhN8jTWrDfQtHLOBsszhcm5z2ZEpgIolNVw6QsFLVByJL
	 WSmowr/qcMMIPyv3ZGC+PyBJhLpgocodKH/0zAgjT8ghN1A+h5p/OUogQ0uAwz0OXG
	 iW3vRSK5t8RixiE294NHIEaxuAkCCbtM1YUAn4LBF7E4OzsnOA1mwHCESTOyS0nGke
	 p3TD6X5Pg3sps1IrxBRTmqBmvHDpLbHTHkCrrTqK30081kAjo0LOYsE0Nq/QFKlRjR
	 hkATKC4Go8w91669c/hRlKxqxCTyCpw04VueWDF0owKVnDnQMcaR7QF8p7cHjkss+W
	 ucrCZbsW/+7vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38C2C44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459551372.1973.8759409617159306158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5fa5d8f6143917d70b74f15e291389982f2b73869133ae38d8dee2deae0a63
Date: Tue, 21 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784595513
