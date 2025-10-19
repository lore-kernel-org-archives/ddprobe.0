Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C451A9F9F
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760879394; cv=none; b=K+LDKEOLW47G9GNCdMjRGv4zWMIl0F6o6JE1T3JDoZg0FYgDJ6zyyZjOKD/VJa7quHJxQFVS14SiSZhPL1LxAIWEc6LilWC/AAq8PWJRLgDQsuqZtufPLRmb7xBYweGftYlIAuJawe73f3VYk56A6E/iRO2/plD2HeP94woZ3dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760879394; c=relaxed/simple;
	bh=muj70lI1Mlrb8uD96i7ysocNvodH3oltR8Pc+zuJsYg=;
	h=To:Subject:From:Message-Id:Date; b=EM0MjTajCVFpYfH0XA8u2aQ9c8+xcLlajd4uweGhDeM3QqbkZKCOqPdd87SEx3h2XckCmbu72nzMH1ebga8QNA+wI1I8RpzrrSc3alN3f9Oi2nDyhDMgZPuZzvF98qiRkWXN6FgcmWEdFCbjs00+x2KprUGNHsyzsmKnGp2gj88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+lVbMIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+lVbMIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA192C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760879393;
	bh=muj70lI1Mlrb8uD96i7ysocNvodH3oltR8Pc+zuJsYg=;
	h=To:Subject:From:Date:From;
	b=c+lVbMIUkbcAH5fEC11mNKyPCqXx833Q0ftCtcrqcNnMjP5ZWjX+RIf8aSmzJ5jCj
	 Nt/2WuxrgSS/XzAyUphM4AAsQXaSs1Bjx+5r5biiiPCg2ps8C5JIqMIFessQQRL+Ed
	 elA3Qcmi9LexrZjuvBZH4JQTRSYyRbefYN1UmjWZXf10gVlU8t6UJ36AVe1y76jsWO
	 gh7I18Ua0oM9lNbdoivK5CvWWhCjC49lDTwZAmvZ8twGRV6kM7O4rTGqg7DezEc0xO
	 lUEU4DPihYHMuGtXnrADFrb2VC89hV/xL+Mtx27mU96bYyQAvRmgeGpXKHHIW/dIlj
	 HxZ0u2a4HwxMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6DCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087939357.28827.15642596528713228115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a571b270df93e93172101e3102a90907ec210ae30893f062086d179bc99502
Date: Sun, 19 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760879393
