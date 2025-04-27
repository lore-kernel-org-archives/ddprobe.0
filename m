Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4923E8F6C
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745723994; cv=none; b=umjgBuPp+t4Ym5VqSnlG9A9us/g4YE7GJ5FAb8Vro/mq8uvPntaybnJnkKQ2HiXFG04rM/EQT2Z+HFXfOKI+RURYDIuCmQTYyRrOpvmUw+xMXzzOHdenDw6W3qXmGsw6baP+G3nopJ8HwnRgUI+pWP9nPvPDpiY4aWZDn3dqR3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745723994; c=relaxed/simple;
	bh=dr8S6QU+vti2goYm9uYEzFXEpDLA2tTsP0ip1uIYPho=;
	h=To:Subject:From:Message-Id:Date; b=vEZs0JpZs35nm/TVo6mKOoCouNVR+X1BUDiK5CQhwHtYK1zUJeNXl+2dm/lJnnxupWFU7X33UaCfJBotNcU/fNDi2VfywWdSBZwKG2X4zX715Gk4EOkb+e65Z2jWrrsXVDDZsSvDL8Bib0Q+A6YsXiFtS9LGS+0iPwAu+8WeSek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARLW9pcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARLW9pcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A476FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745723993;
	bh=dr8S6QU+vti2goYm9uYEzFXEpDLA2tTsP0ip1uIYPho=;
	h=To:Subject:From:Date:From;
	b=ARLW9pcgGWo2A/n4zDQAC4FSu2dcFlHsuAg6QngnFRMt+5r2EExiVnguHspLlvLRv
	 siIdRXy8oHeHioGObhOVxF/nDRiBYqqin1Iq6O3mTcZzwVRabq3+IcKhU4r6i5BL+Z
	 k20ty+aVQg21zhCcFhfS60yFDF8IZNJ+dyitLg0S1JhUeXcu3fW/TmkMNNhglX8rwO
	 s9Ic3be5TS8vMUCOXvX/NS0jQoW4tCDB8AcULwmkobRl249U6wfRZqQabNWvhgmRK7
	 PaeX5MfHz7wc5lympFXYiruQg9K5lBoagMQqy1W8bWSB2PJm6aPRlppR75kBCIfWuG
	 0Itj/osMWTZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91995C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572399358.3880.11757815245653197935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7073737407f394b34cfde170bdce9161835fbf7ff118f2465e196c9fac6a0ce
Date: Sun, 27 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745723993
