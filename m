Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A94270EDF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776481054; cv=none; b=WWfb6cIf/QMDFFOv8QzDDk3z6JxrRDX1jB7t0wbBjeZSyRaaLqKo05+sSy6HJGF9h/pkKnnB63q6QBZR7WN0QICp0BxwDFs1teLtLHAVEmaL+F3v1IHNUqCLLDuq7rmhiJhq0UineuFzfmMT1Mfl/0upPDyaAFFtPpNa9X09hAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776481054; c=relaxed/simple;
	bh=ycU7zyMCB3AjPy2NCHfuzR4U+AsnaUfsDqnhj/R4Vts=;
	h=To:Subject:From:Message-Id:Date; b=IoPhn0O43xd0RmsZtwgQAcScRmDWXdywPJnDi1kf0ZMB7l77QVnkjXJYzPV88OK+qbTTuCqInOoHdNbw8X7ZWu8sdTl8I60xeI8pw8p3tBIMbZn+azdYdl2uW+RQxE9W64qqo4lkbPx9FFCJznAIC8fNyHsRrufGlbRr0jM1Oos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2Zd5B4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2Zd5B4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4E5C19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776481053;
	bh=ycU7zyMCB3AjPy2NCHfuzR4U+AsnaUfsDqnhj/R4Vts=;
	h=To:Subject:From:Date:From;
	b=N2Zd5B4A3oCGJ997pzWRLoTjo4X2JQFIzmG6ICdeFrSP7GoNOjrwymf8YBD11RCpN
	 vvTWVKX09JLIY3PoabGrJocIIwslOGLq8xHpgC/xOeqkHxBK3EjEfR5I5eIp1PzA9R
	 wNnfmopewOUGbb8BpYKi7sErbRENlGagQKJxrazq/oI7fpWApiGZ+7TFhMnSMkxFN0
	 W1fTEMRa68n0wuzEWk7yx33Y2ONGIgEb8VbATk/JgtSZLj8ufU8lCf6lpSK62sU1Pu
	 t2ZHJNgO0j3f1zgbNZ8asxcRidsdPOD/FMYbarFc7WY/drjlUEBYyU9O+BIwPn2m0V
	 Q3uaOr7eHbJow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA99F99C74
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648105368.972.8841612320931104454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e92066ab567701fd616b4ea36ea3662d31c683a55a7d8edef8751ec6aab5046
Date: Sat, 18 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776481053
