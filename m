Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3229728B4E8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745513394; cv=none; b=h/Q/cakvDJK3wVxEGJq8B9NJV9f2m0jY5sJi6hdfsej77vniBvxQKr2HynAWh+hjGpNbpSvJdG0lSqz0d4lMiNCkpCYH1Bw9dMDDHaBeBuwQghmoMhY06/Lg4ByLBXxZ+JR9OyPmiYfTSWmuMEA+XRiLldYP7YBqcT5mfzSgMV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745513394; c=relaxed/simple;
	bh=dSjuBFedXpQ69rvWSjnWxk/i1irff7xDeC98sDWOuO8=;
	h=To:Subject:From:Message-Id:Date; b=BqVeu4f4ZJNJ8NAtlCyyzVMDDK4sS0GprN+TivR1NlR8+/UO00blXPFS6jScUt4R9g2rXk1hznEbYX/Ppahg8tU3U0vO6gfJ7vglw3uS2XTOggck9x1x4IVcy6j39vUC7a0GhlT2hXRX7QDGtaE3vPB9cOAWZAr3ErLaenjfz0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kirT4Ylc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kirT4Ylc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745513393;
	bh=dSjuBFedXpQ69rvWSjnWxk/i1irff7xDeC98sDWOuO8=;
	h=To:Subject:From:Date:From;
	b=kirT4YlcxI3v9j5xjZh1om8FH4+qzLaWmvrpWvlNdjlL/+CeqvsCtZj84VgS2DL3H
	 YHbr9zSOzKx6EZzglbkhSGyCCnOnk5nYWRdWNDM6UOrXIVAYrgd07r9DOAfOoK+0fM
	 G6nV1Gvr9qo/+yGi1rkek4TxX+xcNajgkNON/krMglEqQpdm7hyydxzgZ0aYlVkpaW
	 TCFfaFjimg5osOnQMpVytOYOUpAh3UOPDEPeugVtTI+cH0jpYSogZdoPH4p3TbRL3y
	 MA3b8w5kDp1CTX/Yi4Jcc6BrH9iAbDLbf/GQbkpBQyLN4BbVb0atj9Tmsl+/H92TK5
	 06cOXTlKJ/ZDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F898C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551339357.6939.8305040230037497811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71c5f28e0b40015fa542656de65d319fa46b4b6c27995149f4d987c52968d20
Date: Thu, 24 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745513393
