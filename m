Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A782E832
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713095363; cv=none; b=WQuWmdiyNbtUV+JLhtWM9Bd7C/IA2lbvTqLRK7nKRUcDwffl2YwuvVJMfeTR8+qScase+aBgF75lv4Bj6CipXXv6rusoTbh90YLGY6mrIsUQzsWCUsSNdLvixgeMnjcsJ/0kEujKVZMn1rk6sSS9PTxawHk2vcBDWGPf22gWxOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713095363; c=relaxed/simple;
	bh=2586GX43E2zP3SHXa/2jqQytabIBBW3cSlkYyGOHGEA=;
	h=To:Subject:From:Message-Id:Date; b=MKN1AM1bVjDRjM1tAajnHs+/C+OdqANZDHC2W7MJviHdlBYOt9dxmxax8TkUkQ/NKkbcqWr5PJd5F/awCZ+3b9/M8GLSKlwK1cs0+xy7w8HbUe5iySf5+JjRS6hl2f+X6IuyBrM1td5LkJxYK0gYiW/YpFyoOD/8vOMLm2OcFSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFgmyyii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFgmyyii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6634C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713095362;
	bh=2586GX43E2zP3SHXa/2jqQytabIBBW3cSlkYyGOHGEA=;
	h=To:Subject:From:Date:From;
	b=kFgmyyii7nIFYT+cb3XXZ1Mj+QY1y5/zg5MA48z7hXtq74ivE2NIiYa3Tjl91hIP0
	 Y9yW9nou/Gj9EdhP7gy8bXKG8sYMkkFDxRop9rNKCEetY+6ws7JGoLifd45x0FP/M4
	 CNWpNcfvrL2ylUDrQtdu7SFwrAQwdQfnqdg9PRTQDSN0/8kPPGNXlV9ASBMJVUrQ+U
	 nwJuwESVugVemHqx63EBoR3jKD9VPlXLk9U4WI4ZMtueiTac0kIBd2aNz4EF7n0pla
	 5HEakPmV7FbCs+K+bhM+Bagl49RswLqJSFB1TX/Et6eA+bywMLUvX95nSnYpSv/jOj
	 uuvmFwU8kT5Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2136C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171309536276.26468.3656711597001705457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9fb35a1694110d39af70210b768f4471e09adda59617460844012f909fef2a
Date: Sun, 14 Apr 2024 11:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713095362
