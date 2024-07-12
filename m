Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569FABE46
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720753043; cv=none; b=bFZHaa7W3Is3EMdDUiGxRjD/8/saB4tf7u/H0uz1hXJRLspQc4/RBHwHBSugDueWNfZp8VL4YXn23xc6LyYa7Q2JFYk1SXmV/1L/hGQvUNQehAG8f4v7k5hKXF2msy7FQitQqKkTws2j1w7lG4CiFuExEuEg06eG5MfZl8DjaDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720753043; c=relaxed/simple;
	bh=87+l+DYn5prHujh8ryD0k5nzr1yuKfUEuwQgDcnpx3o=;
	h=To:Subject:From:Message-Id:Date; b=tKRBvoEcAh6D0T6Efzd0nMVvAFSyUxiu2S6kF7sGuzky9gdiI1Lp9JrGEyKg0Xn6DSgNzez5a2Csj6LXlGmDUAIscnmchW5p5lvPcCBNK4/aZR6b+R5mNZN2nwYGLRIWeqIuW32VSBIvL8gn5kqGn2TyeRkFqn0IWeklds365IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiDMqhdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiDMqhdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC724C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720753042;
	bh=87+l+DYn5prHujh8ryD0k5nzr1yuKfUEuwQgDcnpx3o=;
	h=To:Subject:From:Date:From;
	b=ZiDMqhdJ1hmG+sBXgqpfWzO4oRyr2y0lDto53wSNmCHKycQ+lCxV54lCBrTE+x/sq
	 u2gguOI9CRHsAYtJgjCoO4piaVPrdQ7NQG05b11lv8T6c2t8VQmSSqLjoZvxzN3Xpi
	 p6aQRdg5271/z+flMhG8rsJPWY5cmotKAHkXK8GESin7iipM8hQGD7jp3AqlIHMBC6
	 4uoawLTnakL3xLE6MNYn7+Z8Ncv/7Yai01Ecl7MSRce7Ps8ZYxYvZsN4Ym+e7kHGL0
	 voKT7/zwbzE+ibrVUaUSWsjWbeQUul24nFyv300fFNXwp/Z5Tor/epPV1EWnfK+9Or
	 z1zli2eIqW7NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67E9C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075304278.31033.11205036604043255887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f47c95f65a33743321e741ab5d7bd4821bb882bd937ff69e7420f6a0a21161
Date: Fri, 12 Jul 2024 02:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720753042
