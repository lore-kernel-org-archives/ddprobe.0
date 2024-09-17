Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AF117BA4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726582554; cv=none; b=vCJ4x1/2ZFC8t3TSUIH3XEI9Vof1Dz8gvLt46lbxNrRAsQejTdA1eMFhYYRimZgTvajuTPQpIXO+Te2V0HNY+Q08YlEToFs0u3gfbMtB4vopIprFz/mCkPiNC7G4vP98x0MX7P18A1iOwWF4fmgeWDBkdAA8Iv8nokafbvjIvyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726582554; c=relaxed/simple;
	bh=wCZj/F0cKX2bvbQGjcDtcZPmDwdW1PTGRvCipjlmGp0=;
	h=To:Subject:From:Message-Id:Date; b=fvYk0oUPbRLikhJa6Rc4a+5fiqTPY65QT5+6GNfPHg+Ctdq0nHdNqjSxbl3kmPkxaMHAwDnXCXnW4PIcNNR3VHiuCSzUBixJ8JqJ1TAM/Gu/FFT57v5nvdXm8m26DtdvB2U7UXPI1tCf4ylyjoiYcWy/mCWKoHWNVWzIytGR3SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyGPMW4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyGPMW4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9901C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726582553;
	bh=wCZj/F0cKX2bvbQGjcDtcZPmDwdW1PTGRvCipjlmGp0=;
	h=To:Subject:From:Date:From;
	b=kyGPMW4S0TYwO4XY+ny1RDfJwoh9UK4/iKZxU3dPZT0bpHdk1FaV56qnGW+U1j1rX
	 f139jIibiYbZybg1RkqtDZ608jdljWeZTbAvRMOKKL+6GpoD+Xo++fZLZ3unntL7td
	 uExaLnb800KDeT27T5RCkw38H938Kzg7CpIX+aJn7ktGm1zwcjqLSPUny9dE1qTndG
	 crUvsZTRNOpXmHfWWG9MwDsM4c2B6wlxsKRER1wWJS5daToDmmuJBoPnJb8ePaqhVv
	 3V9clAL4mrny+0sQGiULRg36AdLaIC5V7tbIg4iqsNy7BfDssmoeqLy5R0daS6dxo8
	 /clZ18tfTckCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFCC3601E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172658255360.17915.6012123497256003477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8f605411af7c63cf97f298b65cf5819eb20b4ffed2201368aea5b0b41eeb83
Date: Tue, 17 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726582553
