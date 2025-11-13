Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1524221D3E8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075394; cv=none; b=R19Bwj/QreOJfR52tjNJm/KgF0ShNvhgn3OAMJnAZ/WU/G1xukprwLB1VSCQkLzbdkLpXookbv2E0ItZseNuwnr02WL2yu+ICJ4wSH+fmsJrNJQgfsLkhnw5w0N3Cyymhgmjw+koSipwjLDDMA1/rkp9BaVju0Q5+a4yLFt2NSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075394; c=relaxed/simple;
	bh=5z7Na09kEaWDczJ5/bMkFkdqzCPA0MQjxBAFPkCdCds=;
	h=To:Subject:From:Message-Id:Date; b=CXyYTYB7l+wLSwVzUTojUdU8ItS6/EY1wmfF/vRemabtx0yqHsjSLZZvhw0xowl4WykT+iOjSV0FgP4h6CKoweL+ps/dhgf4upTBblYTSXDZcbrKtUDvH4fEI4WnUGrEMN+PSoscjTSr+e447R1MX5TFIkmKbVHXqZwsrBt2tY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q37Rdw1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q37Rdw1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD2EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763075393;
	bh=5z7Na09kEaWDczJ5/bMkFkdqzCPA0MQjxBAFPkCdCds=;
	h=To:Subject:From:Date:From;
	b=Q37Rdw1VWYnO4xjkuXEY1p0ibQNk4S73pW2UvEMgtwJlTDwwqsGwohsd/d4sRxIJn
	 +IK+iA4kZX+Z3NhcdfyFUTpGYmvUdll1kkU2aX8iQ/jspRzRMVDR3i26sz56czOI3J
	 C+GekFHnWnGibdS2Pd6jTrl/MgAcU3CTEIYfq+Td8owS0qwnj/SwFRXAg8CLuDJJI1
	 N8Ebj/n5oRdmeKgypwbTYWsxl/E724xTf7uM89ZDLt+R875u1OZmb59Y5y3z4HfAGF
	 qIoxYAPHKTgXG8fHrt6WHL/lG37iTOrJFImXSA5Ra5eP5O+hl6+NbSwMZa4YIyEVIU
	 9vFSxyOCFmCPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178ACD98FC
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307539358.31451.16924483640578205446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2aca7e6a6e200c1d656e8c01ff4b0a15a88b8104f731312e416da5c23154e1b
Date: Thu, 13 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763075393
