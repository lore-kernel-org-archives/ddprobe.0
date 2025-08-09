Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2908A2BE644
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754756994; cv=none; b=e1tSRsBxh7F4shYrAm3Oj1FlgO5yMla3fPAlgSfJVm5IJ4anKyFfgRJSX/8FN7h7Lgncqw8McCSRYrFyIk2q8IsU/0KgcdnI2E8LFVYET6pHe43d3F1YMyDq8QA5X38AUNYpWDOS2JAHsc0z5N6zbvf9cjFChpH4YnbQzjXeKtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754756994; c=relaxed/simple;
	bh=pMYxLXwgxHYiVTcJoer8RTQljECmouaINnf8K68FOis=;
	h=To:Subject:From:Message-Id:Date; b=OU/D9l9pu5VRMhVUM5DAwUYqyy7M1X29hatMe0Qr3o69wCFo8J5k4Y9rlqCGpHRfM2g2s9p8gBFNmo5a3U5fK+c58MCYdtO30uhXR0CVBKafpUsM7y0430rSnw6/ajbZOJgHkwOT/pUw9ls974BLG30Dr2KpG/2W6tzKCBp83Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0oXXa4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0oXXa4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C28C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754756993;
	bh=pMYxLXwgxHYiVTcJoer8RTQljECmouaINnf8K68FOis=;
	h=To:Subject:From:Date:From;
	b=b0oXXa4VnricB8hjJL+omozDDy2G0vxc/NCDS7NnwA2ra7bsmHkt9BnZpUI8lWhBw
	 HzIV5XuhyoV15caopF3A3m5PNdzymnkMNZSUPW365sI7LVdb2kjvR6sSEnP20pLZhJ
	 FisKe7mbLEAWgdrnzZt4wSdje1H8sav9XlWQXV2rypeMPYLsRRdKJ1Uo4OWr/wGIxC
	 fa0faWQFZw84MG57crKcILByvEr3kN6zAwe1c3vBnfN7M8fW8oL5uxeFkAceRcS0Jv
	 goy3q9mJX5xJ2k0QvY0wD/AusVMHnvzcItPqGIGEDnQjvozKsIhNRXGAZtuXfw9+Vf
	 VOn58sQ7lsUfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FBC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175475699358.14364.17268913411707030738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ce4800accf3088916c63ef622397917421b0735a1c4fbbe86cbb0f95ca3117
Date: Sat, 09 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754756993
