Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590DE3254A0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785301234; cv=none; b=MWDHai5orW7mqXbucolRzlL0sc8y14UKRQ+LYtR2ybx4IR7V/nUcClH8omrnfHRbgAZa62XH54Gb5r68tzbraqy9dOWCIREIaOOU4g3tsl65XAB1EiOVYGTHfl3Tu0moilyYSI87uCRNha/6zLSlLkR2ooBEVLYPv1i2AWIBEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785301234; c=relaxed/simple;
	bh=SLKgp4MUNOXOEVGO9Qe9XcT7XrNgMO/Ih3ouSE3OiBY=;
	h=To:Subject:From:Message-Id:Date; b=rLooqDbC/5q39jv5l/W2ifEzJOFeKN2kO0jnD3ckQzkaA3T/nc1YfLCczLQ9kMO4TFYSfYFRdmNOSuU1VJglDVImHZRVnwgfyneOa+IxqSMWwaNI59KHWMqzTYKtgGNDK2dYtRfuk5sxQ0u9OBOLCO1KPhhxhC5/OMmisxwnR94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlOt74q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlOt74q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00D2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785301233;
	bh=SLKgp4MUNOXOEVGO9Qe9XcT7XrNgMO/Ih3ouSE3OiBY=;
	h=To:Subject:From:Date:From;
	b=rlOt74q2+o/YFcZxHPT1CuzUQnHDakOy7h0DHMOIWSjLazCvbZJhGxVMFTDUPZhc+
	 muepRqbCKpYmLffQqBGuTV4vD5Jnzl1C6+87KEyjsRuEF/d8qkAMV6W1rYB1ONzBzS
	 sy1SnDz4PJGu0whXhh6iXLhBZmr0Z69QmjnzghC/i5eBv408s+m9+34pIHQgOcij9k
	 YZYQKsW/qBctkB+8POmbJJngSgWCO1cTq7G1eGvVagFfi7zx5Czq7xDNllIWzbfTrl
	 sdW9tDRnofO4HW8mxD6CvvQBqdyZtAB5bKqRMbw0x93KnlvochA9gO5joZtchroEpS
	 tJKFkZogEeGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD83AC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530123368.5558.1177176173061666367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768933ab97be9edc2429d15e18b18d13bbd95915ba561be8d6da0f932f35b762
Date: Wed, 29 Jul 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785301233
