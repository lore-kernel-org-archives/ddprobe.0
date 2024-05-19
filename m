Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5473B502B9
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716145343; cv=none; b=q93W6fWbP57jCSit4YZ/ygfiLcRTTo/CWsgEzm8YjkveT4WMeJaJsqWZyEVkNK92k99TLJVjsYPzdhlGxg0ZmagYoHfxGsIWDPTFygYh/rKKMQjDpAaArfAUM5kHU+dvSm5vRoXdkJelYfpEqoTeftFe9da6Q76LhN6G9ubQVRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716145343; c=relaxed/simple;
	bh=ZP/vrf7r5d9cU734L5L6ysEHB5CWbv9AA4X5tksBL8k=;
	h=To:Subject:From:Message-Id:Date; b=ZZHKJh0286JKEMtNByOP+xjrvymfCCpDM1+X1DvzhJI3EjaP+pK/XybHqA89U3MF5lP0SsxUzoIbqVMZAlNK1OmMsjuKdObrt9EZT8lsuk+6FjDVpMxAX57pkkacOggFNoSlbRG6AGGCkdvD0xEMB81+w6XlwdVD7FdwnUCLwRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8aNtuau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8aNtuau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2D9C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716145342;
	bh=ZP/vrf7r5d9cU734L5L6ysEHB5CWbv9AA4X5tksBL8k=;
	h=To:Subject:From:Date:From;
	b=G8aNtuaunTkdVWpE/Be/Newnv6SXEIaXfep/Qio9cwApS/5EaUSBD6thhF0P8aBgE
	 0ubcadm8PD+JjzZz2JYL1MfFtaW3iOnGS85Yoqpk3EfZG4qB4seaKzgHGvafuzHVf9
	 mmUV6y2oBOTSqWkPBXGWejbqKUnZap17FRMvSrx8myb/yyP4s6vBdR8fZcPvu6hcGv
	 qBOJl4LKI3OkYuslPw1BnjhwqHsg4pKK4QyMsKGrj1Kc76PHK+9TTWY8ja1C00Gwf2
	 LcbR1wReGdKwMVJH7W9vvfvGqgtchyzxWQ/3Xkh9S5Htg0ygoXFMU0M2Mq2UQO0cvv
	 PHLLQ4LywDwoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEDFC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171614534279.26381.11137922893413868503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956fd4ea3bb7ac2ffa12f739c48e9b228a5ecfd19ffa3d5468c79bff1554c45e
Date: Sun, 19 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716145342
