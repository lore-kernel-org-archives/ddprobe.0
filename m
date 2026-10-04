Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB3A3955EB
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791138034; cv=none; b=s0KsiFdhtaXhkQA+Y8g1IOQzccwkWMQLWL8VaNkw4An0uOuaeC5deNmWdwgHHzbUv1q+g45TIL5R16COJXqDhhPr2mhRXCbjzbZf6QEmROQ5dqz4SWcxf0VYZAEdRacqh6D85lLpqt58YqjEVq9ls5ZTMdkP/k11NdiR8uOSC3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791138034; c=relaxed/simple;
	bh=9L4fUqzdyYoetNE5vThfngsdpVJFnQ8cDAwKdu/arE4=;
	h=To:Subject:From:Message-Id:Date; b=LaxslJKJSxthKdUy2VQa34eyf6XA5WmFtYKQZiokVQrgbpm/CEFvDrrmHBAtaGMyp65o6347QBPVvlvtbo4IVhY1kldjZEX6aJR/z5DUgVBSWAhc+ptMv46uXbRh0GBqX8s/8wWda0JYt6TUGvy44DMyEpAsXjhP5E5VtY5f5OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJQ5X2SZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJQ5X2SZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0F4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791138033;
	bh=9L4fUqzdyYoetNE5vThfngsdpVJFnQ8cDAwKdu/arE4=;
	h=To:Subject:From:Date:From;
	b=lJQ5X2SZ8+/NlGAsYm2tZinCO8eg5Dh9ymijK0R0CODXLolC7o5C3ieV5TkWbp+Ck
	 fWAu7FDAHUDcRlDQr3+rrMdCXkX0ZLoU8nNfKgSuFe8H4lZ5oD1SirDfFcOk1wLlnH
	 tNbKr78iaf33Ygg0Jto1L6IbSJMDGSqFIZ/dms5G8V5D5DHJdc0BLpGVq6XouvTSlf
	 1ddaLML+1B1A+psvovrYx89UUVeJpb4QRr+QzOuI4awJh5PW26jiVE5mFYCLoTv691
	 L85/K2owBpBna2A6+MDjmvxDPtV2G+Z2jdJZFz+DANRCGvvXOKn0nQ3jyc3T9Q71/h
	 XIgGQacCZ598w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA5DCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113803369.30838.17039717531000760517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8023aaf5424fa74961340a503e4517b466cca9a9bcbd99289710eb1ab8200a
Date: Sun, 04 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791138033
