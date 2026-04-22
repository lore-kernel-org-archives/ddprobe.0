Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D62320CD9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776890254; cv=none; b=DSMT0wAUvJqvftrO4XsBrWgOzfwbHzutmipSQRR1QFUYwZ8q3XWp7JxdrNXCHawkT8txBIfIeqXvx6mmA+EZ726TTXd1tnYfz+NZCA/aNboNfRKigZ/WAqBiA/IwXaSEOSnmdcQwtXQqre+140aR0eRomRhfHYel8bFseIf1iik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776890254; c=relaxed/simple;
	bh=l11flWGwsu5IMpUsEF2e3hJmaZl4NVPHrAK4z34YYb4=;
	h=To:Subject:From:Message-Id:Date; b=q5JZ32Mhbc2JX4Zztmtrm6/YR8oNHrNyyvXLNNTKcKimMKwZzCjmUFLS3l+zi15rstns9AyP8gJixt0rcaQgp6c+k+BXjdsMSMgebc2FX/w9kgIoAeIEEWlq4DGjlPECDx3tpMVCg4O4Ame8WyEp6CcosYOfUCapC7W7YxFoa2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIVJ2Phx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIVJ2Phx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0B3C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776890253;
	bh=l11flWGwsu5IMpUsEF2e3hJmaZl4NVPHrAK4z34YYb4=;
	h=To:Subject:From:Date:From;
	b=IIVJ2PhxmT+saGG8jIQ+2Qs3Y0qiJh1wYH4Wmpc2d8vV9krOutdq3s1ef1ysd5M3a
	 Pil1ZFvhfWk/mSsFvHsYbWswZApe+6ABjcQ0a5e0/5b2Dc3reXO7ZrAe2TrowLBqYj
	 BYEe5a8lptYLuiQ7d3WOP7DpQ7yS98fa71fhaqW/lIlvRhBufBJFrIU5ONSUp9jbCB
	 hQeRDcpdlIJbKJPaKgcf8fI8DbZK3TztQ9sqPYAYVEGFUUztD+bYDEOF+FjE6GtApQ
	 PxgkWWsyyCIxM3cC9YsneLEeyjZdF2I2TG+sNNnLgCGtE5hOfdnrqv4/o8d3RSI6KI
	 srOBxiePFq/fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD577FA1FEC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689025368.28475.18402390319034359395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364681f7fe39656b8e41da4ea6a3fd8bf0763ebf2247bca1a7f8471c8a6f71cb
Date: Wed, 22 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776890253
