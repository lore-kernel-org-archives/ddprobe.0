Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E18B3A382D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780313074; cv=none; b=BE+l73U397hEiAUZPfs4s47NuUdJhInVLml08FX5PWo+bi9o7Hf2hcWrmXFDo0xs8/t9VUxO4SNNLR10vwNWvOwW/yTmsWD7YgqGFZrEj4Ickilcz59Szxo8/X5M5JzBTwifbCc+LKUwk5Tdn4igh1GUZ7vZD2xadX4WvSpi8lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780313074; c=relaxed/simple;
	bh=xHbGWavANProhh1vpHrXFbGsdDfbdoNPIw70bwwMUD8=;
	h=To:Subject:From:Message-Id:Date; b=AXFNQnpHqv1W3Cg5Bcu5Rp4Ad6x77uazX7d8xrJk8utIV/n1fQ4gp/7ma7/XXQE/5YUyILIrnbrbSMi78lOKXlg3GD/BxZz8rx4/GkG6P2TrAyjBr/kQIkMF1c5XncJ1Lc4CwHC/mR4IsslT/1AG7zscYnn+JOMGruDjkNtGPGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqI2ccdR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqI2ccdR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4729C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780313073;
	bh=xHbGWavANProhh1vpHrXFbGsdDfbdoNPIw70bwwMUD8=;
	h=To:Subject:From:Date:From;
	b=mqI2ccdRzpZWBIx9nqPqBHXxCfLcoZOFGwUHsuXVWQoZip7VoOQ/jvI287YiOL0+z
	 TBSurkCD84whQGOQkbv6gjJJv+1slEqdladhlQXxgiMunQo45Z3VSb8bp8mnMkQJa7
	 2jTi7GFLqlzBU7rdbdq9ShNozd9OoSuGqS9fkI1/E5i2tz8CtJmuJfsGl/3QFUuhI2
	 5oCl4B0BOgV+zp1E8ILo4ciLavu6HqogK3xNNN1zKGtLmefi3GR5giAT/pbfSbiW4S
	 AVW6PUCjagTKUz4alBLLceNQQ/iho27SwUyZ+minCkdnmoDQbMExw8i18/X5lUu0zJ
	 ybmlzeVZzrWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D5FCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031307373.1802.13760000995390247861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ff7e990b30bbc6e2f5da9086fac35732dec313e6ca699647ee015f149c9fe0
Date: Mon, 01 Jun 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780313073
