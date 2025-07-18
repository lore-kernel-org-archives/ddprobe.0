Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF14C9D
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752805194; cv=none; b=sRowqyeWePQhDc4LH/0rB9U/hOA/4cmlWSPQyqeTcwiEiopskH67tUFdinRpVq90YT3EWEedxA5Pt4tGp3PZFBp/RqCkhdRT/k47ySNyKUB4oODW1hUmzpZ8Jxsp2ri8d7Q7b5B/oD5HLqD8rbGrSzLr8Au0Y6L5JGRdJ9kVNYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752805194; c=relaxed/simple;
	bh=KAgaFBZ/Z3WXhlkyefjwxBATE74XvaX5ZzracsYRt64=;
	h=To:Subject:From:Message-Id:Date; b=Ijd09gehCL/Evd2nQI3AbEoht/7aphY8gluiBrTgxhYGqpGbm0EZrIMPXb02xo9j9POgV0xx21bq6qjtf1BpeEyEZjZpcykWYNgWtcUxDvMJghBBA7JhiMBd+FyWIu4IBtwndhqnTo9Gu2OSo7a7X9o2dS4jzrSHvACjL4dyHWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgiVr4px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgiVr4px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46D6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752805193;
	bh=KAgaFBZ/Z3WXhlkyefjwxBATE74XvaX5ZzracsYRt64=;
	h=To:Subject:From:Date:From;
	b=FgiVr4pxR0vdMpqd2DhXx6Ivl7BO25z4w3i2TTh/Ajq6tE8k/OZjkrT/GoxZD9ogw
	 kcgaLx5Gtd+06ajnGAttlREK4CdAy38Uhn3Mw91SbNaYWu5bxosL7rP7Sxjk0abgm+
	 Lxyty6jGMUNAlEbdHVb+rYdJtsgoz2uHfeWku6C8TiaYcp3+mrIcWOhRAwUOSMIu0N
	 JUutr5wHbP7T2Gy/0zK2Qj6Jaz3ZnPCLEtbopv9PG6c6/ds8uaK/Fmc6naGIJFwgOQ
	 53a8akIvTB415yBOslQlZ8pn3KtF+qzaF0xYQxMWsyTmwuuKzpxS2CM/bhM3Xw16pb
	 AB/6zjEMsD3Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C0C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280519358.8581.883040120526028277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcc4bbb3c498b19b186620a900cb89abc2c64ea6e7569836df5db98f0cd11a2
Date: Fri, 18 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752805193
