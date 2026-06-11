Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432083DEAEC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781176594; cv=none; b=eKep2Ogl/7JUC+HmWh9GNUXD1Omnp7F74laUkOdhNcdkUWLQ8UdReAnatggjkWSVcFyaF46rCrB0E9KiOFpQrt2c6gHXLuuUmZPxhHYvFKOQBVLMvF2p2WspNfNrDnmvEGoQPo+CBHdQ7K6HkRUzQTGa01v2s1t2F+UvJEZFHFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781176594; c=relaxed/simple;
	bh=E+big98lnkb0ySWOfRanNb5xCwwu7IyyrO4AQx3l/G8=;
	h=To:Subject:From:Message-Id:Date; b=GyOHjKqAL+zxhmEVzovCLn8LDysf0hvT2ZukdzXL6+Mvf9gnsfwaC6+kmC+5yyyRLNHfmjBS1qCVWBV424SUGtcDEoffxi1VWSjoUaNzV5HL1xt7G3OMJL2PmbidTvQllGkyjBji3aR+j6Q+4n4oFu9tvzjpHGp2YzqaGr46lXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VG7p4aVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VG7p4aVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC218C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781176593;
	bh=E+big98lnkb0ySWOfRanNb5xCwwu7IyyrO4AQx3l/G8=;
	h=To:Subject:From:Date:From;
	b=VG7p4aVKdzsaLM0WAZ49MpPivuhx0rf4b1XLhZM72UeCsKB70ClfwPamvv/8z2WcX
	 TL2N9KrzHeE0dPaOIT3nmR7gmR6Dyup6WkQA+ogAFLTbfbxSxVNW4+W4yC6iguADEB
	 pUmWKiCN24yS1Xsw6B3hhB+2SGEpCYk8fsZXD50UvhwdPb4dLl8UrI4X53Ij20foVX
	 qu662mFQqFWNB8y5rPueDu0WxdGkMF0ktfzunLhphGgSuJdA9ZXKJj74ojV6idIpFT
	 c+O81TOkyI0Y7ShdewnILR5aUDYK8wp3UCKEheuye8j43WIJlB9ZaFACn7MIyQpBk7
	 WM9OgjnnmsS5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E1ECD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117659368.13556.11132186420765659010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3441d7b5f25bd5dbcb50e5a6d86fdab8e8920fe171a2786d62ec0129e3301e6
Date: Thu, 11 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781176593
