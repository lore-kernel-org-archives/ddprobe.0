Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF1713D538
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711490297; cv=none; b=C5ltLcF7UA4b1UM6dctJFWMF1UR+n8RFNLgTlTGwQgxZPkticLFunjO8zUnd8Q809aPn2prAeRn8fWb+kFOc+rDC8pFeAxNcMxaZH4kj+ccF5qer4P2cA0liRdg5Fa6EaKt+KLy2NoTwhOQysi1io3gBmMtIXpV5W9WQyD6qdWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711490297; c=relaxed/simple;
	bh=RDHl/JDAjfDuzvIwTr6JOG14QTUO6rR5MkKAHtviad4=;
	h=To:Subject:From:Message-Id:Date; b=pCqHlIjFP4WPCSx+WCz3ljUB0rc9J+TxBWFi24kRv0N2ZRAjc8m4YVUU/BeLaJnZSQ7kIoD/bTy6uATcbrh9PDqgjOdFaqXdRWTmPi73puFFW6cuKqvcBWwl6q9MXq8z6Z796N+/3kCWvD/M/aSO2R0WpN3+07wVCud4NFA2F0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHY6FSz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHY6FSz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D896C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711490296;
	bh=RDHl/JDAjfDuzvIwTr6JOG14QTUO6rR5MkKAHtviad4=;
	h=To:Subject:From:Date:From;
	b=WHY6FSz/gmyU4C7zUUP1JbnK1t8KRZZvI/6OUhOuy6ssL1UDN6rQLbmTNzwjOifED
	 uT8KyqQDC1svOHa9E2/KyoFfM3SqV1xhtZtd/gHn2oGS2Rcb+0CFynnUyHMVg32PRc
	 5GUn0w8Rc4Fqov5hOjEp0javFx90vQ/vHlbsY8LxKcDYJIIDpLi+ciK9GTe6dRAKHS
	 Kfk4gp0SPaONAMQqGvodDexGfsKd/MpSIDnzcPe+g5ofT0wdscvO+qzXBN8dsY7bmr
	 968Af2feNs5ioaZ638m7iGLlC13W/3cF1+V8L5bT9TL9q2OlTyzn8yGnHMV0ehI4H5
	 nX2Vmh4cDww+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61769C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171149029639.13092.12767981563887891760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a338979b1de5c1f67d4e0b10ccadc93879eb01441c8169b6c8a6c752f66eb3
Date: Tue, 26 Mar 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711490296
