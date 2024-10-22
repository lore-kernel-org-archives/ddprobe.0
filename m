Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5970419E97F
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 14:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729607754; cv=none; b=G0OykT1TqrvD1c8Vt0ztL1kSGWFYiBMXuLv9YFRowx8XS0MnAnzuQX3CSm8ZhGSkNejGj+sBL1XAOKpLfpoINsvscF2i0ail4eSLBhEdGSebhHHD5zwCn1e2y8px+euTiYQ4nPzNtpBaG84pUNk4uukzIKeUw1fMqNK8lg6weXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729607754; c=relaxed/simple;
	bh=aklK292vHJqDkAP6zJYW8YRoQXFkozLr6RRpM9WSmis=;
	h=To:Subject:From:Message-Id:Date; b=nEpySVifZQ1OU3UrW5Yo+e+4+2BDAa+RdSI1+FNPmj2wQjreaoDOeu3J/7BaseaIczXIl5k9EBAYZf+nQzUObIZAJDbJjCcOAHz/OkY1cqE/9CU5jsIpmkDP3S4R6RIAhDkacjklDW45k/PkqYygPXdrCLMStTR3BMFBr9VQuBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+Aoa+71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+Aoa+71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E081BC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729607753;
	bh=aklK292vHJqDkAP6zJYW8YRoQXFkozLr6RRpM9WSmis=;
	h=To:Subject:From:Date:From;
	b=Y+Aoa+71szs++o4lqWkTnnbc7kWsU3VLOHjHvferfBgZuAuTge5wr/T/2ZIGl0WtF
	 KDqxZk/WWnTXUpRh5h3lOhRrhsVBzwdAk3EIYiG+JznXPPw1ZWpqy2fVDK+RteKq15
	 5AnnhTOAygDhdUs3Qwda2PKmsnAjuaJFfEVSGbUW1ixkj+aF/jp9qcs8nPao3h5EPA
	 aeaUL8IZ9qMelApmS1rEpCYfWj6x4+pPzCwBW1QbsIMT2e6Q3H9gQa3NwVjEriOh9j
	 0XmU1Qgnka6dizXT/+eu6VSFxG/jR4RZNrpORlVb21lHKxjqxHc6HKNG3olGOgNN9C
	 1gbrrT5GTrhxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6DED2C55E
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172960775381.15572.529791496680885924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba75a44b088fa806199896a628fdc4341549168fe58ce8a27790d64e312261f
Date: Tue, 22 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729607753
