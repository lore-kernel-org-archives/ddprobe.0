Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D46113DDAE
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780125214; cv=none; b=exM0v8N3rkYRiMqeyHEp3A1Iprvja3VDClzwJeL4L6rdMnQQ+C/9zG02kX1sjbjYAkh11HECplzrjYxzNJ1U4c6MdxIqXskylRSH8rIMl/wJxbAqqjOS+n1tn/KP9mR7QhezmvGa8POTE4SQX97Kfw2G+nh216JNTt10bS9koTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780125214; c=relaxed/simple;
	bh=Ub31O40UsaFyqoVEC/aor9NL45yMDplh9jhjt8mlzB8=;
	h=To:Subject:From:Message-Id:Date; b=Mwd5U81sDLd8/Hs6CuGMtrLR7t8nD5mZWDORtJ4BQ4neN1lPB8/G6R6lVYiegMAiH/ky8L8OBKlqieZU/O2pNhFieNcxCUUvq6oF4h2AVP7zbnEBXsclWo2dmue68TKzU6BI1egTOKQuNokOdiuFSyv43mx8xyje6Yp6/1wEKm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hS55B7z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hS55B7z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4834C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780125213;
	bh=Ub31O40UsaFyqoVEC/aor9NL45yMDplh9jhjt8mlzB8=;
	h=To:Subject:From:Date:From;
	b=hS55B7z737jTmv8SKcMy7HCC7UqKUgbjjyg/Y7miLlC7neb18PPVX6zxE/AX99S7S
	 XIPFK5NWVsy1eHZYCoC4JPedQzAIatOGzHMGjwXSuPF8dTmrrd6T49AOOHuHuS1U0K
	 XQNex4eLSHJlAr6cutQadGyBbssDIYQFGOo26OJxgJO8DQMX7oFIBBu4kqi3tW//9P
	 sLqCpOvAADnwgh838S19ZW7q1j6VEyIzpeBAaKMek+vrF9Yin0VihqgAKMim+CBtrI
	 9dCR1NUVKeD935z6Mqw1S/V7A9Chp/CNRH/HfdGOK6au4WEikoBg17cNlBU2k7xMDQ
	 hFK430E1OnThw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85E8CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012521368.31566.9210171200490971539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ff47df8bb6ecd5a77ab05d9ad618e4fc250ae340ee657b144a5e2293e71d24
Date: Sat, 30 May 2026 07:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780125213
