Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA0C149011
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731299154; cv=none; b=OGmXT+tDt9QJ7uGwoDHLWQggdfPHgJPJQvbtmSRb/HHo6xWDKqLA+cFigTXcdz6fzx7ssI9cExhbvEzdUIpVABTxHmyVB9/5/5/zDyKciZjt9oH+sl/fso8csZtJwXHlpwpwru1+dkR67+HZz1tFwyoB9S8FL77AyuFmRYbg7Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731299154; c=relaxed/simple;
	bh=ui7wO3+iiNy+6/aUeBwojkq4l2Wab52r2BNUPIHAk+Q=;
	h=To:Subject:From:Message-Id:Date; b=BtxoNk1Qa6c3Tuw+YCgAblsBkSLEkp51ES5k1K+zqAShHL0fUn/xNlVdasDhweiW+ecYBSdkDNpEK2RdRZETLSNxY5Ghb9AUUy9PDiEhlIj/5Zm4beALttxZsrJhmggLa/AFLETNqDjEumWjGt5hDkoM6mlzq1AHCI7GP6FSsaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsuQLLRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsuQLLRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5F2C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731299153;
	bh=ui7wO3+iiNy+6/aUeBwojkq4l2Wab52r2BNUPIHAk+Q=;
	h=To:Subject:From:Date:From;
	b=FsuQLLRboq+9h68Gef3AaNGN5A2/Jz2UaDJRH0HwHLM3ypjNQ4abf+AWx2+3FdqT0
	 MNfjA7JP5FOJtQShATlwOCKUsf9E8z4h2QA2KeSH3sJckI/vBbPtGPPp6vsbRHYPTD
	 w3xDYwI1vxm3nZ0J8w9o75BfnatgoHSolwpZjslcJU5r7HBKxf/OCtE32WIrEJhwTU
	 id2bAFB1ZJtEYxQxkzT3FBz1XGlspzMtQyDKRhypX/OyrPQywKq0izTlXr6Pl5m1mR
	 F90V2gnKY9GQTRgubQlg7kg1a2Hu1Zr0Fh0WjB3wENUOq+/0WSaRxqi+Pbhkh5UWnb
	 eBEH0wgVI04OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC2ED12D6E
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173129915362.23925.9346421535038194635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748f9bc5e875bf79fc6707cde56e18bae74bec2ae78d926e06bec60526218c39
Date: Mon, 11 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731299153
