Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFB57E0E4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758961194; cv=none; b=dOGPt7IqSeuAMJxIKNDpSRUWbFw+HzmzeyFbWrQ4/JSNBWhiinFZs2QbHIkHYdybw4uYMFO/R5wuMtRq8V7GzvL0z80bGATrVQlQYD4wZIIpEl9/36M7VdF7wO0GogticARViGHjRskco0rtRG/ftTazN1zFrhhjoKY+yrYO4h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758961194; c=relaxed/simple;
	bh=I9GWsZn0kbRgxYXiTL0C6wQRnAA1l2XF1fOdl/kyBBg=;
	h=To:Subject:From:Message-Id:Date; b=fDEebUGGOjoZDsRHAsUDSHy0Rjxpsu/g9lcRGT1I092ceDoiK8vWPCGxB1lgmKlW37ZDhRo+gZ1SudPnPjSJDnSLCXSc+u7eA6JrN8wI5JFGVooceNExAGrbGfEOmsnxB25PD/EjxcZyHtjLYOrjr5qPfShWt40T0pvrZ3g1Yw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgvWx/qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgvWx/qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD64C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758961193;
	bh=I9GWsZn0kbRgxYXiTL0C6wQRnAA1l2XF1fOdl/kyBBg=;
	h=To:Subject:From:Date:From;
	b=pgvWx/qMIb492g1/64f+HUekoKlmsxTgW+67eL9dOuhd39jlksL5wAr+EIrdwP4F4
	 2LkerJEFYHRBxiz6tKYriWJSHnKGyXxq3hlty+XWM53+56+sBoD/LHhHXwWdsehUSR
	 noBS56CA2+f/UbcOiNPtfVWmoo+iGWuyNEELQWjk8gl+SoawCUGMJqtXvcGJ/L8Qvf
	 KBUp576yggB/EtN9CDi7vlAe03FmQEol+iVV0GD8CHNe1FT/3sYjyfRCxAPOMWs2mC
	 WftcC0+23I6WFRTXMD0+lGPg/Na06ZchsYXG/BIPQMoHekPzvkF7eAtgbwxb2Rb2/S
	 hRFhqeXiQldyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB4CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896119359.18889.3821190567922005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763347348c8b39f4aaa5dbf5986dec620007d5292cbf8ea8f8d946d64aeeca3e
Date: Sat, 27 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758961193
