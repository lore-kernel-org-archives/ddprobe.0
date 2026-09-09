Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308D352BE3C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788951034; cv=none; b=EaJkv85/fQf3ll8BhrbhzEVx9jB8bxKEjELFC35rjr1IsM05Zrnyitpal09fDeRFpoLv4iOhetB3T5ftgrLq6qc4z8W2sldIEuvvifual0smy7Qsq+XY7XmLLo/icmz4cjLPeyA6Qa0/IHcr7UHgDNEZCoshsgZmZPjatNZYobg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788951034; c=relaxed/simple;
	bh=xkY8IYL7BaXge7ni+RnRH8yRw41LPrhKR9XmA/OCFMY=;
	h=To:Subject:From:Message-Id:Date; b=I6p/BcNtF6h7gmRebWmLfz1BkgjFhsjh9jdBlAS7hXzIMIi+sbQ+sQv06lmLbD22JFYWVH17h1GQPcZxCnPCbLXrZdpqoWuy32sFmUzMcXF+mt3QFMvpUdzYS7Ku9z7nBk6kiugbAPFHngOqcbFc61FSFKuDsSB7ToHLDdxTv6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9YsRrSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9YsRrSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD01DC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788951033;
	bh=xkY8IYL7BaXge7ni+RnRH8yRw41LPrhKR9XmA/OCFMY=;
	h=To:Subject:From:Date:From;
	b=a9YsRrSdU7Pcyj2dRZkm2sJGAb0pwIC6xwMgXf+Oh63UdeA5RCAFlMzJ63c7QTJ2f
	 P63dNnWErq9fEWcPQOZAbKGS66o67RaudI3Cb/81o/wmaXr7NXfbjijm95zEVaXTO/
	 QREixe+SmvmunOo3LVa7An/dpoKD1/PwbGbL1fUr4NOf93/Lr3wEgsLnv1adcG9sQL
	 I13eRc+3HbIohroJUd40dLN5UNDHZ/5yKTcGJmoTNTBsJHX35WcBAjCtKOa4/mknXd
	 5dPo2OJz+OX4xfEWTQRmq9ZI+DtOGWQNXSyqqWb9NwOoCxc3GTbFlFN3e7LFIXAPee
	 A5oJL5SFeOQPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB96FC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895103369.27737.5955079115817818817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c870e48aac335e06213db1a5d2591480dda62f412e80fd45345fd3ad4294eb
Date: Wed, 09 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788951033
