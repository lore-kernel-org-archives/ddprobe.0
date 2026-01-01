Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221807260F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767226434; cv=none; b=duYvHN+LpG/sOfYnJ0gR7gxYP03fs8OMf1gfH74ryk/eaLsSl7Vq0zvuXKpU6b/fYBTk2UiH0t1ERYu2XspVWEjzW6s7Qe9P9/iHuFjcQxk45RU0/mJbnRe/C309KfUuTH9fhqWXjoyqOHFqf7mPRAYlxJj7Neg2Hch+6SEF0uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767226434; c=relaxed/simple;
	bh=nJGH64O6zPzh9YpPiA0KbBvpJebxolMDAB2vpXPL48w=;
	h=To:Subject:From:Message-Id:Date; b=i8q3nuva7ypU0Q0Tp1CpEBDTFyCAd9sBUOTPiTapZyOXahGayIS2ZWkgc+e1g9tK5HhvrKLn8gbQkFexDr0O/HG252SKJYpVTSdPaQCTA9wbhaNuUbmcE6gf051tjLuix0vTOqJvMaUI8MHDwJyS4vS5qCQInprxgTquw+Qfte0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnxM4fF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnxM4fF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F3C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767226433;
	bh=nJGH64O6zPzh9YpPiA0KbBvpJebxolMDAB2vpXPL48w=;
	h=To:Subject:From:Date:From;
	b=mnxM4fF+vMPudGAHHroN4y1ruayudTgqL3tlHGxAArHZDSDXkaasCY/ZTXPRn0u2j
	 BqffDYmhZ/r/bnn8HL/MZzWoe2moXlmJ5Ev/jW71YvXPX/jVu8nRJH6InkSUL7N8B4
	 ggTWvyMOJBw0kMCejp3sTEaSeIiWm3Stwv4bfwwhzfuRugkmMWVsvNSwwA05uxraNM
	 /AnLItXm+82sjlCOMMlDGd6RS8TBOAslfB6Z8msRaah2pQKUesaJkPWo+/Q5Bs8GqV
	 GrUfAYrrTUzo/0wZjx4Xvq4WrSyhbxc1wxiT7SXTS91rjaOBBF2H0M5PQgJP/oEXe9
	 p1kF3oTz07/pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113CEEB575
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722643358.29586.3755963861912947471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b723fdee6a9afec9786ff6262ce3fbb10862eba9ae4f84d062201e3d0bf9821
Date: Thu, 01 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767226433
