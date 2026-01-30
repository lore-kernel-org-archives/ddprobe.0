Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4D725EFBE
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769801634; cv=none; b=m/lEWHzF1mKDPptRTJZ125gMIcZa43QNJ9IbHHJ5cnczEQktmEe4NYV3FnOBfu9F96W5KbJh8cyVDl4xLJmaCvg3IRTbaDPoYX2sJ9tbw11sxFBL7jeQNJDMVYojvGZf1SGxyHgL/4d3qTG5RzLppDZGwibUYdCJ3eLJgY0gMoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769801634; c=relaxed/simple;
	bh=d6cVHKorXOUpQDd9JcBsZ4rzD7z771A+3MACNkokK78=;
	h=To:Subject:From:Message-Id:Date; b=vCE1b05n82MtMhsN8k2AR1HYV8SeGamXri2j56nWkIkNU1i6ld5bp5XYxrcZWyO4th/hv9dUGIpeTy1H9OC7LBgSJjkt1+3Zjx7kMpwOExEio+ernCM62fpuf/uV7FWA1+iaUHvI0CVAxTH9Csp+A661ORZG6hQwPPl07J5CuCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GF/VOUPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GF/VOUPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8490C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769801633;
	bh=d6cVHKorXOUpQDd9JcBsZ4rzD7z771A+3MACNkokK78=;
	h=To:Subject:From:Date:From;
	b=GF/VOUPBVi+jP5jOt01VXpuA+mTksjhoZFZeCYRKf6utfaz8x6nl55q8++osHGY0h
	 Kmj2D+zy0a2tgZteTXe/2tEgXfv0sOoBZY834Sw74nvxxtZOyDhxPJEFdp/bRsrO2n
	 n35/60pIJlKgNydhaRP+AK5jBReGIb3Q46fOwRRnY7+kuIgOcM2/3FUIxLeLZe36WM
	 cs2wLcSMcLz49vKig5/zomU9K42JQm9wdaAu1+eyO+8mW7FZ+aDQD6eovD/JNbai/R
	 kU2G9L66dXCU+icJ6pAs5dY1QEiNfbWe2IRRV5HjaZXXcOK4+UeiliqOyqxaC8+CJQ
	 jmkdYQzTWguFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B3E6BF0A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980163358.21865.12578908057179980332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469044795a29b9e47be35176dc305f96ba2f1f3fd79d4b2dbb3b60cc446f9833
Date: Fri, 30 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769801633
