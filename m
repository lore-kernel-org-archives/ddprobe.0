Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4B2354AE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760743194; cv=none; b=joK473F56TqU2i+u1XxXd6RY15MekpVurDyTEWePjcZ5fbHP9lPtwpB00nWA6HecOn081n2X6+IzoP+D0en2e0Bz1nMzz2JsEr7G4r8oMnMEKFrUBP9Fsr1Xyf/7/If/nO3IqYSkE4076nCotBMIRanj2icrF2sNfxZDlvm/ISs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760743194; c=relaxed/simple;
	bh=Zzb3llqTqCMU7l299fmvxKoTJvnTTbX2uvIYvbvdqIQ=;
	h=To:Subject:From:Message-Id:Date; b=ehpsLN2u9GTG00Ia/AevGH6edKfiHgtPb+ryHNknIfaSWEl3MWsnDtn7nJduHkhc+e1OGcE8Oi8qTDnmo21k2Y4A6RI7gG9BH8YJezlp49HkePVayNJiWZDSR1yjnXLNUFwcNURoLKPZMtiht8uBb90h3HDeMInbf+juX6pL11s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYIhTpzw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYIhTpzw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F34C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760743193;
	bh=Zzb3llqTqCMU7l299fmvxKoTJvnTTbX2uvIYvbvdqIQ=;
	h=To:Subject:From:Date:From;
	b=qYIhTpzwMkD/PYEx6XmvVHF47R9BN4kqo97j+A/3cLd8iY2OZhxMYb/+ILQ9I/x++
	 u0tBdUUOKH0C5sdERBpL6cALT/hfhyTbSMhlKJIe31rbSizUaqaIxlFqjXBX14tBa3
	 v3ZOX76JlD/fd1jpB9zXhXshfw0c0rHdTS7+KZwh4RN8R+tjwrN2Pu01ZT4H1+naRZ
	 qvrWftqAQ/bOht+RXQulhEhfRXqJfPG7DtlW1ypYfu+dX+pFstODdHQHfhufmHsdYW
	 kFtpTluRJ2gUX4dt0gHjD2nAdn/b0suYwzWX4W4GlaijiocT9EeY8vK5Veq5yKy9aw
	 HkQNNVdpkHojg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99295CCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074319359.14801.12654795490826304487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ff4fb9af02744d2cd8e3822e34a9fd23a41c7467a26120063452b53eb63107
Date: Fri, 17 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760743193
