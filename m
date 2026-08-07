Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FE31D6DA9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786065634; cv=none; b=Tujbtv/QGmlwGYvJtN/4FyDYr/TrnAGoJK/RE30jvQHAlDrF+0/inxl7LX74JK0DbTwQobfIaR3Ysiv5wgIQdqGFkkpQGMRDu9on1D2nOX6ZiaYCBuFmXDbZACPM0J68GdUkpKTvSxTw0cZXMuyZdfhHqvV+FFc5mEn7LekPqgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786065634; c=relaxed/simple;
	bh=IHvzRQQs36fDX+y6xFg8WzKNSfM2vQ/22sLdWAzCMTE=;
	h=To:Subject:From:Message-Id:Date; b=nknq/POjEqghWbuRdtZ9u6nEJPGxIGakAvSwPM8GkOBF66sbYZIA/fiQYsvrflpKKrDTAThjwGyNMuWzX5Q6ai7bqgcC1R+ytvQD2HuUppUETaZrZyP6rnugTak0iWOXGLGmJYHZQcyghLmaSpJdjxSEe+t/XQ0ojIeez42c5so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSj5ui3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSj5ui3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC36AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786065633;
	bh=IHvzRQQs36fDX+y6xFg8WzKNSfM2vQ/22sLdWAzCMTE=;
	h=To:Subject:From:Date:From;
	b=SSj5ui3DjkQr7rVhXq64PZJUgYbwE2JorPGijY4alqZRjfUGzx9Bc5QoVijRweiKH
	 UJ6bDns7afjbhD+wlGprvW2HfJQLXGBKDTY06X70Rre/0BDg3NV+xJcomNZqXuCT0p
	 ZkMX8z8w/3y90cpdQkJ5SNIZPafz8NIaif0ap8imRk+pSDtdxsxp07xjW7+jR0I9Qn
	 aPs75zwc+NbwFvPeHxGR3whBdxeDB8ZsJ3WlNIFD+/nP+wU7wpGe4HcHtWPD/I6A0O
	 BlpKFfWBK5nTChsWibrwJmrfXhIAb2RNclBer5ccjcKGmT7HZ/NB0RIN9XSIGoxRh2
	 jaFISeMw/qryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F11C5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606563368.8153.9258245879420731106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f7ee7bf4f157ec21a2a03b9422978049b7753cd79ee5a52bc371a54ceb03e3
Date: Fri, 07 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786065633
