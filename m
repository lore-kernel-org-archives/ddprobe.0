Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D09F3A5E6E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777580854; cv=none; b=ljqG0brXtEm+V9CR8J63ow5YErJdSPsLLXTrbvb7LeBH/FA5oVPgb1FBVOIUW2PoFl22RF69MQXJhsYhLjwdGsIaZFw86a0Huc2a8Ghv8eU13jnXO70rNjRt2UjlxIO6pSB0DdUn14mZTYQ/XR0BneeDXQZ836eceBm9hckVnt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777580854; c=relaxed/simple;
	bh=HKeEjBX+eD8SRRx15Z2GjR8tm+VrtlVkdToz3aRqLC0=;
	h=To:Subject:From:Message-Id:Date; b=ZHbRbjV0+YH7NukJ959+hprgLPZIid/FTSbJES0pu76Cv7b2ExskT7PIOB3/goRTg4ZY0fl81Lo9TnYJKcxSk13EtVCJB84VnUWI9LAW/jr6s5ZT+pebse7RhsPCSLHY45Itx7CMLY32k5wqy2/j3y3839Zu7qDj5TbOa/h/VEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KP283TlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KP283TlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE731C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777580853;
	bh=HKeEjBX+eD8SRRx15Z2GjR8tm+VrtlVkdToz3aRqLC0=;
	h=To:Subject:From:Date:From;
	b=KP283TlOex0Dy44BoTF1TpxXanxqIL2K4/omRiqwTY2UY5EL/r8FcRHi/g0SfAhTA
	 SdBUFeR3hdg9R5TKxE6O0QTdN1dTPpopinRWtPmXu93orje+urHhtWrjGebmoR5Qe9
	 +4eVPLK6veFkb7VQlRIeZAQX42BuiizifJn47WLJBMZDggZNmlk1PLMW8GKRl7w3he
	 isuOAZxkEXF+9Rf+A2VHRZFRTCgzmX9X9Ttmp1NF2EFDBblzqEfDAiFRmUCuXdBCgG
	 DZcR3HD1K4IwkCYmArL/LEMnV0B0tA/Q6H4eJVIrileQeQY/vsjpQkkt2ykmdRtQ1N
	 PfKdLgGMJbz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA185CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758085368.10019.11779336171889704538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2de856328e45d5c89c75332943f743b2a93c0dee92d3c6c11defd64c1218f3
Date: Thu, 30 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777580853
