Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D9A36A367
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785529234; cv=none; b=l9OMOSLCHEZktHyk4V25rNaXlNhyoFn4kllLC9jpfxzmytp9ttbaLUQzLTfRZTSrgWK9HM/KmSCB3ZjFe9uJ0hUyjU55zpWg4qPrpWdawilNVTaX5IjoZHo+GISMUow2qJqeK7RUUjXPaQLY86A6NIRnVAd5VwRWXqWp+eGdx7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785529234; c=relaxed/simple;
	bh=aKSKvfwE0moyJW3uI2T9/1y/N7LeMUXycvAP/Cr6kME=;
	h=To:Subject:From:Message-Id:Date; b=rl81EMA3V7O2LQfEcP47mF0V2bJ/nqqpWhaCsACRs0pxhhyHT38UFUy++xm3l1q8eMA9rfPcaRvqHHWIjEf5sPL9YWYzbWR79+HmRdp6VjfaAY5mkQc6JHXq5TcGRLwJP9AgLju8JgCLLYcd5vvgwwMPvKsSlP+V6ij3BiHsppI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcNLN819; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcNLN819"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA82CC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785529233;
	bh=aKSKvfwE0moyJW3uI2T9/1y/N7LeMUXycvAP/Cr6kME=;
	h=To:Subject:From:Date:From;
	b=mcNLN819TOE73xp1E+EqeSYt4GbNe66tQllM1dERKHvW/xQu14Dv73XPlmmWi4UeW
	 8fZWYyOB4ZFJch7jINlQ96IGLJqUO3GAXgkMTMd8LbwRIfuL8RksmNkn8bPZ3ZGPfY
	 24Fr98P6eSQmYp+1e8pPYwnWyRfssmsSMt0RnUao+6AC5PlfyuxeHsztdqDqxG8NPy
	 wGer9bd0Pw3DUTUAHT2HljWR6H3PAiTh6fadbTFK2psWyBE3mvsi43WOPLhw/WcGt7
	 MOHstJ0rsuARHTQKNPPG6ahNfZHJAhe2NA5jNJgN2wyc4cMZ5Q+ugU21N4cA+4Zzwh
	 n+EieyQgRcB9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82E9C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552923368.31137.5770466196502458444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc29ac2c418c91123a9cd34685c956f7496cc28645a0e64fe882be8575053378
Date: Fri, 31 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785529233
