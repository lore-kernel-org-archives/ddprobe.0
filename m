Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34372F0693
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755031193; cv=none; b=X2AcnlplnwPtiYPaeFQJPSntWSN1k75M+K1+M6o43EbyY2Y8pHQ/CuDIeOvE/fVyYm3mFqQin6re10llgWgcAoOMa0llvne6+yW747Mhtuc324pRNjNyF+azTuogw442fBna9TN90JM1Q8f3MmXEJ9ZDGhcj2KFKJmRcQFYFmkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755031193; c=relaxed/simple;
	bh=S7z2UOQT+wvOp29SSSoFzv3PkbwwT/F0OYi8oP3kWlA=;
	h=To:Subject:From:Message-Id:Date; b=i+eh7mwwggzamTuek39lfsw5+0TvT1Ql9JQaLsMfyCrO9LiYpMHlCTXFL7Fvy+bN38Vgx/stHpbuX5OYKiuHho04DvgN6X312a9XJDxkBRv0WB+5MQqlmsBmdIoD0MyxlPZP50Vz/fk5wpaot77kS/5ndQKlKp4FMtdifP2sWeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+VZBNZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+VZBNZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E76C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755031193;
	bh=S7z2UOQT+wvOp29SSSoFzv3PkbwwT/F0OYi8oP3kWlA=;
	h=To:Subject:From:Date:From;
	b=e+VZBNZh8MDkewz2fHxczdepzDScMpwDoJIOOudAbio8r0VmL2aAkzW+X5Af7QYz+
	 8ObXszVHkwIHtNXirGDNylivOqpwSU2zLGyVxGWAHX6JY1F5ZAqaWKuz4KR03LPxZv
	 jePugH/wJS+X/rMdbnRaArPCusGr5IEvlw98C07jhrb9JJlWxrJ7h6jElDZAdqpVVI
	 oLcxENVDqyhQ4jUhO+1G4z+N70+MASGFBJ4dzvBPZOZ7CW3hChmYqOD2by8paDWKWS
	 p9N9hdZKO8zTJz99uKD/RD6C1AKtI8RIrAbcSjVGbO2IcEUXCYG6rvRVPK8lmE6V1L
	 2nkrbeOoDCt7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D04CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503119358.12645.13740398652881753552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2f37e50825bee186efb1c1c9bc139369f1725166494be3c7ca36b8cb7765be
Date: Tue, 12 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755031193
