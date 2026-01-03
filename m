Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8511E531
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767424434; cv=none; b=GN4ET17MtYICezeRY48dd39/htegmMSrY9jb8wapEGYNIsg5SIj2FdJBmNaULvJA2ds39eYOr4l4bAuQw1wTkHksiBhSPdCeqxVtZ2KY1y2ZCMUa2dXrJDzgqqRSK6zBkl6i/g4DVFFqolbowNyM2E9ntyMJkhA5Xd6x9lvo9yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767424434; c=relaxed/simple;
	bh=a1/mtoL024nGZq7ilI/85lsdnxdHrTl+9myU6WJN3+8=;
	h=To:Subject:From:Message-Id:Date; b=pMLN+R0uFZzlFpnPecYOigTM/vmSVCwXP9rhk1fwMcWZBwGrWRcKntQuv4ncHsgW5AjVMLZ6oXhBaXtkh05r2sf0JFeOVpJWlZ0j5Q+/UcTO55HEGP3NykD7XPW8hDJJNNSIqm0nEY3KsvrMhejJxmOCmH/mJ2ep6t1xBl8Cu3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkEewSWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkEewSWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767424433;
	bh=a1/mtoL024nGZq7ilI/85lsdnxdHrTl+9myU6WJN3+8=;
	h=To:Subject:From:Date:From;
	b=qkEewSWr1RWU2Do7Umv4BVVkJjY4D7jwEW5AtoQSMd0kclOdvWm6BgwJywxVontDr
	 mpShDAjIFNigDl6tMmahtohM30ENjc6eiboAEfwTKzfx5cFpgtqwnkiM3xMuByOiWH
	 J3KId80nEP/+TFFSPLO4S+FoPejMDDlNGb9LdOnzcRnbs1iwT9rNjV7mS2gBVP0EsZ
	 Zcvv3P3NqJSaumGaXPNIJDJhxCFFLuwJcRORY08txf209d8xjLXtK5Jbe0yKG5Y6uz
	 YTNz2gR5aiKO3MWbtDPj22mkZ29K4iayPdw0Z/ijizINTNM3roJpb1oAJ3bfdzAsVJ
	 xnuKLkDS21eIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D02FC6171
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742443357.28885.2442405502324455717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261e4f5ddbeb322c0f835bec34620860024edc9a9af42cd7e2dac8b214eb3887
Date: Sat, 03 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767424433
