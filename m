Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025C432B9A8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768961035; cv=none; b=A0Cd6VB4nbFOmkXzN/rwEBEAAHAaR+GTmeqZpSg+x1LjUgcHTeZd5D7w5U4g4SXjzQFWhLMXX2g/qmS2mWuDTdkO3lNGnC02llE4mg+tuzwLAvFdjnyzKpPxvfYk4rmNBBNiPGxkjn8MsF5k36aZgcDZ+AuegzFS05VONVWmE88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768961035; c=relaxed/simple;
	bh=KCuv0xlfmodpQe/+uCkcpWoj4bWUTdGqu48LeWm/a4w=;
	h=To:Subject:From:Message-Id:Date; b=lvPG5r87//N7fzXY1YV8SWFNh1qOhKvnWB6YnSjsO0CbqcyweifdP1aqEEkfm5Mszn87D2QqQo7FGXSPhbnZswFNF6oWHEr2PR9IQ7LFY7W19De/U6XF+VZr0QwJD84pCYXPEMU+jzQzm8juU0vewZV+2mqg2ZsLfCLJLTB2bNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7pYqhf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7pYqhf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC270C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768961033;
	bh=KCuv0xlfmodpQe/+uCkcpWoj4bWUTdGqu48LeWm/a4w=;
	h=To:Subject:From:Date:From;
	b=K7pYqhf+QMs7IKqxO8Yk1F/MkyWY7l11Zad+V1/EJbC1Prj69k3hzZ2Th5gFrTKlI
	 lmdmJtZ/NbFLjFUCswDEZI0krel0pHjAapeNnV2VzQyeDRXyFocmi1IdyyPSmQq8Lh
	 8D0r1A5J1kpioi86bSUeltzgpQEGaLLpBklOHpgzUz+N6JU7MkbrJo3RQ+g26aNNxK
	 xBwlgRDFSKwe1zmK2Z7WyfSmIqrJkMPdPTQb7dWsZVOcl5g6G8fXxaC4d1NaDM+CC/
	 LZua6lEEo5Ex+beVK3FnZ6fO1edB42MIAfhjFurIdGTJQBP1+DET6K83DLBo/6KRCd
	 YZFMmrF5VgObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98587D2629F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896103358.29896.3642694125336323254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe4a7ee391034a4d43ac9522ea7b8e62cd4b044d7452cfd60f708e4dd87fdbd
Date: Wed, 21 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768961033
