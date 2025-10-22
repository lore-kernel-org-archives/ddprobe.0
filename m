Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FE91C28E
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761100794; cv=none; b=s4HCR7nF5r7uctoYonzB6XOO0eFYqMAE2ffw+7SJxrA4g3n91MZ5DMTnwRcPSXxIcXbz2N7hr1KVaQdqEvNmg1b7U62NQnvTqRyHZAJDNHBQoETYdGkRABlYbfPbAvbBBJQb11EoYoWLnO5TZ1OhWKim8cRcXMyrgsioH1c7LlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761100794; c=relaxed/simple;
	bh=9hQlfYMDizvr63u0tBskWOeA3eF8fQNUAj0Nlj1V2Ng=;
	h=To:Subject:From:Message-Id:Date; b=IkoGW1JqROLBxdu1qWz5xLkbamr/VCBe0C2/L44fDFcd35tKZpdKQM/ucPl3ilqaQviYYG45MWpjOLuaX8fM6gkEo/mQWyqoz+2TUWOfXG75s3auWxRQ3y9DHCz4ziqBOqDdYPDI36Z35MJVOl9o2bjKAhZDGk9bcgpB2vBCp1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGTwaEP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGTwaEP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9254C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761100793;
	bh=9hQlfYMDizvr63u0tBskWOeA3eF8fQNUAj0Nlj1V2Ng=;
	h=To:Subject:From:Date:From;
	b=DGTwaEP8ilgJw8/hT98Xedvwvqy6AUAfgLieIzJaRQFMx3S5mWpGARTh3Fn5XXSXh
	 LKA1NSB0JKsioDXyeKMJMVpXmWAB8Drc6uMlcOiQT1PlEVHAeUqnpbt4gLv7XGuQhB
	 DN6MA+qZcS2aseyt2Pgq6+4brZMj2GxxH0sr5t7J4+LGzC6Em2KX1tpq4vRTsJXDhl
	 gZM6o7qwZFqKto1JkeuFJCkAL+BfxE04q1JJII9o5G0Z3IQvTxTUeUgRnOmmXfYMPO
	 bcFR4joF13QWiiNrGEWPp+IyleEo8u8dVTHKoCflD1oqIpYGQNjDN7dJd6KkVO0OxQ
	 hPs62QYDBR2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B0CCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110079358.3202.15448477887814945856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3cb09ced4ba8009c0bd1efd56dca9b8e6281b8d164f43eaf208211bea137d14
Date: Wed, 22 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761100793
