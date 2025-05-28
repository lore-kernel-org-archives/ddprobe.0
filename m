Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354431FFC59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748429994; cv=none; b=dkCmjJWs/XvmsxesnYZUD9wDgDpjA3taWXiRZbc0fTRxNhrSg3B3wEr4i4s+tCN/sGNwIKePnAUKSlB+diqkcu+at4MqWUO85tWFtHA0zCBjmAQep6JsDZ8nTSNGpn/wvFc4afo3m1oMmCp080FfmRGp2uPAJQznN3eXj1RgUe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748429994; c=relaxed/simple;
	bh=zv/YULZMOrLMRM9kIf7HFnPAUbabk6ekozU4Dgy7wNQ=;
	h=To:Subject:From:Message-Id:Date; b=KZWbHbSCD6f0EiwXDDNKtVA2L81yIMvBoCg67UbqH1WzZN5Cp44YWtPBeuhPICQu0c/H2jLeVGi9iQm5EibTSVnTNXcH/Y3VF7JUF/EKgwkJRCSvK77vO1nJNnp/h/o7WWWKrmfK5JMRM3BZTsfZvWjRVvanUMzDuxqnWCanwRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXl+NJew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXl+NJew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F122C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748429993;
	bh=zv/YULZMOrLMRM9kIf7HFnPAUbabk6ekozU4Dgy7wNQ=;
	h=To:Subject:From:Date:From;
	b=kXl+NJewrpO1QCQ57gkbRaufsh/tiYVRTFWNFrkGwHwo8gnwvVs145LBR4yPWREEV
	 8lok5g8cUrTXSP8TZGxpXpQhfODuKpPiBXNsdRZEn5OcOR0L/nPJlE8a5S140eIsYd
	 nhltK/C8P+whU6NzTls4Fk/TX01W8gsz29sPmv8A2HMfS8AIbNGiYFz4C45+v9QbbZ
	 4TZjdiRJ0cciC+HqRZiXzUVvoSH1Y5m7T/c0TxkGi5WZvgy/frHxLqArZ2fEPcm69O
	 3fAlYKTKVVbILNBXL/2EKTZ8jRnZiCzJ+uMa/xg39Gj9IRa8G5HPcoCgMP/iyCB7vA
	 nm69W0UJDba3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F257C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842999357.16104.6900501552628506818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046fb05655adc04f19f065faae40938658e7f9965fcd8ab0213819181ccd9298
Date: Wed, 28 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748429993
