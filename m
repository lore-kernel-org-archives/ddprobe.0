Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3611922576E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780884874; cv=none; b=kseWK33JpbkrAH9pEXdPEHUjttw3mo7m7yDqfrrLN2rbbqXTSR5hXy2K6Ll1jxulb91hb7MNL7Qsz6sLytWgOgfysgY9a7Cb8hiF5hhUp7bVHBd+qoVmT6bZKnvnD6Gu0S4BfTsNr5rL37jNahJq6U+XtAB3X/+FIpSZ4IeX7l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780884874; c=relaxed/simple;
	bh=gamycmzfKvtwPyss3rbXjxLHYG3DEy9/y93/DGxBX2E=;
	h=To:Subject:From:Message-Id:Date; b=aNnRCjU5NYtmGYFMLbDpWP82Et6n/52dvWsVItJGzashBVAhTo1xwi4dMoWEadIoFQillOkEi17toJCb1vIHnYGu13ZKnHLGOGoGJTUEEj82ekgzNWBGx9EGNUCAPYNohiRnyF/JrGpsgf6WgLAQhW0sMbm5Ub7/gi60qt+H4Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLenkITM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLenkITM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C900DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780884873;
	bh=gamycmzfKvtwPyss3rbXjxLHYG3DEy9/y93/DGxBX2E=;
	h=To:Subject:From:Date:From;
	b=vLenkITMuEM2tPZDuWAOzTCuQjrfPrfA1O89lxQUEMhMZvpZNvE7R0BG2dZXC8U3D
	 EGru2BlGSb3WKh7s/Zjpe/qOLT+0VqQc3phQtgVMmzdzj4pXMcnlj7CBRZ3ILE0IgG
	 0qQnIlZUcnOrnrxNFr8piE8w8a1xVZ+AJGqKh7EaCLoUcK7HaKgy78uQTzlzp5DFon
	 /FmZ71qk5VHcJfD9pMHIwbWgwDUtxtiNuwSe+yqH5ZcixHevxZ8nCGn8BOInBN0s3G
	 WWBr2Fb61RNt6cKG7Nt5BXU0Xn/zmOA3B53zlAF13L3HEqsuusqyjVN9/XqQHFM1di
	 +S4aGiWGcHVAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01CCCD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088487368.6078.9353874013348092798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39121bd1eaf7653bfdc0b765a3f3046dada2e32895619619212380de7378949b
Date: Mon, 08 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780884873
