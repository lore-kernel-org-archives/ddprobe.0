Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515B18C90D
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729928154; cv=none; b=VG5yXfokKjj8h1e17VpVzeynfISgkv6nDT/sgH2JWypxh02Yggb/sB7gHpHybP/hkCGBDP3Phib5W3Coj5EnTAJDFigipxiymt0e719rST/8U4ybSXWH7GuiUXQUg9o0mxXIIMM7zEgHLXEG4IPAg6aicmT4UsE5P/0lcHaAiwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729928154; c=relaxed/simple;
	bh=7PatMlqwAyLLmdr6X/0waH13ZqRPFvQ+Pxe3+Eu6yC0=;
	h=To:Subject:From:Message-Id:Date; b=Der/LDQ2/BGObBBox1CKtc5FkPgplZroYQvMoBbFLSFgOOQvybA96/ufbFY+KGAsjc6M0HiSiidnhvVhR2JVFJmWJrIO3y5xUzBYQcozBnsrVk4OXKFxyfkcaLkXHQmUXk0lvAt5O5VwFE6acrqiaPYeWs+5ZJ7u33G6+3V51Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sydQqGMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sydQqGMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4DC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729928153;
	bh=7PatMlqwAyLLmdr6X/0waH13ZqRPFvQ+Pxe3+Eu6yC0=;
	h=To:Subject:From:Date:From;
	b=sydQqGMMHWsZlSg5K9h8dVD7svsqyR48N9oVaKps2xDuy6kv2rs1IefTR+i1dzvfx
	 VygHgT/5TGJ+ucrmSZzyaCZJPtT0QcFolAsSX2onGGytXQ8Xok+6d+/+PnXRRAxAw9
	 SrLA2hnVGXH+1fuZngmHNELOOUEaxuavPwB++DJ6ql2mu3zRVKRiMWyiEKB2yP2hHj
	 LLLTb+84QS5y3oDpz8/gc5nqW5FlTFZ/IZTF3P9VBXg1x4+RynXLnZhfkfX+Su97+J
	 1b46fECthzvfd51kFMsHy7kz+ckQabceP7OzRc0HXy9v7Ruz26xTdBM713225HjXet
	 bZg9dgj5MA7bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB1D10BE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172992815358.30358.10121060937643644818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26eefe9b0932a404299ecf68007e8dff01410256fef1f7ca1bf8a3905cd5d4f0
Date: Sat, 26 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729928153
