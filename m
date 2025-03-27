Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528E92745C
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743039595; cv=none; b=rOr3RZWS3acu1KS7DViYGLcyjm3i6aeSK6MVs42ZF3Y7Rw7M9FqQHfV9jrD4UfzdH8JxFbNzyeTVaxfq8ILzAbyQtGpQLFqr31nK/LWK7xejAAax5s3DhWB3Yk+I07CZeteI5I1l8A79c7UOt3W63mo7pNct9ZaNWv7/HkbcTfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743039595; c=relaxed/simple;
	bh=Tw7cSEzwH+u9tQhNTcbFIe2oWNC0SAVAeIkSv7zIwxw=;
	h=To:Subject:From:Message-Id:Date; b=K+2LUtGxNRspeIJ4bSrLS8QF2lmP9zrkC2i7+CdT+6TxaQ30TbxcazFukdLdXau2EtVyl2gZ5ARec8jG022wcjjPxOLaANcxsQJdA0U1pTNR6L9rdLVDLlhd6TjQkHwCnh9MPB5UQsmWHsd/q0L819QdffAstoNT5zI6hHV3it0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9Ei02ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9Ei02ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09C0C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743039593;
	bh=Tw7cSEzwH+u9tQhNTcbFIe2oWNC0SAVAeIkSv7zIwxw=;
	h=To:Subject:From:Date:From;
	b=M9Ei02ob7rYERavmWZ333qPx7KRn/fdZKCFU4XLODL4cYnKPclOXOo9nW6TiEPu1i
	 Kh1I+9rtphlGjDa3raKxSzQE25XKB+wFi+GGNPjzI0wqI2us59BK5mLWIrrvl1xRxH
	 SUEA4udF+xvPFV/qfC6wzVdHL35VUylkqynf5qFVRZksG4fP746XL0C2tehYH0fSOV
	 yVQJ24hp2O+rxPH/Q5+a7IUaxJDq+qUHEBjNzMpQr3ZpU+cGU/iKilGEytgFOpwNRF
	 g/ipqDuUjCjXkhZSAWMZhOv+rTl6Wdts/+gaPKrM2EeJKPnuufocLPuRp2JCFL/ibU
	 8zKcYTy7V6XQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A169DC36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303959363.3438.3660677945230531536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6daef3d59e98268e0f13c63d06e9c4feaa73150ccd386264426fed075b3ed275
Date: Thu, 27 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743039593
