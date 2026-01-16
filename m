Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE60212549
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768577034; cv=none; b=nlaZiuP9rIRzamKwIJ7W3CcLaSpg+ab70rHrTbJEqHukmjsJd4W7mXI44O0AS8AkTROZo6UOuMc1Iz6wdIWTxoqv86eDb5TfPYXpVxlOspIhAv+xHLR8V37I4k2fiTcSgPmR6ysmTBLBAi+1PgEa245UMHiQEraGSN4LHaP3AJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768577034; c=relaxed/simple;
	bh=H3mci0J+2wx+2PBxm0YHXW+Opl4hG7QZmLE1v/zcWnA=;
	h=To:Subject:From:Message-Id:Date; b=AGoiiCApymdhi0FyxOg8moJxDqlLwZxqD2rMnOWdfEuDkCULb8uae8V1nrpZjymFvBVnS7ltTpQ0UhngR7/jAkUI4SbYOORC0NNxJV3yS4xdU+nuVm0yhfN4J2qbBv/2UzxwqeN0NrDnGMiDRT8pFoRF4QrW3OPgqxN6TH6ALJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNJbNHFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNJbNHFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A0C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768577033;
	bh=H3mci0J+2wx+2PBxm0YHXW+Opl4hG7QZmLE1v/zcWnA=;
	h=To:Subject:From:Date:From;
	b=XNJbNHFsKAqVRIFEArjCFJ1ZnsprvJnf9hMP9ii7oNCTbdoiM09iJn/YYDPxiaG2j
	 KajjCyaiebWOTcFgT3JGELu+v5tLRrCg0yh8on05DWKSdgBJ42ShjAPC7gHY7kvboS
	 3u2IpJ8v0vukTxoHaZngazBxr3kWxnmZtkq6JUgChTBfduywgcFmKPwbMgxFCYWxUR
	 r49bkyR2pwfAzmuZnWcV/RE5zxRtq7GAg6d341w5dYSFMBMy52jrlX7nx9JLANpdnY
	 zvzSZ0ouiPDkTPtKJXy77Q6x83nklqkx6Zu0PfdDiYAC6awvEhWo8WRbSnJw7WcXgj
	 KK/Zb/Cye0R+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF4C982C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857703358.31667.14649713142715416543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ee445279cdeaec725ff7c8f0ca9405fcf533ae59c04acf53204c5a07c61e44
Date: Fri, 16 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768577033
