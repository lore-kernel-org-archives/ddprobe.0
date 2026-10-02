Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435B03CE0A4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790944834; cv=none; b=V4EVGJuxPGCbOR1hrlPhpRIFujOAxpFI5m5R1iaDpZ/pZiRu49HK26ir36NH23oClNxYyrAZrrF3NBKOEe0i2lZboHIxAwwpEXE8fBdYesGYmVP6hz39Vw0/Ta81gDrwV7aYfEM+Vyv3oOGAGAEPRRcel1mRqx9RFs7R3YEuEVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790944834; c=relaxed/simple;
	bh=IXm1eRHr7nBqau6OQbKM2Y7gdyeNSZFLZOTySk/2BJw=;
	h=To:Subject:From:Message-Id:Date; b=JZI0dGUUdTL271ovhDyXmS3Zjbg6N/tmbrUbAqFWMs9cSrCmoldW6DDB/qMJ6z0Zc9DAKAbCMnRSZ1Lyw+uhC+tZY0gRbghp5kJUZlfZkELtQ3ONijrMNmiQ66dXYcr0f4PUj68OfOuk/m7HpnyB5RXN3QKzN8Cl6tkuyobVsXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzPu6e6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzPu6e6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEB4C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790944833;
	bh=IXm1eRHr7nBqau6OQbKM2Y7gdyeNSZFLZOTySk/2BJw=;
	h=To:Subject:From:Date:From;
	b=HzPu6e6R3tCbFUa3I66bHrgdiX2u3EwpfWstEp3Y6PVSCF3WxP4DauhA4FwUel6pS
	 uPsieR4bY4wVZ1gQEzRg86AFi/PmxnPSqrk4RMIwTsJRnQlQAXXd4j0bbh36bKMLPj
	 m1D8TpP4fPSpTu5IXwjMC6zrW/k9XQpEV+bIa1sTPRp0+cXOYHb4/HCorjZYdS+uJF
	 369ylKGLyaSjxTk9FYi/MN9uzYt8agZivh9Ph7FLJDvwd3b/i94ii/QoIjY+p9jXfD
	 +95HZfispWGifczDQ6B0aW2l/zzxo07q7pxHvRZ/e8cQbxyeVFZ0vPpGrgDcwkDpx4
	 jd+6TOTJmCIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC2CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094483368.5037.5383508480045086242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6fbbfe4963749e20062d6c42b1fc65acc27e97df0b175d034a6c1f3c039473
Date: Fri, 02 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790944833
