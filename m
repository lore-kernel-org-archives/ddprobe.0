Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435C019D093
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754363994; cv=none; b=YSnZsG7ikM31luGwEZQJkiTKJiSC4JqJ6K0IF+Pb9rdbwgebkCEehFGyhXU61R3nm1qa8VrJT9SYcv9fIC+PT4Wu+p+11U967mgFjfCz+2T/h0DxKGqFrVcVsm3wkPbqH3wdzumVhjctCFsbUHo+SkhTH60NmXSWBZ1XYr5TOWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754363994; c=relaxed/simple;
	bh=XKT3uwDpJEJAfc8cG9m8NstVV2NXfuqEDG5dzEb8yZ0=;
	h=To:Subject:From:Message-Id:Date; b=E6nnMeku7Bz7M0MRA8ZkopqoMTJooUmoCALV6Iv+hok1S5fPW1bbO4gdtbYAk6qEpbAHTutcI/ff4bjizxsjKWSxI2EHviBlx0sCspbNlEFEqN3ptmO4NIrjoAWWi0Sz6kheu32ucippC4ev84o17zdylqD20FzBrJ1gBil00iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnbdX+fB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnbdX+fB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20CEC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754363993;
	bh=XKT3uwDpJEJAfc8cG9m8NstVV2NXfuqEDG5dzEb8yZ0=;
	h=To:Subject:From:Date:From;
	b=SnbdX+fBDnlvnovMObbxQrOD1ftLpGR3pj+HXrr460oQWxMEEqKsCbWMiH6ZRaCbr
	 zCB/RJpd+cWe59wjNUFKk2tH3ql/R+A4EKU+IGIxKM3HI/JbMwuiF3K8vCLwxfbEjT
	 SucLhI4HANMSVRx6Uw3OJ9eUy2r20c8zbXx2lTp+WDeyYuEJNeEcYo4lgVRX5pIuro
	 /ou4sZGDBj89VhwiWD47S788vHr6Fqv9q4QU2bA0fRNGAeMOgHp668wnMDU65ayQGM
	 Wgh7AdGBLXgE6uZUM0vBj92Sx07SGkoAUX8vb0IZY+YgVQNcExu+2c2VodJimS3oq3
	 qSat4AoT07MXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBEC87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436399358.21522.8541738772261510556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee2b561fac12566eb1c2a0e73bc6fcb8373170fc8bacfd85ee361ee862eceeb
Date: Tue, 05 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754363993
