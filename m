Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C144C2D5A19
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774098893; cv=none; b=hL4HYS1Kk3E0la2Mkvjn81SVQMucl2kS10BTXTuu/rT3OLY9dK4nWRVvaE0p9pPTxrbgK/XbrtGflgReMzjetMOyMMF4Qy35qC6utMX5sc/8+IjtCWRSymoAfc11P0sJF/KD07GwVNIPdH35N3IyM8f71G1jhzXjS4JwHSS3q+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774098893; c=relaxed/simple;
	bh=KF1inCdhf8HxrhywrKSTrL19qjx0OO00me4FnI9GWg8=;
	h=To:Subject:From:Message-Id:Date; b=n6XPRk4bXmuppPKgzISYb6jr/US7DJ0a/mMi7UTEKWLM7kZJvlsSQFOpql890tjGsJboirtxWZz0L7T4mlg1tROwB+BsCvo6FIKd6dwdImcunIGYXvZY08mOepaJEKRXw8/4aHPaLL/gv0cFGtqfWv2/GbNgD+oyKgPaK1xVW3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIcZ6w5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIcZ6w5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4071C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774098893;
	bh=KF1inCdhf8HxrhywrKSTrL19qjx0OO00me4FnI9GWg8=;
	h=To:Subject:From:Date:From;
	b=QIcZ6w5EElFUIQ6SYcot1nkI5TYi6UyEP+jAgiXrv9O8Qhgqa0j1auxCF13nMd+73
	 Oi1x3ob52LctVSVFcQRtbYINje83fBcmcQmshiUdl/E396nsneFQUthd9gPcl1YrEq
	 t9rwFG4DxV5fC7blmrJ62GqoE7vEUpoTI4q7nW5i36jobiBx3r/jPakkh74dcDl+Af
	 WnLWbY+eujvdLRezqOW+AiAtd+Vw13x7cSVy+E1aAQ5jU5fQb/NLwV5sEECD7d1ypk
	 75jWf05KHV+NpXiqphpov/SBGwcLS57kILfqeG6OY0bLjMbtayQ+vzKLYHK3ZXLU27
	 NZ+6LXbOsBT3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC51094474
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409889357.16034.16296625856695842297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a78ec3062d5b6b02131da897cff004eb91b948e63c7cf13f3655e52ec13a54
Date: Sat, 21 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774098893
