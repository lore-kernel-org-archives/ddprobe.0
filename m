Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A45537F723
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771940094; cv=none; b=RzvAFs5THtm7Xf7X3lFyGCzcNAz5RhFWXQqvQFFd48fxBBAP1ex62Wq94bquBAcQWWclEoW1bAFpWPfWuYShw7zzni99mQ1fx+3tkhMAaSFn+sEhiTkc4cuecOGoaAqGAfoGHvkjX/jolemr1lFDQX9NhqWf00I16TLpJocDhqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771940094; c=relaxed/simple;
	bh=iEFhZqgPNP8jQ6nRXVk4rbjYlhoH7Ff11/NnsHWWz40=;
	h=To:Subject:From:Message-Id:Date; b=UnAUNDVpsSwbEMgSc59Qtmy7yST1jSAL9ouxB9cO2QNden4+8E3uSzX8yT3zqnAH363uZxW7sBx+prSzWuHgH5J4naJ2mYwwC3UwHFQlLaLcRls5vq+s0tFeUi7nj4fFII2yFaltOksKdOykNnNnMTkc4HNHgLYpRdI8Vr+yNI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KekxvBLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KekxvBLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC005C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771940093;
	bh=iEFhZqgPNP8jQ6nRXVk4rbjYlhoH7Ff11/NnsHWWz40=;
	h=To:Subject:From:Date:From;
	b=KekxvBLqBVnKYRZDEGF/8goZHj7bOuGQDGOCZlp2xgh/LylDQG5HEHYxi00mHVPYU
	 XXC4O33k6XowOW4dxvrzCo++zm2ECphO/36TkaiqoG2XP/hVIzpZJhnzLwyLt8nvMA
	 93HII6Q1t+SY2EVKra+IScP8jMM8ZUXYDC8OOKwxs46a7U7sB0pTX2US6lX+7LdUyX
	 7pD85z3iCzi3LNKsWk3TQgyyao1npdbsF/+Jye1WvCnqGQ1iatklshl7gnh0u1f7QV
	 T9yhdy+UJl9SsfDb0ojwZTOAKcYP+pIZ6LcvsilWBsJLlctjn04lmTUMgrxwrixTkf
	 HYAi1mpHOmVVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9522DE9B258
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194009359.4894.17764289583764276022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36da75ae8b27d8565be0c753e2613f0065c85288a2bf1a44248c20975e57b320
Date: Tue, 24 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771940093
