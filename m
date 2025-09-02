Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6672E4241
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756811395; cv=none; b=kezkMDwyFR6tz0DBuGrYS8kyNgppwpZ6XRYLtUkBY7/CxareECI912CTu+tr100Vle4VYkhzAL7VDkuXXlzV1cs1qxeTzZsqnz9EQUzwMNYYUDjM/OUrID2faL4kbvzMMyDs6iWR5I55c2Vvr+/yeFxK460qSxCqf4G7ZeHJcM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756811395; c=relaxed/simple;
	bh=pVexpUIQwjxnoCffaRv7YbfuQDoYHz4mqHcu+eZYFHQ=;
	h=To:Subject:From:Message-Id:Date; b=hs4aDjVBZZBMOJ2wUdyZejdidPLTUdvQ8oFL4LjSYnF8v95NbhKuNj2XWCnCmaKewsr5Cej45gThQ0DnhkCeCDW8H08zLBrEi2+rfB1JNSnt/6iR8lUtj+M1LpirfCKHcL+7JxKo8t3AO9hCHyAG/Fzb9+y/7FCCbQr64KTX0HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKBPQMkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKBPQMkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F094C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756811393;
	bh=pVexpUIQwjxnoCffaRv7YbfuQDoYHz4mqHcu+eZYFHQ=;
	h=To:Subject:From:Date:From;
	b=JKBPQMkMV2nrKnaN6LVWPsmPkaKHUlqnAQm9ot3lfx0EVf3wlNneUQ8EJ2cUxLTeO
	 yGAURBoTsmEUsbiNTFVYa3qE2rdLAdu1Ok6kUNRhnF3qXaB5UMNIOC0cw4v2X39dSe
	 CxqMONUtiQpzrlfuO4xmsbOGNU3emhGfoy7SP5M2t2w8Oaq5aBn6DpHCLbTwki7r5v
	 r1FN3hlRxnBVie5ufzMwC6BtsEXS1u0aiRSgze8f8rOwDm+BunFkeoRHoLOqQF7IrB
	 iNQCgu2/YXiURRSOeGhLk9hMUn7HqKAe9oNiB9t2ceVFBV06ubJXF4iP6ghjKi/MhI
	 xSVmxwDyOiJ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA47CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681139357.13120.6891673025429967066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa262bb3aafc1854559433b76a6ab171cbd4a5a0218e37e197dc7d21289cf7a
Date: Tue, 02 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756811393
