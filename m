Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A64284694
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770602034; cv=none; b=T8wzCGbMnMtVfV5kzuJ49mv4/Wx0AC+A0fHGKO46rAfKR3kD5u+wdjeQzuEEMEobT3hTXv7yjTYBE50IMorMguJg6RTrfyz27q5zCQPPdPNmbZfYn2EKn5+iDoNnPHpIpP6bn6z4kQcZeqT12VHqL82jRJBcR69Z6CBhn5m0Bm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770602034; c=relaxed/simple;
	bh=DR86ZZcrsqM2k63Q6JF2+RihAlJ87U995UtvAgCuccQ=;
	h=To:Subject:From:Message-Id:Date; b=MfC28MjWenQvDAHvaxsrqWbt8AUVy/veJmSn4uIdJW6TtYiVH/1JxNZFmVoF3MIAvC6Lxmu1IVSgwVDlcHnLCR5TIrwrmYLjYlK/slk/5lCNVbi+YUlHjQgCLujTFws46zzK8O9oNKcKJEcvPyb3mSsB0brDdqIw/gEJA64tnSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAcUxDe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAcUxDe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B619FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770602033;
	bh=DR86ZZcrsqM2k63Q6JF2+RihAlJ87U995UtvAgCuccQ=;
	h=To:Subject:From:Date:From;
	b=DAcUxDe15nlEFbjYFTKnJMFvSM6Gjg9Gt9E2+GYIwLYyBxSw+GsA7xOeLJjZdB0nL
	 NfRdxFad5oekFMFTouvZIevto6ZygTWd2Dq/rPOCa5KIwVpHAZG7Ju0TFsBcx0I59m
	 pIxbHdWfL5d6SfvYeHhsTzuH48HMrgGGrbIax0jF4ai+3cZf6dcGneo3mw9xEE4/CV
	 ZALF6nUV0z4UvvouBRpxqaAPovsg+uV9OxG7hv6er6SB9bp6DyvgNtt5W8++AK4TTG
	 ty81tb8D18k7KKXVJie3ECYz9+gTKapUTkzAUu2rtAW7L3+nMozSoul5QqScP7gTxl
	 ucClzJimpN45g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A528BEF06FE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060203366.26273.17821085800855341323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e177c0da2b64e7ce969a224ac4327c0377d36682122edc60fedaadf43a5136
Date: Mon, 09 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770602033
