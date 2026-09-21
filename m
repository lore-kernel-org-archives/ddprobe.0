Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610A12C15A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789984834; cv=none; b=mhhygl8aZ4rduyqCEhd2R5AEBbilzHJ99pUvG1X6z0L07mDyElQ53SvCq/S8FK80tRGucHH95BBtoOmVVXepzZgu13amOIU4f01i399s5+yu+CFIL3A8uCboumeYlFx490AE0GspKBKnJWY0FUnh4m3f0DBsroMjihfGHsK2rmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789984834; c=relaxed/simple;
	bh=tlXoSl1ZiMPgpqUmXovYLmPgXoRrgqRZnnVkfpIXq7A=;
	h=To:Subject:From:Message-Id:Date; b=I7Jp1jgvTzXmNXhiID+dwhTFuxY1wPv77VGVU/4Yz//tcPUmm162u5V2MFB20qcv98LyUdQPqDuO+gIIORP7y2sRfrrm6arBzj2v3PCLJnDg42ENIDQHV5hTel5C5R7YmXA6EYONB0FTpPPRDCWAasIofv17l7saLlHn78MEQS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkJ4jPKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkJ4jPKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8745C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789984833;
	bh=tlXoSl1ZiMPgpqUmXovYLmPgXoRrgqRZnnVkfpIXq7A=;
	h=To:Subject:From:Date:From;
	b=VkJ4jPKhQWQd/P+1iCZnwuV3ATdVJcnXkvlK2CI3NoI5B8Yhaertbao9Meh3s/fZT
	 0/MGVCQrQA4Omc6a6PdmFZZlJ7oHpse2lo3rN0iNsTJhDty5da/Mxjxd06lPIxl/Nm
	 FKjgPQ+D6lFkduqq7248aJ6ibE7rlOt5vNwsI35Ax0SOuX6Be1wePHhEXEe8jA8Gov
	 jDfcLVCG5g2yS23iUC+VIY6SLvcDp5PCI6x649Y2TG4FxhaDNXWXwSsyF8+3b1Yf2N
	 SYFikIEYw8VBFrP3xXkXtiyFEnYJfWOf3meTxgd6TzvWd5Ww6rIpjRdSehnqA7hZs/
	 cQvh8eSl6uFdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EB4C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998483372.19802.10083337729256174120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabf902be5eb7cd5b107f1d1ad4e9eda3e2338343390ba8485e636ab926db4af
Date: Mon, 21 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789984833
