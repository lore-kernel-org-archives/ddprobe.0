Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8161C5D62
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749034794; cv=none; b=QTEDZKgzYfmd3ScUidHmcuQN+7pLb9dEue33jpOmXpXAJR1RDCakM/1fSyb2Rq+Rb5tnyypEmzINFTT4r1lO8TtZ4IlohsDym5F9BJ80l72xndJ7GC6RfKezj6rrlWv2RkDOTy37W+FzG3mumD3nB9lyOyIJKfwlPhaAOQ3qG3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749034794; c=relaxed/simple;
	bh=vc+zRp6bsHYcErwCB0Pi5VM81jyGqpn6a7S0EMwNhnA=;
	h=To:Subject:From:Message-Id:Date; b=cn1zBnPh2X7UQ+x/5TGPIcqYEKmueApRAlM4D26CQN7PRzMmrjVMIc2Be6GV+P+uUFL6dSoYVWpoF9fT9Clllwf/sNgsRQOxDGOZoi0x3M74fradfMqTPCCeNd3mBvoUMbHVwvCwyAr5qDMwhwD1dFFfrta2noPuSroMClawg3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rm1sf7bR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rm1sf7bR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28B4C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749034793;
	bh=vc+zRp6bsHYcErwCB0Pi5VM81jyGqpn6a7S0EMwNhnA=;
	h=To:Subject:From:Date:From;
	b=rm1sf7bR1mgk+ADP2Tih8YxiyOd8FyWPQc7cOMopICsOs5/eV8xRPp76Gg3IIpQHv
	 p0azg282SNHy2O6s5vJ7o5sCThtrBtdArsSXYkwuM2lnDG5XJGfrr8DVbyvsglnbeH
	 XAIHM0H41/vVho7WBcxPHsqx0x6dH5ZOJrnyxQrpE9Esu6iUIQiuH4s1hY8jN69ImH
	 Uz2g93lEnTIKNrJ6KbQ2DJ65mPfxETXSP6bPMMDDtOMlVjEHrgrMqikvQs6hTGjmn+
	 AcEsmerDdNG3tP5EnAyG0ihInraoqVFBEZbn4OL/i+lHspu6lcmOJfJYfolPhgWzfj
	 Gq00zF7tVoUTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9CC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903479357.27114.15978741417402950918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30adb6f7578193e6b82e6c71dc52709f470ffee59d8b5b21b52d51b8cd5b39f
Date: Wed, 04 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749034793
