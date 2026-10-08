Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8643659F9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791481834; cv=none; b=ORpLYRCFwK/d1QuGPXAMSNr6EgrQbV0+Gh6omUqJihlbTCdbjCI9PjRXzlv0NIFcnoDoqViWyfFaWBlDl8P01nbohlVj57AgYO4Zk8M/SoHhp+tMrKxycds1IVU8gVEXoolkX2UnhmT52Ub1w6t6klA1194w6YVxjPbKPv8GxtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791481834; c=relaxed/simple;
	bh=9hisQJ6v4JGKX7Mhae1RE3cMpg8Qu03JMRg7EfclOb0=;
	h=To:Subject:From:Message-Id:Date; b=jU+bNXoBsNuOFHGaTpqTtqCfT36JznUdvDYGFDUoKDGna4xrzOFsehuI7RlgExOy7262DWehrS6x8FY+GpOixpMVM7zA1rQZgh2kN1C3bZRnN/tLr/yDTjbIYg05zqDT1NGPujzckY7oqo/nrgxjzyKYI6JBIOU5x2Ozv+J0msI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfBeliN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfBeliN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CC3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791481833;
	bh=9hisQJ6v4JGKX7Mhae1RE3cMpg8Qu03JMRg7EfclOb0=;
	h=To:Subject:From:Date:From;
	b=YfBeliN+fXxUPVFWqI7gvxU5avu4cKtIz7v2xtpXyQblCT0MulU8xALavu2FlzMm3
	 Uurzt/k3oJYUfT9C1hwPlU167doqWTC8INYpbdBjfgUS1Rh8ULoaOV0PDaDB7euQq8
	 oHGB1Zu0D7CmypzqXZDO/J1envm0C32JGzGMUI9OAfeOTrD2LRzPU9JmAsueM7s0K/
	 XsMIlOLZRTFVPWJU0I4jbn7duO1zFmZe33toUFTBs95cjLfMYf1OwGUiUYRx8pzlNq
	 PqGJAl8v81BJxuPp+S+GwmiRnqMdfy3ikyjDE2ajZAAokyWNbKGKAGh9epkM/aM4+q
	 bnahb1C1P/nOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A989CCA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148183368.2211.10185261554315180930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a046d741453b6fe853c25f6b092d21d73272f8ff224533724739cd48b96a0378
Date: Thu, 08 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791481833
