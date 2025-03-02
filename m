Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F42C1E9B32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740941334; cv=none; b=F+oo+JwJQvOKAkHaMwPXwqIfl8jvTzfqGjlwno7uz7Epk68kd4H8jD0xelDKix9hIDPO5IMwxJ5BrjqF3CGiM+mZ71oc2qTyzg0NfevgtclRGK0bW0Lq6zRAOXWnIaGmxJzyXBZ83gbZoF6gad6hSR/hKowaOkllG/Z4IiVsUMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740941334; c=relaxed/simple;
	bh=Ogc04WLXZH4o8/LNorcNXeg7bA+oYoiytQi4kYDwhhA=;
	h=To:Subject:From:Message-Id:Date; b=In6oqWlB4UehW7zv+3RS2HkWwZPoCRlh26hrmY8iC+DgdniNz/+IL6CSaEkD4n1HIeBNvARyMsgGZRZJrXlwnApwPvzDb6gtMYwL3jhvEvvuX4YvTStBEd4p1TCJoQ6otR7JhWzvTjJlNwoe8Er7VjILS9aWrLh2SjoNhRNYG6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyMMjvrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyMMjvrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD348C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740941333;
	bh=Ogc04WLXZH4o8/LNorcNXeg7bA+oYoiytQi4kYDwhhA=;
	h=To:Subject:From:Date:From;
	b=jyMMjvrqRtGWGbfNIvHC08GHCIFH7oCBHfoG0Vzyvm6D4a4kJWkvtvkSuH9dLsX9m
	 F4As2TXOoNvLIDZ0XVBcRpzFcA+GYnWAznto+ClRFmyIunyqHI1EmLUuL1XYZpc031
	 axlnW3xZtNvfwf812Niq50fhh0pKceF4k4fM7B3F82nAZ+a2cqep0+yyWThNiQCrfQ
	 xAjRVj900ZwcBvYzXj68MORLedomu9anQdrh2mbWL4v+UlURN+kpAHse5wbIIWGt+F
	 CAhs7gCdyEoUlco/SwHe3PUqcPf71xaszSSu38oyt6D3lyrJ8TdsSsMsFDAnM3V79j
	 5kybe88h0QFAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DA2C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094133358.24349.402300633664325975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1f709aa4ab97ef435a8b6b39abf4717ed4e1f82a6511f8d0dabfae3ff845f2
Date: Sun, 02 Mar 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740941333
