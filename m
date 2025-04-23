Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD1228EA4A
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745433594; cv=none; b=N8n8BAymJALssjrLocZUQ4fIcOf5nH7XeAWgfJT/O/QWLemHwWM+byY6H+9Q4PyXXnGtfGIYzzEUfEAQQjhUo2mY1PvWXnZ+BzRpgTFe3kJtPH0R1CDWN/IfiXx4A6R5IzYNeX9ORvXatCILuTbtH+tt/4uj7PCb11rJi/u5Tmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745433594; c=relaxed/simple;
	bh=uUrpOEeKSRCs7kgUGUnAS3ryORdJ8TO75m5QKw/sI2M=;
	h=To:Subject:From:Message-Id:Date; b=UxCcdS4qfQLGaRPNkyl5+c5jEGfpcUjqcVuOCM63B5Mf+2FATbZrUjXVggQvsYJs9zomdtOqT1qSCpidIH7A/kQBF645EiygY+Wa5Zq8UdxlHRUVtPtSEluDG6KQE2i1v/hmRU16gnF/tER03j8hJeof0ApFr/P2HkgxfQCNyes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hrmnm9gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hrmnm9gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE1BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745433593;
	bh=uUrpOEeKSRCs7kgUGUnAS3ryORdJ8TO75m5QKw/sI2M=;
	h=To:Subject:From:Date:From;
	b=Hrmnm9gtU2740J2ZmAKi8mLSQRqQkenIf6Q1d/muZahDtIRj8scDcdk9NRt3bo+wY
	 BJBYsGcZpt9pk3jlQzBJGBcJbkJE1FnR86aBlfnpThRojAy1vaVFlb3vtQm2AauRWf
	 IxrBa/ef1JwS4K6/DkQD2LV+8djRz8v4RSwv1iETJzCClbvug+oT9Lg9R4x3QR8uUf
	 AjfJxBepkFm+5K4AdoeVWQ335x2tbTnzlwnfi07llfa1nRtkyWTwX6k+dkQovTTh5d
	 igDIGC4Vvl7DDgTiGf8xQ28tAan6IVStHvbZBcMM0wzsAlMUVMaF2a0w6VKsWN0A7s
	 hWAE4pA7tiPDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36DC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543359357.9489.12174041454145315914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e6a75bc7b739e516479bf1740d8e692d6f91a3147b03701cdf53eb057d81af
Date: Wed, 23 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745433593
