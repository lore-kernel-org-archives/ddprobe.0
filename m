Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEAE2BDC0A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767730434; cv=none; b=hvA+Tk+JZGqN6bYQ5kdZQhLDPlQLAf8tlK7pmThKB3Q6WBG+VkWBiV05rvmja0uaXO3IHjDTMrrUwTWfRba6M3Zbc63K6q2BDcEQq2ryG5fiLmqFA5YkNBSKT5gHuxbdYN8jjTCvkC+DBHCuy4Qhgjb0Mq0FTVaRK81AVdUpwuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767730434; c=relaxed/simple;
	bh=AVSVcLQYjKTmeZcc5PumcrfYv1kH7bGE85i4rP9cs2c=;
	h=To:Subject:From:Message-Id:Date; b=Rb8NxTOA5ye/1rnjLx27UaOQlz6CA1AiBW4pr1f9BrX+oS5CRcr0fKglk3uF3IftoBgkSK9VNlBeZGXK78FEcfn2pWePucurFmqYy5njjl2RedQe+hCTvL1sE50xXKunQBF8lpffSI9ilwSRSuOozHqAIQ+hx03tDI3z7sZD9PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtu/115b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtu/115b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BCC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767730433;
	bh=AVSVcLQYjKTmeZcc5PumcrfYv1kH7bGE85i4rP9cs2c=;
	h=To:Subject:From:Date:From;
	b=mtu/115bWHgfFTpa7S38DoMAaLe6RQJbCv8y9kJA9exjpWVlzbVx+aj2+uzUPaeKR
	 ioBFJAOQzz9LTchBCDbKJJ0Ntu8+7azdkxN1aN2gXQ1LM4UqcWytssmLcy8MWDS0wI
	 bLNRdq2wDfcXkdYvWa/NVa2EGGiJdY+1cmSSNB8eXFzkSgEOUDt5iUGScINzhatzrV
	 UxO9NuTOBL2PsIeQvpisivhRt/cBKcUuXiTUdKvs2HFIJWrNfwmOX2gZLUx29bWoeS
	 38UeqecfFDxZe0YRttrzvPqR829cmhHN9HlKffgM0BlWitbSU/7hdlndmkofJL/E0L
	 tTai8pDTupj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A9CEFD04
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773043358.5374.16723099372758419537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d2b70ca9eb556c23548f7af29543950e902ee88895cd527a6de5a15f4ef4ed4
Date: Tue, 06 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767730433
