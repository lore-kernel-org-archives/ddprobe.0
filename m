Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2660874420
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754240994; cv=none; b=FXSQiQ8kw5XLNpX0kMp9+9Ds+kObEg4E0JKNaRClawXZvV9+f29Q4ze/HojuHToxSXPpcfD5PDCI5WKUbbQlfdoH6EAsmsk8NUM71eD4/nzQMVDEOI4GnY1qDNwwNyIK1sA2ktqH+LQwC4rtfAvdIZmiCAd+ub8auteM79hHAtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754240994; c=relaxed/simple;
	bh=mzWNtvxKj1nj5EgsSoWczN9QbaDRG6af3ZzORDpvWRs=;
	h=To:Subject:From:Message-Id:Date; b=WSO+c5cGLjUbJvm1tVGv+4m87hskIDl/GrYuQj1Up4nl5tSKhkWsuWonK7G3XvkQtQZjzRg2ZF8GzzmTYSI69Mk9n+yyeIMgNJSLx2r0/d2Bxncc2JvtX3zojdCnwJzfmHzJjpRCdKdy2vFFb2WOn3mi737hWN0TRwVIPcWnVYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmk0e+Zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmk0e+Zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A343FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754240993;
	bh=mzWNtvxKj1nj5EgsSoWczN9QbaDRG6af3ZzORDpvWRs=;
	h=To:Subject:From:Date:From;
	b=tmk0e+ZdMmd8yq8pEi99rlhYnSnbX84mfnBXnne0n1PKmxw5NFIe14wdiRtYXp8TC
	 ZxDfXtvcSGH2oytffinr/6653iIR7BFvc65pndWMRwFC59tAaOUrzazu1MPLxi84ca
	 5Tbwbrc2KNbpkJAmlhgPc4PXe2bxdScTA2xgx2WlqKPJg3NDdGrkLqK+JBnhF7UPYE
	 aZY0EuYyurcH9AXkG80qfEHfBKeReCD6wVZb79HJOEeQi5xhq3/8AHTOZrKgr2WoFg
	 Hd3SYnbDLXRrDKqhK5v3Hs3vOvbSTIkOSMsGs5G2nqmuV7a35r8aqAu8TozkXeKhOy
	 fOhxaTM0ZJ5DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BEC87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424099357.12109.11871440343656005401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0b165eb075bdcb6fcabd4c2babe50dbd9c76ffc27a9021fe6260a605976cc4
Date: Sun, 03 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754240993
