Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2932DECD2
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769237634; cv=none; b=GtqPs5bCedfQoqaoPJcfzxRafeYyueO1jn30RdQGgK6paBdhegGZT4nUJVtA/+iU2mWxMwd27iLvNvFZ6oiRrg12sSElrIWjYf0H30kABK6jcDRqiXJBvhlG5UokkoxdiDIjc05DGxwVTNxSZv5Ti31QaSMfIeWEbCxGIGb3jg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769237634; c=relaxed/simple;
	bh=SZcJ17QEegTInWKKroKgsOWZpybwicylvZCxGdmGnLQ=;
	h=To:Subject:From:Message-Id:Date; b=fWxF8cD/gg0ktmxGRKEd4fKf4+Bz0U9qm7f4UiFSNFIA7FkwB5jdc3f+If7mqlU6Sd4bpwJErhbPND8PvMCUmK0bOpcdp1vlUFrDJpWIuSh4AW4jSAZxOLHvR38CBlaKZ4W+vFnBI+uqN1w+9W2zMRQhaRmEwWCvjAi6WMqU/BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2TSSOZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2TSSOZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B35C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769237633;
	bh=SZcJ17QEegTInWKKroKgsOWZpybwicylvZCxGdmGnLQ=;
	h=To:Subject:From:Date:From;
	b=q2TSSOZZEFYvovE7ds15/bj2U9eEEXOWdDMlYdUGbrPU2u4YyawS0HN0u6/QscB7M
	 /gnUAj9nsu8XSVrjDBNZfkqSyXQ3rLjNZgCA+jtiuE+4J2tlOmTfP7T5nVtHZ6r1zQ
	 WAqHbJPZM6Q7JLzAk2UgKIetKuRHEeX1U/ozEuqkHuasTI2evVq49lO7jwE/LVPzN+
	 qsEGEKxTy7xRn3IsTXubnRcwIGsXFM7d3Tv8wL1PyKmBuCZXgFAoG9kiAhH/2w6aW6
	 T5jjIa/scpznmxRgrhBymG3vmHKWjnXo+F/iejddz8u4UTrPfcqGns2nnJWGxX+Dmy
	 VDE7WEz/wNO+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91010D715C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923763358.28065.17150574105571977704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9fe081e630ce342cedc34e075b6afd2ad31edde45f07590ed06aa06cdd55a1
Date: Sat, 24 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769237633
