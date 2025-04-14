Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC04BE4A
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744656594; cv=none; b=ACqQT+1w0VHsOiokdpAR4Ua12j72HdXvN7FT7K6pGc/B5+Wb53X99NRxLvLgCCA9DJ4SZrsT7hr4Ne2gpqlXNt+6pvh3Cr2Yu5jZ44hwOPi+X0yBi3jmUhcr8cf+bX/PbE3w/6nSHJO2PAUaYKnUoLOdeHDmIaUBIEnyjb/vhyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744656594; c=relaxed/simple;
	bh=6qAJgEk9hvBVn99mDAxL55sb2UebwgZMrMOdScYO4+8=;
	h=To:Subject:From:Message-Id:Date; b=euXJnJP7el/AqN/s4Q2XZywwu8jCmmJFpyY0oZa7fEaw5u8uxipKcai8lNqu3GyMxC1K03TulbK8CAzZ9FfwWZdBbfXHpTAYL3UqDXPv9H5DWLTrBaPl9Zid8ls0j7pjEwQ28Z+FU40wwmEkTFUuvvKjaNeRLMTz2dKFaRO+62E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmHK0CHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmHK0CHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A2C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744656593;
	bh=6qAJgEk9hvBVn99mDAxL55sb2UebwgZMrMOdScYO4+8=;
	h=To:Subject:From:Date:From;
	b=bmHK0CHZgN0nIbCbxEBuhAhPIh1cAlOYh4MN8kbURBYx/jdmhuJaW/r9gYh2qo8eH
	 CoBO8cN7LCfm89RJdm1Ie8o559EXAN8C8s42ALDJYrY8lw3azWOgchPP87X0BBDj0h
	 fSRvHqwL/sjVPg1coEa4/3pTXw0TuSAMOu3QKPGy4LROVlDfmrCDdAvJZq97hm/fc/
	 FvxpTNpHxVL/EG4I4/vFHaGR77dlYIqeFbVeGFb7Y7jJ+s99PTzdHaNFWM2Eso8T0f
	 nASzu++Y6LQQ05HS2uZg1r4Ef/Yn0QrJIpzNN1Ks7bukarkvzyLlEf6KlbQj5Q1C9K
	 +WhNL+A7zS8sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E95C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465659361.8785.1431982296851003581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a496199489228bac63064c670db97229a0c3ae878e6d18af2e1db789b4782140
Date: Mon, 14 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744656593
