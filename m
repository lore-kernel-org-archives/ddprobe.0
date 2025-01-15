Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433021922F1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736967954; cv=none; b=cHha9kIDiMQ/Ik9ZmUkYPrXgPm1nnDHHg/izS5QmiAwddOGlpTJ4uT4EVE7zloLFUz10W+S6UojfYwK2ljgA0J7fXxikYSdHJ7f0eq2DYvzs7maG6ZvQSg72B2GZ/i4tDTwijMsNWzZdFWt/NzckhVXRieyaG90+4qxFlYm8Lyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736967954; c=relaxed/simple;
	bh=MG3Wo8WuyD7UOqOJmZXckfzIJMfj4InmZWjDJR1s8wc=;
	h=To:Subject:From:Message-Id:Date; b=Nco6LRzT038Sgh61zqHzOzLPriyfaboioCn1/hMgGPszWef2qRLkC+32CqfZWzHhxjGuaPNt4exYRrY25FX+9QfO6XEnVir4UlOciISHvutsQKdBXihd5xAwSpVtpHSuFhzsiV9+khyLiNC33+p8KfXmN10PPJyOCXEWBOg03tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kynAKnBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kynAKnBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A5DC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736967953;
	bh=MG3Wo8WuyD7UOqOJmZXckfzIJMfj4InmZWjDJR1s8wc=;
	h=To:Subject:From:Date:From;
	b=kynAKnBb8JgLzdarXZ5NgGcBjKoJY0VTrCMA5/QCIqBVe8PqN95rqgA14nc6wiGnr
	 L/y2aHye69AuldI1KhvPw95gvhBwIKc/rthi7+7BqVkQr7sqwF59X4M/6rQ+4YCaww
	 4xLTIS+Au3WtLs8hu/Paklbm+X0YEUFoaU5Omoj/MujGhFLu3SMtQMY31c8BmgY6Cz
	 Ye4FDwUAdwT8g+jsni05fKFzpYheoeyWlmDTTvnD8/l8gitrllFVeVD5KjU2cCztgB
	 LLXXRiz0rSKD8jZt/CcWbtMRiFF2rPkECoXx2ijG8ey1yhLPUjivHbw/98Dt+5pS5b
	 v1qTWmQ+yypCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D27C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696795360.17327.9169970920629770717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d66817a5e28bf36999789545291832b66238388cdff94e7c76f6669da93e1c
Date: Wed, 15 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736967953
