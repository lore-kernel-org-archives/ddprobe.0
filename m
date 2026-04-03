Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191BB37E2FF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775207134; cv=none; b=aMvs4X+xudt7OCHy3VTnRmJcn8hNTh+gsh2tZsBGk3uSGFtfDXpSdmTZVaur901duHo5NFEW3OG3m8IaxPZgjyzAAreKHkWLw6NmA/3KQkoyMbDlVuoNCWA3vWgUd5T8Qk+nJJc76a9yMGRJ1YwsjIZ6ihX7PQOnMjvJ8T3p3Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775207134; c=relaxed/simple;
	bh=6wl0otHx++xNM69Zil31OyWaBfNLVjJ0gtGP0mDiBzY=;
	h=To:Subject:From:Message-Id:Date; b=DiqSpGPEBH9L7U50N4Nx30Kn3zWwqWf4i2nWgK0MVKkGZ5OJ1BBDVi/pRvnWbXd+NhBrEon64sP+h9cRwY/twjO2jLpAtzwqLtj4Ui2yNK31LYb6OOkijvSnL4uKpGlM00qfwTfk87Um2m4ebQ55hICFxVaybT9WjGutLmJ8EIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBerbB8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBerbB8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF932C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775207133;
	bh=6wl0otHx++xNM69Zil31OyWaBfNLVjJ0gtGP0mDiBzY=;
	h=To:Subject:From:Date:From;
	b=uBerbB8+zj9iHjfoAwmpTour7ZWDEjpIXviCLaOBD0LYS72skGLt43LdRh1LFPcrO
	 U1MayNlzRWxYF1P8WvwG9Djn9PEGoE3thkYu7oQrh2CMVuq/tr1W+YwB/B9/52ahHM
	 OTnA3o6Bd0LTJamIP0kS/PmnLPBVLehc2fyaJglO3BA0Q5hgTva6xj05FYYJDObsGo
	 sJCx4LnjBC9M3BMsy3os/yjQAMO/r7Fm0GZPaWPECSATnWVAoVWUC4Lz8iE8xKtcG0
	 FnVMLDzF8h9PAo2h0hCXDbB8xbpQHjaC3FAusS7BI404MZID8TgOvFNvvBjeetfj5w
	 tDi4thbkTMriw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF555E7E350
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520713369.6467.11877261376609049313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516aee51a01554868f9e5ad0ae77c1e8d0d931846e34d590cbdf2e2c3c481a41
Date: Fri, 03 Apr 2026 09:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775207133
