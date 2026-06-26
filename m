Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9EC399CFD
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782482254; cv=none; b=NF8AGEPffBQl2IH7R/uIPqtf2OHVxKtboNl3e7qaYstgiH6kmhgQ1qaovvkyRyK4Ll/vyHOYS0WuKK+X5XVg6isevII8oXvZmihPazhQ2YjOwku8fbM58LRFvm5Pc3U4o2iltFCILSmiIShhkiMnsSNYTS675pgY+qPEWLk5lM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782482254; c=relaxed/simple;
	bh=V50Jgj5sVni0EWwEKdr7t7MGnWY9n4EADq0STe2eh2U=;
	h=To:Subject:From:Message-Id:Date; b=utHiKCh6oOLRCT62C/0c0ZD+OpUKkh0jV5UBV3rPgcDjQwx89Q2IqKhHNlDSLakgxsf6SCePpFvZKSytXOFLkb7iSjRiI2KHypdqw8lA8+5baPpuhGPgixwvig/5V3DWQgxLqeih9QUZaN9W7yDK/gwU93LiSpNVqd2SzyPNgFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAccipYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAccipYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F47C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782482253;
	bh=V50Jgj5sVni0EWwEKdr7t7MGnWY9n4EADq0STe2eh2U=;
	h=To:Subject:From:Date:From;
	b=FAccipYp5pKTY6xi5MvPWZejCA4ofa1H1YmFnTEhgM25jl1Wle6QPZ0/E/mPUl+Zj
	 HXGJr3oCR8WyjpbnvmLWE4qSgXJJaKJOKohNfRPlu421aQVgNH04odC16ClqMbv1oU
	 K5Odm839R8bk/kOaiL9zFhtsFt8FLtgb/L6ZfQoSuwgXD1m1VfPfOGHZV/8/7AQN/f
	 ORXC2MsR/o3pDl4cus18LleqDeajibO47Mx5O/emSuI5f2IwLXZOoRotnDG/vONj6I
	 GJQoxqocWyKmWUq8BGOp+N0rnVv/HemRy4hU8B2suOknJyM6Laqi1SS0TU5HrkbQEE
	 fWgSxgxti1hMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3874C43327
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248225372.23272.13829876236614882619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018a9b4e20525c1af3743d699cceb508a3e6c20c0d6a41da5f721814183265f1
Date: Fri, 26 Jun 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782482253
