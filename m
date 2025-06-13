Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0B41B0413
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749786594; cv=none; b=CKHNX+rZiMSDvhSbL5YrmrL2TXoPT3y6HDkZwhPqZkoClbWw4yFvIZyOBl43fbCcd40t0n6CR7tKVp0A1rvXay12S9J9mvqTWwSnn+zVK9y4vlhc2xdt8HVOGMXsRYyatwnoSyuTLpk66d1P+ANSV2Wm+d7g/JdNAsdEqyCSE3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749786594; c=relaxed/simple;
	bh=pFNHniRTOtur/i+KiHvgXJFSM4tn2QosWH71mbPFrjw=;
	h=To:Subject:From:Message-Id:Date; b=YrPPxmE0SLjxLskqjPw7atDHg+A+SgGzopP3xbjf991fHU9zEh3NYy8BYFmdTSWuQ61Lo9i5NlCpu/FzySel8N7nJG3KYRRKbdnNh0/e+voovVj+/R30xFVzd5p8TmkN6vASfgkZYfpYxZge26cU8aXK0t58ngdXVEM59qaCtcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/MxgGxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/MxgGxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E7CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749786593;
	bh=pFNHniRTOtur/i+KiHvgXJFSM4tn2QosWH71mbPFrjw=;
	h=To:Subject:From:Date:From;
	b=M/MxgGxDpEQOIdUipsJWYfpuCOa8RbP6fDzgoNSxZlZmyCKdMS1+9VaKvDHr1OCxt
	 BzG8TVEaSnor9E05sZhXdGZwr2qxhIV7EwZ0xBYVdV+D6NHX7nlqusIOl8DrHstrZz
	 nPQU1z+WsON+kpy/GFbBdQsuOdHGaSBLqzdnu3OfjzdYUYwRwo4cUbXPpP2qoso4Xd
	 Z/byq+pIiHuKZOubYo9E9a+RrbVsK2X4PYQd4MWkAAjG53yGJoayazWnupT/b5C8ry
	 4WZTiM5vQST2q/Vwy31BbDeTlhbubPbwjO9LVaF3w3H4nKOZkHx951hmEUJxjjU5iA
	 yAWSiZi/l9NBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018CC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978659358.8960.9789421892009999278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2b274312cfb2d036bca2d27ac384f7ff9d0fb331a0162a1f055237cfa72dae
Date: Fri, 13 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749786593
