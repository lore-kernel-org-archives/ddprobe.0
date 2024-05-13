Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BFD77E777
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715587343; cv=none; b=DwtS74mkDzxnjr+wDkAgLWylyQOcgPvucF77jAXOLnHMfB5amY6yco5YOV8cPh4+T0om1hepIqCb7cCnFCcIW6dri0XoCw50yPE25XXzlnohxqjf1aTOYJwaToEZtYTAuVU0V6qmZPk2zATWMRYUMB1rAGjudUiW09HUopRyC+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715587343; c=relaxed/simple;
	bh=i4qDccrIzUw+5Eyx8b6yETwlJZ6+oeVJSfWPZjqkMow=;
	h=To:Subject:From:Message-Id:Date; b=NxRcG2QX6H0dS9HCx7RZS0VJeKV7PLfwRG17iJjQPXG3WfaCweIEs9Yv9CxmjYpzl2o0MTwkR/zXKwFWBHXx8rqOgH1DfJsWwRiXBkDPwgxRGZX/o17hRR5ZTQ47h5P9qC6SPjXk8QJHjWHOMNvRFmpriTe/RBNuhUOGmMbpV9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azGZzmMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azGZzmMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DF43C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715587343;
	bh=i4qDccrIzUw+5Eyx8b6yETwlJZ6+oeVJSfWPZjqkMow=;
	h=To:Subject:From:Date:From;
	b=azGZzmMQY08zvoCAUED00c5x0P2k0qilOaND2Ig5ShZ2tqqJGMXBMgVu42nWJAiKR
	 MBV3gueakMaq8SH4DD7WgZcA7GnBcXwrOQCW8H+5cWMFR9J1p/7NY+Fpl4DfXF94tx
	 GjgBIkr1vFKoUuRbWbmbX436aeWIBk1MMm9hCkrR5tGP6yixv4tPBUtHYQE7du3/tU
	 OEZIVX6NI6SMkt3jI1n+/JEaDkUkp/vfQprLaWuGsQ2RQhmeRQFmOI37XTQE8iQEPH
	 NL3ZLQuIjLn3+D5wtGf3NOAn+IzQVlJgZpp+fDLVyXWKNv+dYWoNajE4XGvOYmqhto
	 StsLjTNdNhDDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB3F7C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171558734287.29466.5619729811692685979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7be4c3ae2ce0298e394f2a2b1a4298ee5409475dcc0e22c0e50ff0800719ef
Date: Mon, 13 May 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715587342
