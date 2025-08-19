Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AFA25A34F
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755646194; cv=none; b=C+JCAWJDbPC/BNOv1O/JNXTWWY0AuYjRcXPSUP2ME6KHw1sS/1y8mRERhGzM/wxuggpI+eUQe2PRfFcF+FnWVj0jU3AhNoqi7B7zhA62MRscjC2KItdOxOT5WID3zIdWGEP6nzBuRwNMzfBNE/hr3WKXMVXy3d/kry+BJljmE4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755646194; c=relaxed/simple;
	bh=oRaXbmGECcaDEZvNNkTVHal7tfw9ccuxVihbtNJ8+/M=;
	h=To:Subject:From:Message-Id:Date; b=Q3lJAGAF7PBo4HFnv6EimPhh4KM9QxURoGwhx9o+OK8GQ5C31wFpUSI3tene6DfIZ0I7CgpHe5fKarriGKxjPDxaVYiIzM1n7c6mZ29zInG89v52MW5oKwybxGoWWCUV0w7ekgH4jbrvl/WDgg5cXlJCsQ0DVdm4l/REt++kWio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RofUCCO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RofUCCO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E307C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755646193;
	bh=oRaXbmGECcaDEZvNNkTVHal7tfw9ccuxVihbtNJ8+/M=;
	h=To:Subject:From:Date:From;
	b=RofUCCO4JM7T4CxD+HboFNllFR9D6cUr0NbFB4lMPH3w7fy4c4WGo8mQEGXlYYJc+
	 iYWHwGIcAjfcz+bH7+iYymS4PR27VRH+2jvdSqb5DBl4e7J5vOwzSQQruLX6Dtl93x
	 mZ5VPR322Ftnmc5KsaiA6s8CBa0TmFUd59xsRUkRG7tXOePf48MWcjjCLnlF2Ohymy
	 meSOeG4co5qnVAxtXyBj8xmyeEa7b6lZPPf1Z4Bid37oGNYvLm4Hb/+O+tSDIp+ZDH
	 l7VzL77BzEIjUFVbdiqUHMP/VOKhQpTDJG4GWc4VRitzXEmlay865XgHJe/fY/jtpS
	 9xs1NQpkhcmaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC2CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564619357.25844.10112688888615940455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc817d724a431bf944e3e8c6fe0d09973b7510f813f468dd0ed3aab70336603
Date: Tue, 19 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755646193
