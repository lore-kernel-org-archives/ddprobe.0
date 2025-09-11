Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1668531354D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757608194; cv=none; b=dx+zUWskOfu1FsU6CtjymkuqsiXXhPJ3UOPVMbxIrPUfbIGgo5gi97FGZkBNEtNpH25rVd5uyF/noWQbXz5lvo0VahJoUWN1kLAk89Bfu+P5UIjksNZmr9lXfnbRbxuj7+KXmByEm0snm/Ipmtp2rWPIvCH+0hfQSC3cRnzqTZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757608194; c=relaxed/simple;
	bh=Bdphe4LQySUUJ9v9A7UO1K3l+xWA2T3kH7pS7pGQSw4=;
	h=To:Subject:From:Message-Id:Date; b=rZQFWlPLpWu/Tq2AuWjxsgikj2GXEvY3a/+WT8e9S21Q0yydSpUPTDkGn6AM1GrM/R+ONRTTwb5s+BS+rJ8g/Jybls8tzjPNAr06e8AtZIBnNTXtswuluPBRE0x7R5JstmkkN/nDIxsJDH98nHWN+knyD5xXpxA/H6bsK0PuiDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bujoV8pE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bujoV8pE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1154C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757608193;
	bh=Bdphe4LQySUUJ9v9A7UO1K3l+xWA2T3kH7pS7pGQSw4=;
	h=To:Subject:From:Date:From;
	b=bujoV8pECM7BuTl4ylszLXs2ygS+wDT6q7e/oRRAqF47QvGFuCfDNLb4zT6I7yvoR
	 gNEnUDBBuJnZuT4Rz9l4ztyAPA+M1BMgEgOumAzHntjaox7+CxphQk0rlilSBLastE
	 70W7HZbezhIK5vmZQMmsBBwK/gykhkhsMqULLXL9GTOeYfb2BuJ3v6whW2U2CKgLSO
	 OkuR+xptfB0iBn4u2oaSBmX1lMOpYHDsDY9DJNXgdzGqJ6fk2vY1D0iQ+uBMuRdKz6
	 I64xLbxyiaDmH4BDacGwICZ5Y/g7meBOJ13sB5xEx64m+fGPjs0bNJ/7wxW991D+qx
	 ZR/DhGIvXzlIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFCCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760819358.4042.2619999090415258056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af57c9da2362442677e7d070ca24bb85c486c0875ed7432cbca93b2981883bc8
Date: Thu, 11 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757608193
