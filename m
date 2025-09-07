Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2718418DF89
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757213394; cv=none; b=FzLOSKY6LHOtz2JOsQG4OtxOo3PU+DdqNsUt+7hGOAVkLl/6OLTBKRcXd46iCFF3kcKuGhND0a+HGjSgOw04JlZO/CoAf5RXjcRVhrwDz02eJWRAkMuv/1UTHVnngwTUV8pMMnOPRR1TXMksexD3yjDxfNxT+dDfjZ9rUBxbwY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757213394; c=relaxed/simple;
	bh=11sr5pankowM4P8ozO73xmG/GrlMW+QELWbE7B71X4g=;
	h=To:Subject:From:Message-Id:Date; b=X9rtzaRS2PbDNs4G5dBD32U6bDNusbhIMoLsnVliUzgIWnPUQWk0FgdwdhmSMtF+lEsosuxveXTloTlaSTcn4wHMZxSQf/+CdLtmZP6BBa92H7+JIR1ZzBuNbON+E5biAeZIKkIl17zEHwOZVnPZHRdvIjyKxHV2+NQT1TA1MMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+vt6m35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+vt6m35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757213393;
	bh=11sr5pankowM4P8ozO73xmG/GrlMW+QELWbE7B71X4g=;
	h=To:Subject:From:Date:From;
	b=O+vt6m35emECZfoupXV7YycI4gSqmp1tq2uE3UuZ5VgRLBMwnJleX18W9g05jocHb
	 Dxayt2eIxGwhHl0si2mNE9Fv+SKHfO7eZVdjowRF4+dVjZpn0zwTI70AHuDfGEVfOT
	 j3V0rVfBK8lEUPkX4DUjgTS5zfH07tEvIdgA9JsOazZ8bwxi1jMWVpovpS2rbHpN1i
	 lUeZC7kd53k1Kd+cSiWT3AB/sIivzvatTztYI0QH7iOPBPVcoFPQu4olkEO7dtMzHV
	 yU6x58kDtmCwYK+4dP8X/Ss9d53UGWWh/Hai8mFetjqrk6JiQawDMbeHWiVWLTFaX3
	 DM495KeCoP5GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921C2CA0FED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721339357.5482.11650492394182153059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b09ed55518bdbd8ed7e139e528e5fb37bc36705091dedeea02c2d9732b39c61
Date: Sun, 07 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757213393
