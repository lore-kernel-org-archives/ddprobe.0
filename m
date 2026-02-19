Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BF22EDD58
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771503894; cv=none; b=rFRbrvZSQCn0WxIrmgLtTQ5d0UKerwDBmo+P8scdOx9W8n/XhY4lonKbVyiWnshSpV6Z2el9dGOgxBtwjUvhHKx+YFreMkEY8xhL6N+r5UvJ9Jg9GSU2LdrucO+aQUzSUDZtPWw0FLpI41ywo+xUrHsVShuz7Zd3ulrPdQ3S0M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771503894; c=relaxed/simple;
	bh=jonwsE3lJTgS4pkRJ/jg5721uTXUEq7FgeiXxpuQT+Y=;
	h=To:Subject:From:Message-Id:Date; b=S1KCID1YIV+aVaZ9G2ihnK64XYo21Ld6b7TUD1ujDsuzt0aJ/HB2hM916geM1iAvE0G4F8pT0scVFQBL1BfOeSIy1vxkIa08wWIAMceDEdHZNc+ol11z/Lkf42mK1eGlV8MWEPaPosD2zin+8OxcPotDIomi52QnnrjdO0PbmY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyG33Ual; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyG33Ual"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B130BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771503893;
	bh=jonwsE3lJTgS4pkRJ/jg5721uTXUEq7FgeiXxpuQT+Y=;
	h=To:Subject:From:Date:From;
	b=qyG33Ual4cpoLW/8puhDb0EfiCDBr2cDRStewKQzsG+9HHfZ9Riko9000OMwMSitG
	 hXVmcA487XB3qVGGurJQaIBMOTY4haR6PZ2bckAgfBEAwtufkAx/otuhOxp5Fzv96T
	 qxHcZa3kaekPcqSEgcVWaKYF5FG5TNTne/ZzBc/fc2OZeGejxbuLoyLP+uW+Anz7qw
	 e8cSmS86E5dUdZs0Db71F7FDLl64wED/YW3KGqM/PwtnB0lyjxXstr/pp9e7svI2+h
	 oYlW7iKGWIYOJ+8VbNa59I5TcbZKE1uUvc8EMmjyYaGUVTeTn/f2GP6BEPeZRIunlJ
	 L6PRa5pdIsJbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B06EE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150389362.22444.13266909661977562065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a414bc7814f7553c9d1c20919b4e61e35bf390f2606a4cacb1b7858796efd9
Date: Thu, 19 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771503893
