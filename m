Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BE7166F2A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724265354; cv=none; b=Og48Oyo7UukbX4h7Q+p80uj55QbmyvNpv91TRdDL6vgHC4k1X86U2ZCS0j7Lrnaodb1dOzy+knRU5Vlg/bb12qTZjMHPbMt0GizGXiRCAt9oGiveX5qxvv43evr4LeV6fomJdYewrulTbxhKdVBNEOMGKgBHr8TqYuRZwRSxTzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724265354; c=relaxed/simple;
	bh=3fRhOkh1kv1BU/R0VR3PQmXeOdFxJpkY5FsPxfXWWsI=;
	h=To:Subject:From:Message-Id:Date; b=L6Qcn7O8loXtHScVRlzJnAgW6E3I2RR+9iItGaIAczZvPn9tEqXbbp/PLNa5TZ3CEI1ST46f78pAK3GCpSI8/6y0bcVnxXEyQsiiWxxyhDErQGUOjTIMEqOx2hIjdDsU14euDHihPFgdr8PeTaf9WkBm/W7tTrystqqmK7GaZN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4viqbXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4viqbXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD81C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724265353;
	bh=3fRhOkh1kv1BU/R0VR3PQmXeOdFxJpkY5FsPxfXWWsI=;
	h=To:Subject:From:Date:From;
	b=f4viqbXTJJuloQfOhD+r+bAJ/C4dsdJ3yenvfpWQiiojFfdY3xdnFz6gTVLCia2i5
	 CapN60/uQa4BHUbAsUazP0WekXdqURPCT0XmRtLaHcfyO1FxSw+vgw2h7RJ46Vs2RO
	 xMPMw9to74+OZ6uOBHBK1+OnxCeTTutbNaBAuibt4CuaA6nvN5RrtLGuGC7ZPV/gOB
	 nsZ5FCGWx9FCit1MMP+oZeoSc3aXFWCkdJ2ETkoZ5ydu6OdwrgbVRpPHF5Xb1a3P8S
	 aupxG5ZkEfWniC0uy4aHLvCiIb7bKn+SWILgxhC/9mP4UbOF0fo6FuhwwN4cBCf/5l
	 6tX+K8fMaYtkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F172C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426535363.23594.13071335858909853275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74880b70c5370b53857f7c4538e89fff08ad0b959d0151d6888d21a59df8d855
Date: Wed, 21 Aug 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724265353
