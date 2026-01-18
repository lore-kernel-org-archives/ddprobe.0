Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC96288D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768751034; cv=none; b=X/a7uZNNIh8v03TapUxNQAxUCzGfgLjjZZ1VW20LNnpEZNQ6NZ4ax+t2hQOhkx+onYq1Pwm5KXLvkiToFh3FpOCEaSBpa7dHwlBCfsHirbgSO/X2KLCXEfCEZD3ot0W5GPlAlZ3NLYT8EoP4/je8R3RKA4FyRWhO+ubRlkkRyYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768751034; c=relaxed/simple;
	bh=FkRHIme04ZpzCse5FFXj1lXOupgtnn+aYtUq0LKDl00=;
	h=To:Subject:From:Message-Id:Date; b=nCVfXNAxFdoE/rPwuKWprBGzrbvuqVVxzjcOhFMQ+JnotE6gJZsqKEHNZMbSMJBNQQP0E7+65/qWUhA9UsBkcgoVqON/9ef+1uzpfv+c3BBtDcxmbRYqjT13O5bQP3+b1AYil1TrZXnfdvKloJF8vMVV3d8Q+FcSwRUPdVuLFAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4e3Dsxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4e3Dsxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4662C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768751033;
	bh=FkRHIme04ZpzCse5FFXj1lXOupgtnn+aYtUq0LKDl00=;
	h=To:Subject:From:Date:From;
	b=u4e3Dsxl6xzyke0slNoO18yNPVQ47jW9/a4tkGl0lfmihOabiBxCHBYAitwiW3DiH
	 F5e8LuawdlZ2/2tHOvml/iZuyYLhNcjkvMozG5RUdLmEF+ZpI8zKEFe5GaBAgVmcj4
	 CkR2XD1t4z1pdm1KTbYncEZmMcrjCYemW3RRbCVoC4FCZBhFxjGy4WKrpxY08BGuFo
	 P38XNwWZiv/l5h/IT8kDMwU2zG8b5a+EZer1ttXLQj5w5dS4LCCMPY/jDaaPvNzPHk
	 qbCh4DkYleCq/CsE1V9SNEW7G+xiyUE9C3AmUCcxrfZA2o0xPLeHQUD1jwBolWniWg
	 OEmFs3l0pV17w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D59D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875103358.18122.18232710824683550018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b177fe3947d9106e680a1f3f7ae8a87ae8b62d703f48336dbd6ae3cc1fbcd722
Date: Sun, 18 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768751033
