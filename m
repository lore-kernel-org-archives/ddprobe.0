Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631F02DCBF8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788756034; cv=none; b=FjELL/B/j6z5j+yJ1yJ1p2u0DnRIexn9pTegmbnMZ95OmEoeXiML8hmmrBNAu5tTupbNwG1Y2vs3UjAg8VWby42TkqftBoNOXyixul4L/BunsRyRV8nEnVSRIb6rLtDLTklEydS+JKu3EkhbQIyYMLCqVYqlbxib3SPjJc8acdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788756034; c=relaxed/simple;
	bh=nnJVQHuxvK53QQGN3cbK6rGReFDUPVVvenAfcIpDErY=;
	h=To:Subject:From:Message-Id:Date; b=ObcWG6KINThZ3hSWJOsIDWqAh92KvenUB/7kWW5XV0xW7tRnykZoM/1bvWb/TpoPpqI/PUw50jWFfxgZ3XBzMY8XniSi5zITiCcw/qkqYJXdkFxhNuo9vTeUUaguEEIRFWd0dG+hy/N9xfbFO/EFPcl9kHRZK9U8RBqCHy8WjxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frxL+PTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frxL+PTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E75C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788756033;
	bh=nnJVQHuxvK53QQGN3cbK6rGReFDUPVVvenAfcIpDErY=;
	h=To:Subject:From:Date:From;
	b=frxL+PTc4eEIbnuptSjaRsjn86fCYzCGlNPvuqpewEg+MfV0F2YutG8cPd5aDphRS
	 PdkG/HYXR9HQXb+cppLygUIqisZJVXatCgMCipfxy8SlGtgTeF7H6AmxFik8JH1qQh
	 sy2dCxL6YDZp7r6CSpYCwu8vjhTqoeuGRt8cMzJTGYnTQoFieegvi65tr/qEE/lCx4
	 o9UoNuRIgVcnru7l6zKM1izY9/YpxgOy1JJ2X/jq2tDcBjRAQpqqZJteEP5H8VzF4s
	 PKPGDHBsw4qauhKJNk96E4B+jsTqJPt8g8586xVzhwodUJrCCisedEDrCL4uE3Kvq5
	 Hm5E+0+eJ6vcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47ACC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875603372.31718.45831007597737448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e7628c50f3acdf8ee05d8724d51e882f2407625c3a60194a5b314c6034e619
Date: Mon, 07 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788756033
