Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAEA1E7660
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771575294; cv=none; b=Xx7GagidIb1vS7eAd2KEBeJC3nxHFZ0J4sxnoUt6BV0EdVs6fL4Xfc8sdmzV2RD0z0AipHzRk683rHj1uoHlDfhQUNFnJKJSsjHd3Y0YvL97ZORaq349rYnOiP+q5uUlZDK1lXZQvf8kUzXLCBDRI/P/HI9omdMHhm5vANW1+/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771575294; c=relaxed/simple;
	bh=4niKEPKVnHsunZwXX0jS+oyh5WFYomPG60ViWPcSgLo=;
	h=To:Subject:From:Message-Id:Date; b=h+QkXFLJWbOGT8+QbK4h8I2vEd3sQx98zYT/oB/R2FXt5CtFs7xST35CS21Y0OoiM6t80GcmvGFUETaokSkLYzDxxe7eZ+MS8qO2xVoT4tSzmlVx8bvVDwCIh5uwJtkMWays3VRNaHjP6YC1odqmbKI34hAKajGZjkCmOCvrxG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp+cQBAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp+cQBAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5874C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771575293;
	bh=4niKEPKVnHsunZwXX0jS+oyh5WFYomPG60ViWPcSgLo=;
	h=To:Subject:From:Date:From;
	b=Vp+cQBAgDIMHSz2v4h6gC7s9bAjQjCRocQ/W16xGJ7jnSq6nKWH3PJDKfVTmg1Fzc
	 2UVCsq4SPhJcwuUuOD7yPcU0CKXfrJ6t5ykiXmOmfx014Vd6gN6SqXmOnUokl5KFwn
	 56ITKOQis9DWtLT2Zv4JfJY9vfe28jhKYRgTTMLY5FVqzICb8lo4QDEYPvaRtbfOCg
	 QBLOJJ80Ye9CLW3I7v04/+xWiCdt0KCtBwaUGDqOcIGJqZCqijk4vJyIlHWouJbcZn
	 i6hTRKxKZmMaUQxqijCscUFFdO4R0RAQwipq0/2LJJSgmbj2f1Y0MI84ToaTn9C5RS
	 KUK6kcntAydAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92727C54FCC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157529359.662.4796773086143921785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc14dc34f79e2e0b2809406fe707db2c479379fc36cdc8be03d2918bd09b7b1
Date: Fri, 20 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771575293
