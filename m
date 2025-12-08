Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1953B8D4A
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765158174; cv=none; b=qTn4wioOUGcSyVooZJXlT3Y80lmnejLKNfRnS9oHkk1HZCLcCJn2k6AdD/F4oyV+R597MNbv1APoL9/43QA0lUeRx0uPIf+sAJEBKOxNInCQFJrmEqCRMHxgLKFII7pAcmRqfmg2DD3kwZ91ix86X61hT/45nHsNGdzeXaG4YIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765158174; c=relaxed/simple;
	bh=QmQMg6xFctSiByZzZbXaqRGodoN81iJo8IHu5FD2W5U=;
	h=To:Subject:From:Message-Id:Date; b=sYjWiyVL3iQCOMnxUvcjdcirXZbRYC2pFEgEmmACMzkt40fbsz/N40F7a4RZfl9XIxOjuNxxqrBDuA+CDJ5s9+r1A/rY05eVc/hp3dxMQutlbEaY3LnTDpzdo80Pa1g8xwnbjiCzehlLxuymaDaFrbNcMtMDCU+EqODnSKOQTP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtcenTi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtcenTi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A705AC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765158173;
	bh=QmQMg6xFctSiByZzZbXaqRGodoN81iJo8IHu5FD2W5U=;
	h=To:Subject:From:Date:From;
	b=HtcenTi5Z1IqcU99bQSxRsl7h8MQetyiUFV1H6CtZnn9hoIg3V9FiYFFaF6PSQniw
	 JwxPphHONJWKw8WjDD4r3NVvVhH0GQemqKV1DUXxMEBJqOm6XFQ+ShFx6DWV9foMee
	 6hnKI+sWrLM8VpCGWChqVA+8LuSpalEnc0Q0bUAYduhyMu/6N7PczhoTJkwcTbr3Fc
	 ovmfe6vAQVEVOdDUDa3UCe8F6JAXTD4GqVHVUEzCTOvy0Xu83W4sic9ZdV4zZtGfxj
	 g+7HPWUZrRNXHR09zpN95wJhdr9SNFbJEz6yfQvEykbizCCyY85CT2l2/5/4fW/FV3
	 WyxGvSKza4ftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9385FD1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515817358.32273.18267279005296890513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7de716df4f95128406d37dff623c315142864edee22530b16825feb1ef1c60
Date: Mon, 08 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765158173
