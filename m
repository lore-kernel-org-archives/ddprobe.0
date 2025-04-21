Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D008EAD7
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745194794; cv=none; b=uj4fiEm6Ohs31+HhXsGAxYj7d/SOB0Kh0T5MZULkdGEZlB6tSU2T9R2EVqHBwJJFFyOYISonECHvC8S0uke9oiVvL2m3j76JFWtLqkeZ/rAcKXx7LVPHwIOybHFI9OzT23yVp+MbioBXu17f024GNBcDhU5Yi/YUy3at2mCY4Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745194794; c=relaxed/simple;
	bh=aAf3fXPFhfEaxXUx6OX1Frk3IEi08LHXLC/HVNT47Fg=;
	h=To:Subject:From:Message-Id:Date; b=itvPGnu7Dk7fek/YkoTbgLnS0c4OsMzTS1DYaCkYNfDYwkChxka13+qB01DX3NGdysYp/Hj/V51CtuJ9GQ30oz+k0ysqJ10fNryTVxk8EcyPxmCyxPZFrzSvW7usIAvSphaDyzMScLzZkYaHCevHWc+OWON4ZRpLNuf3po+z26w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJNSdAyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJNSdAyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1E9C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745194793;
	bh=aAf3fXPFhfEaxXUx6OX1Frk3IEi08LHXLC/HVNT47Fg=;
	h=To:Subject:From:Date:From;
	b=qJNSdAyo7qAjFm4jFiyvwbUW4J1NurAda5RIhd67ctiF1xw6CBSp095iCfw9ILfEq
	 1w89Mhy/ugatPjzm2W11sXz5TKc/pjCi34bq/QcGE8hYce60eJAUyImr5CqB08r8Ym
	 kUHLRoDZa16+1bHPvRiS0X9ChnwW/7jvm5uY1Mot+g1GrNkcpxWM452G2+MN7GjjlJ
	 vimje77sxmdkkd1nz8DHU0n8qiXjxEA+/IUkaxeF5Kkj3GKpRHTPvD/mqcMf05kQop
	 oRfSn0mH2OJ/ZTHuLOAG4WgA+Fl+rIxh6byMQwyJ4lp5mUrEG0+zDkw6q0MLbxKjnq
	 2EiQXFS/vr4tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23BEC369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519479362.9634.7781001478372965917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3323d054423c65ee7ded68bf3ea528c2df595c154a57a0d3d8da3f439b44d4e
Date: Mon, 21 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745194793
