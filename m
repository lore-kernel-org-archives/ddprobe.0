Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BA342A80
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759504194; cv=none; b=AklA3gJQdbbZG8ZMmPgz0KtovvJktLS07fefSXPSXfpoxbXEl5zBzeYlWg5IMPQ56MEq3mynAbuQQvd1Eb4wasMto+f1z2Gz1EKm2EOxDb4/95cI+gzgg+oZVds8PBQMMimI2eFkr7BD+L4ulVL/dQpRWlfTVJu+0WiPiKSAQiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759504194; c=relaxed/simple;
	bh=rqkH+KNTRlsF4UjAwYIZngak78Q0SMCnqMbzHOP9Ckk=;
	h=To:Subject:From:Message-Id:Date; b=ulGPxGoUu5QYQL5rVLA9dEH6ze+LjMArVoTM5m+/Z1FQhrSyTW9kOpoaW58AzC/tYPcDr4XXPkXezboUIcCz120pGYhcUPnVfmUSOxMOvmzrP/DhTwMAW7v24HBdkZ94GUQUoK8qjHxhA+6JXw0eR1u9QU6Z11k+UF8MpxzlZpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdpXLILf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdpXLILf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E8DC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759504193;
	bh=rqkH+KNTRlsF4UjAwYIZngak78Q0SMCnqMbzHOP9Ckk=;
	h=To:Subject:From:Date:From;
	b=bdpXLILf8Ie5LP+XKcAXAYfmdpsKr689BqBgAjAAypfE2O6kTdfeleV2CHdzuhr98
	 VBkjOkfYWG0unxGvs8NPlmfDXJ2mp+wOt4U5LRbhjfLza+gazyeIRTM7SyK3Homn47
	 Tcg9VE9/aatXO/dAvjMRZLarjFPgPiqkqnHvGWP7pzaD+m57CtWgOFyxgla9dFD7Fn
	 ML9KAC3YuoKdk2oIfzkL9cMObr81GQZqN/OQPKpcJSs8PI0TNZeMRMCJMjVcLSaH0x
	 /517EJcGp2WwAyL1iJhUk1FY6/k6H1EE+mncLfW2Nhhn24OHrkjzJfEWxsMOTdG2d5
	 ITf8mKmK6vAeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D6CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950419358.13055.14419720113510232434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c96a30f208867de516b021e3560703618162ff1f1d848953725fa4a8cdf503f
Date: Fri, 03 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759504193
