Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4844E27B50F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779227434; cv=none; b=OsT1saAPPCn7rwZztvZyAipeuW1aSbkTjzhv6ILmypQPszCTp3NGj1CC+tdhZXKmYPpLzlihMiwIJewDDTYSh3Lzd+bhJdLcHbYAHfhWTse5yS3g+6xqVVkJDrSSl0Rv4q767ea4fkWRMY5Q6W5E+OjyIym1zZx50kLbdT/VFk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779227434; c=relaxed/simple;
	bh=p0RkGh1wY//fitxE5qmPF72vqtRkF9DCbuDoPiwkL1c=;
	h=To:Subject:From:Message-Id:Date; b=djZtdY7AWe+cITpumAiTWWfSGC91XPkyRHxi9pGu43SE+Ck5iW7dY9QXzmwX9+UohZ2EjRqNIVyNDO+53a7CvPsOW6RO8tAcWWqBKtL5dBsj737YKUVTD8a4EOrH85js/6CdT9xqMpyGFimNf8SPmbJmhMh/abq3TQkLsBv5i70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsxxydUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsxxydUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26F9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779227433;
	bh=p0RkGh1wY//fitxE5qmPF72vqtRkF9DCbuDoPiwkL1c=;
	h=To:Subject:From:Date:From;
	b=XsxxydUzDQ/qGx4vRO+PTdqdywXcE6wa/WIx89tM89nmqskWJbhqucFmnm+uWjQaC
	 1poC/pOOBajwhjw34XHFs+UfYhW2rckx3HDwzGmAgZTqI86JKE64468TZkiMohrKqe
	 yR47Ko3Wl4WI8O2CIm7vEtCgG6Ox8Wwv7f1Edbo32rq3bNn2Z7RfoShjeNlI+7vV6I
	 ybU4ChY2uo96/N3Hm5fOuQRFGgyFkiCU2JnPdOf1a4c03S+pBttRC7SkazKuAEECdX
	 zTF4qIrG/kxp+HRF/V6/Zq6WSiYT4jn1/pVcsLKVrsfR3q0xJl9J/14OKFJfl97Q+q
	 +hggQpE7eoEng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A991BCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922743368.17568.9119052169762117616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea27055559a826f8564ed20680981125692296212dce2416d90299a27e139b52
Date: Tue, 19 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779227433
