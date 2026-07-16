Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E5E3C555C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784246314; cv=none; b=Le2Wi9zloEHWyClMoo4OVI4DvPwpbKP0GgXTjk6cgdteaHxRhhfm9nblwc/Eo7CvHPrQLiIGsiuxLJFvJ1AsyqxNtuzAbQ5opu6ofVp6xJSLs2xSqPzjNCakoNIefUWzWoMyAZKvP33FjDAF0rcqFrUBVHVR5+BtddqVFE+a1JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784246314; c=relaxed/simple;
	bh=wLou8Cv6h/t2RxxIWBDZeBiAM07HYXk2hBfReQgoqGE=;
	h=To:Subject:From:Message-Id:Date; b=HADpfM7I5+QA+N/85QMPhUxUfgGNsH+6Lf4G1BNMufpWDy+Ngs5yHkSKiLI2TopjQr13BlWy4Pviq761nU/TReRcCnI7EdhLNZOdvQMoAJpwlwjS4BiF/sXDdV56qJiEq5NV0bHC5eB10xu8GLgoUePOBSGR7tZcd9eQT/4K5Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYfAdpyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYfAdpyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC9EC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784246313;
	bh=wLou8Cv6h/t2RxxIWBDZeBiAM07HYXk2hBfReQgoqGE=;
	h=To:Subject:From:Date:From;
	b=YYfAdpyu/OGORZQ1BM6f1OlY+1rVotLTrmCwGXcYPqKzg2yh6O0NWR1wMT/7eld4B
	 Z8FDVHjHz0Dn2Fc5n1l8zbi3HQ3qJ+BxJvLSn2VrNGb6gkPMHtE1S6moD3fsg+n5XF
	 QRnG6wcPEZ64zgo4Ed3OIkiWpvFgTgEIlUUySeEZuitGTWtu/OWCvEZai07/kvlM0U
	 LolcGkDcQufUcEY6Qsa+3iHMUKZHAgYTNxq9A3tcA/FN/Q1wsET6eOI/Klm+IXEVb3
	 UMTDbKW6r3oL+bOdqrf1VI5IjWbGl88xmljkPXtKHslDsNNjU6sq5KyUJuo5s2AxR8
	 Es4Xa+0LemLvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB7C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424631368.13150.6920561815678617305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a026482d86c6911930febb1cd0bb5296a240f506bbcd3857db482353fc24848
Date: Thu, 16 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784246313
