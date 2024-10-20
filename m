Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F7D1946B3
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729455954; cv=none; b=a6teS2AFHuYdpE9D7bh8wMROM8WWNrUDZqgOi8mAJOM1aye15o06Rd2/zKYcII+dKzONfeR29c8Pq5sM9cbkA/+2daFb/jF3l3kR+Pcijm9JzpSjMXM9lvO/5jH73EVzdfsYaP2FOYy4NjNl/z892m626B/hu/tmrik3S37i+Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729455954; c=relaxed/simple;
	bh=sG5P5Fv/qIOuSVUSQ6W7GtiBWruDGWuIKE3Lw+5X/7w=;
	h=To:Subject:From:Message-Id:Date; b=fKAapiPMinYmLSh8iRaEmQUfwVFCyIlB009Y0W2Y/5/889nuOMIFJ6OT+OCCbnfF/6rZfrX/jIwm3y6l8nq3dWjhoRPAN+DlqsjoepunOBQeQqYeeK/mQLaAVVJEuehHqvwmopLuc+j6bVLWbgHm4iePu0LrA8uHYKjhP1l48NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS5M7isN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS5M7isN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7E9C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729455953;
	bh=sG5P5Fv/qIOuSVUSQ6W7GtiBWruDGWuIKE3Lw+5X/7w=;
	h=To:Subject:From:Date:From;
	b=jS5M7isNh/k6T8FMgNOiQhSKYmzd+gAuPOBrIG4TDzNZcvpg9NmKT4ZA1/HhoxQGm
	 atXe6l3gcH3fT9ZC7U2rBjgfmSjV02VLeUIw99qcHMJwTzqnosb5Ytvz5dnhD9fmyS
	 dbjshNLTRUpz1mYzapjqLFuijqga64h8TXkeDBXjErc5ZqZSpkLj9cEUXFqsUihemZ
	 WvsYlvSrJW6DgX7OwWGRg7/vpc/CmalnjiINvUrw90WA/0pknrvuiDEVZ0I3saf45c
	 zJUZc3wVtqwmjZlfjhLnRonS/fs3E+/T4mTHguF2Y8RAqp3OrMMkESn4LWahoy95m/
	 OGEUOGcPRUpNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990E2D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172945595359.18004.5447058620094280471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fab5586dfdac1b49e9c754cef3e7d7784ba7f0b92d003384e98ac9be2f8a0e
Date: Sun, 20 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729455953
