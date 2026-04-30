Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD0D3A6B9A
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777543654; cv=none; b=JQms0wUKkG7nqgAm6Y0hdZKC/SezxIZd5HnV25Kot7p/kupDamNhDiO1OwlenIW69baS++G+NDlCcUiBqF1fTcW+Uuz7P9Cen7BIGoAStbhh9fLpYlbCH+IV4pwHoCBY4wkZK7S7LQgAijWTwJmge/QnxQ5/jWh+oBegTNYECzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777543654; c=relaxed/simple;
	bh=x+GuyjigqcQ26diLLbXjxROxVVAJcRIMQw556KsR7UM=;
	h=To:Subject:From:Message-Id:Date; b=UygyQ0yYavNDeHl4Ffz9LXUXZaGf5cVnrjKXovK2BCOMikrUcykpSiuVKQ2xVQLRxcOgcY1v3eVTNj8V4rKrqb9AuWu8vw6JgPssIa0aS+Bb6AFM+POM2IVw4f2BfSxvhWlF8bXIjJMMcjOKRlxofUQak/1vh3m8wP4Q4+R6Iqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUVC8P1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUVC8P1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10CBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777543653;
	bh=x+GuyjigqcQ26diLLbXjxROxVVAJcRIMQw556KsR7UM=;
	h=To:Subject:From:Date:From;
	b=sUVC8P1Wt1+DCRG0SaOyBPuwoBoCWaA7+X5sZ8pkolYO4H39ZQaxw/LFhSZ5/VCfY
	 VhlGYiuSF8oUdrox8cxDyAJsnqZTve1DkVOurgYNe2hYPcJLtaEQFH08L4c4jVxYSb
	 d7Gg30+kBPjmHeyeTsI23RJsjkhvAdH0nssFnPsRg6GmMGdurtt9aovxvHZXNpr4ST
	 DFRRTkfX3YQNe0ryeKZp9tjaFBx7gjJ3x7HhzIvDRyWIXD5WbWqW9UZ3Mr2wz2Xa4x
	 gX4BRSrotATalhCqvLZV+Fra/q0+o5e+qvBzZp30bklisjfojF9o5lnSHMrHQsjobQ
	 3pRgLK2gvN4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDF7FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754365368.12176.9407745261169908568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa90c86e24e3975d80620372c063025df3ea8922b9403a08b2718164c790eb54
Date: Thu, 30 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777543653
