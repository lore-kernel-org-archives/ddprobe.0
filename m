Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB80282F3A
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779894754; cv=none; b=DyW6ClGgZGfJXcFr/MDmLMacyaIMmH7cMQMTx1UmvQHLRIWmEJuMgxunpvpAVElamLTcRJLC9wZpYd7NDue0ZOFSIdbmHiEBmetaNLS06l1kdQ2C+CeSkNUL3p1PWkBltwUkMYpQcMkUO1MwPqBOqHM/vQMXb1R/imRuVDja4Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779894754; c=relaxed/simple;
	bh=Ad4fEoyzGTAgFD2hat/G2XZr8e9rN5IGMOV5mfeinwA=;
	h=To:Subject:From:Message-Id:Date; b=P4RLgJo61cc7bDmjYfJ762NUMuGvYx075Ig2A4AlhMUblAgSl9IytJGI0Ln58qjiU/aal09CLYy1sf8GyVHv2DAoRM6XAEHhYlcYOAwGdy213alaao1KRuqDnXEGJrjb5MRkzh8JOveBLPTVZDABHt5O/LE0s/pmPVEGeePoCTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJKarqei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJKarqei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5E2C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779894753;
	bh=Ad4fEoyzGTAgFD2hat/G2XZr8e9rN5IGMOV5mfeinwA=;
	h=To:Subject:From:Date:From;
	b=ZJKarqei7IYS/lCZdEbMRW/DKST8s5ra3L3QnnCQgy7rKbdOhJLL1gvPR/Abf66t9
	 7e82OLNz2mzKc/3vK3jIQk4WTXCQFOgmSob2AN+tRule4YOU4xF4a23OveZOESMLdv
	 hIDx6lxre6u2MdY40nlQxphsipOJYXtj4LaLCwQk1Kl9A9C+5Azg/7+tka62J1l272
	 p8YnklFDMNxhAX6mw8iiPFiK0Hvmp/A7WXvNWSwFzVGJFhUFjkxjp0N1bmhSlZbHlo
	 uArmDRH4BgDsf90FALdb2uZY2OE1hXYLcBnVqJjf6CEgBk5wo0l8ThNdck65/wfcBA
	 0dyFLuqhWxXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4D1CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 15:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989475370.11374.2586478414632628032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7095bbbfc853a2c6be001ea85cca066319c110a33b75fc57bea372ca123e1f28
Date: Wed, 27 May 2026 15:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779894753
