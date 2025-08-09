Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392F31E515
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754746194; cv=none; b=e3oSNW7Z7S6ZH6ki5EnLiaYTWthHMms9If1920o1pYowodqRCT6SQDVnIjzc35wYavcYCXpFgZwV8ZLNg37ybBE72O+NjUox2W+dgpnRdG9DPmDsnMagdJhz2iXyKZ1PtAkUPKm2WRavHjOGExXlIuIAzUO+Pz1RJ92fc6s+Jsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754746194; c=relaxed/simple;
	bh=W1SDCQp9C4+WhINriTY2nSNoPQEJD3uD9wnytLim/uk=;
	h=To:Subject:From:Message-Id:Date; b=QTGEpZRiA2+1OWNyo+zRrdVopLKGzToUjovxGOHjwl6CATtHP89gu5T21DrYG7u0qloY0V8au6WjuMpTlA3Jl9D/DT3w34G1FTIglgmDCXJ/OlW5EtCB5xrGZOmHUeWx7Ju1XBrVOSEHFh6Pz6y8MexkNlziUq/XxXJ1nUyIYNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjK/GZfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjK/GZfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A770CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754746193;
	bh=W1SDCQp9C4+WhINriTY2nSNoPQEJD3uD9wnytLim/uk=;
	h=To:Subject:From:Date:From;
	b=NjK/GZfr/QsbFJu6/7AYZGAPMUYdBhgp7RmYQj1KKHsRpOf5Qu0ZrSvmUtRZXbmBz
	 kaDsxh1xFcl/vaY2lK1pXvFXdtH7Z4fHGKFL4Zti4CwGdTB4jjOboepamMa2xlCwie
	 tDcng1XLsAnGZoMDC3BN7szQ5LBoRA9r6hg0YoJvHnpKDAXz7t6o2x94K0rpouclsc
	 1DLL+BiSAFKM9aXjkSPcWbLs9l284BbwHSDcOag8T2uF6fJEU3Q8DZaol9f7l6SyRe
	 X3cj4XKGRJVx6h6XV/k4FK9B6ES5EihmbAjH5Q42hZghOOCJyoWxhr4LeFSl4o6CRX
	 W3nVy1PoBSD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E7C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474619357.22108.10793680557798356268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86bba8d20fb1653eee0ee3b4e1c4f527e7d3491b363a342c51d366a1409fcd4
Date: Sat, 09 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754746193
