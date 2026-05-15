Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204283C4177
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778857234; cv=none; b=CrHYVX7saCQGS/FoKoqm+ngbYaLwM0ussTppP5tmt8I10XTWUTUhrjV/PQM8j/Vth/Ik3R7u9OtaG1hRoMIOO/tUNj3lV1gHxAzv4LE3PRih7Mf2ltfp+XFe1D0oJEqkRUakyAhoZl1uB/sDBHpQkSyFD2s7mM/cMe4gE/QX3gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778857234; c=relaxed/simple;
	bh=dJKzkn6NA3MhVtYK4PUgylbCjfJWkx3ik1bGNrPHmOk=;
	h=To:Subject:From:Message-Id:Date; b=EfaW/BWLkEVhj8CC1IHVFeAudSuuKiB6gQ1ZDTQ+YOuwOe1AtEFVbFhyTtPN7jczzcQjORqM6mPzZtcCmNvHdx2qSHBgtmHfB7L5gYwU1/+vK9O8hgN+/y0GVXysJmOIlxyI46wxYwx/ZYI58WwBGx/MOWbSwabVbbdOVoLl1D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSu2GZYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSu2GZYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB226C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778857233;
	bh=dJKzkn6NA3MhVtYK4PUgylbCjfJWkx3ik1bGNrPHmOk=;
	h=To:Subject:From:Date:From;
	b=XSu2GZYPXkcin9AH4n4r5mtBP38nqgME+4EX84GEeNYr9bjak5Cu00H+wvOKWsUAi
	 Q8dluQohtyIs3yPgbrXCYig7v9UXHvVR5zRjKL8o80REapD9/KSbD9xWGhZmfsDOVi
	 LYJXraVe8KfixJnJaKLyf2uuZX7nQmDexTy1qhuQi5DCkqBVSJSJzjdeYKPwcPCVR8
	 6bj1Su+EWPP0M3+4Q1/UUCZt+68iaPq7nw8Inm2Zkr/p+6wmZBW2Xkc34CrJmcOSGR
	 MDw4e/J5vILP1cWloMsL27vjKzQmO3YGFeOpuNclWOWW1rW1Zmoy1DOJICsXtUdW+I
	 h54ABtIo2iSxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1FDCD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885723369.6439.4791314513992552772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db29f9ed811542e6478f52881d9a287475df0e20f01c5b9ce30254d161a7a112
Date: Fri, 15 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778857233
