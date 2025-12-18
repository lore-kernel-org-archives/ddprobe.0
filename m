Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9993A1E66
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766093034; cv=none; b=Qt3tdcVpS0+cQ1QAo2+d6G9OESiTohlh47Na+dUipekDpvhNZdPaTVFoAdLjtZREsfFwrwdAzX0nN/og2cC0DM+qnEI85MgipQkb2QDi3hKrTWARleXrRMtyeQECcQfSF/0DvWSqLoLx26QT/9LTqnNtxYJzaBtwI+zkf6trYkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766093034; c=relaxed/simple;
	bh=TfAFQ00D2IDKo7/2h/FLh/JgWb/L1PXTZJkmjc3t+PI=;
	h=To:Subject:From:Message-Id:Date; b=W+8VPFXteuEg2X+DfvQl5ANHVDDm9XSU5tY0rebiCyjqUDl/hz6P4gc2yEf05E+Jzb2+pixPlhmI1QfywQdLvbBTvQd4JY8B/FRe+hY9ZZwNEamjEP1/lT+TMc0aV/hnI9x+gW3XpAGyYrvFYo0nHSKFAqH9JP+FzLBiTd/90BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgnDqC4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgnDqC4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E66C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766093033;
	bh=TfAFQ00D2IDKo7/2h/FLh/JgWb/L1PXTZJkmjc3t+PI=;
	h=To:Subject:From:Date:From;
	b=cgnDqC4L5+H3QRSrsaWLjntU1WvzTTIQm0ZfcTde5EGMYOUsJXRjU5BfbSchwe1DU
	 kiGrwDLkLEJj3nDmyO7kqzj0yp4qDL8iIDgq9HmBJ5ry1T47ORmhD17K7XYWVFP01L
	 enuFjTBFhTPXXGfGjBIayis55pZ7rA02vews/R49Xmb4IiUL3/iYHkYmB3GBZqBbrr
	 u3yIUrgfLFss6WFULp+GBpdCoMC/vHmFWocW4M/DvqUxlKwuIv+uXlhfEP9KxMZf+9
	 xa20Q/LUGxv+LnijMXf2bR408SjU98KRIdbQFHiU7H6wR8RQgUjz1LcaZubHPk6o+k
	 4NyeTUdbdTLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E9D711C4
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609303358.11410.9878424693974532859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defc26a6f22e1c29798ba3d9b9485a3ece71772a9d787c5b0cb77678c1e136f2
Date: Thu, 18 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766093033
