Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ECA13AF2
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753732193; cv=none; b=tjd3XqYB48d8wFJMCdJZaqVWi9ExVmaCVaTj3mgxATOKbXLaGAbvcLEQwzbdybWJtnzCXAy4LQBGOVV7aW9MT884N5PC7OvuKK60BHe+182wkadlewuuxYqXA9pqnxNOzll6tP4CmwFcwez9Y2Gffgf9XWbNvQ3bD1BoePULz6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753732193; c=relaxed/simple;
	bh=dANUPFQUxPwxAKRCh16pgYD7yMZZsxQtxxGu0Vhandc=;
	h=To:Subject:From:Message-Id:Date; b=cMCK3M87GHgHV2C++7CRhgRGvPuqlCt3YkpOyqcuxly+HBtgXTX6X0xSkq6JBNqLK4uql1+Tb9vyfsb3sDInm9bUMIXlM2Lu3O9mI5TmrUgom0szSrEgychD7URW4SGTQcMx0DHnyVj7UWls45Dt1vYFiDiTVYtkeUsf2PGdIQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upEtky8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upEtky8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0145C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753732193;
	bh=dANUPFQUxPwxAKRCh16pgYD7yMZZsxQtxxGu0Vhandc=;
	h=To:Subject:From:Date:From;
	b=upEtky8v+Qv6A+m86rOdnECBTxWdpa83ijsK0M6BKEDAZO46bOqhyzrdibjrXi7Tu
	 GLx0RYCcp5UGvy46Wya3b+ZwNJ1djDyXPSq8etbFWFqh+gBGTmswujiXF5+ByDAe+5
	 FPO+NWKFDJNUmw120yBsh1wShn9z/kyO0FZ0tkmzh/8S2I+DS/2kwIy+f2OPzDfGBn
	 //LrQJGpZf3V5xsWVcy7OFhm9f5Mlfxl35j6p4Mzoqc5NcDSHTMWjv79Jyv4uXLTkT
	 96SkUMca74xd+iFGXUFS5qfLPjc3ob6HcXd66J/xsoXBQmTupVLZrGzK23KERdCWgn
	 8nT+2wdpOGM1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90613C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373219358.14248.10845453322255058679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8c66c5c682d5256aab7bcfcba1cfcc444a10f1e4a57be7c0dc6a560f949abf
Date: Mon, 28 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753732193
